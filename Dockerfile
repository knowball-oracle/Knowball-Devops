# Estágio 1: Build da aplicação com Maven e aproveitamento de cache
FROM maven:3.9-eclipse-temurin-17 AS builder
WORKDIR /app

# Copie pom.xml e baixe dependências primeiro (cache eficiente)
COPY pom.xml .
RUN mvn dependency:go-offline

# Agora copie o código (apenas se necessário para rebuild)
COPY src ./src

# Compile o projeto
RUN mvn clean package -DskipTests

# Estágio 2: Imagem enxuta para execução
FROM eclipse-temurin:17-jre

# Criar usuário não-root antes de copiar arquivos
RUN addgroup --system appuser && adduser --system --ingroup appuser appuser
WORKDIR /app

# Copie só o jar final
COPY --from=builder /app/target/*.jar app.jar
RUN chown appuser:appuser app.jar
USER appuser

# Exponha porta da aplicação
EXPOSE 8080

# Variáveis de ambiente (atualizadas para Oracle)
ENV SPRING_DATASOURCE_URL=jdbc:oracle:thin:@oracle.fiap.com.br:1521:ORCL \
    SPRING_DATASOURCE_USERNAME=rm560967 \
    SPRING_DATASOURCE_PASSWORD=240406

# Comando para iniciar a aplicação
ENTRYPOINT ["java", "-jar", "app.jar"]
