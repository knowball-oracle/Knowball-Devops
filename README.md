# ⚽ Knowball
Este projeto consiste em uma API REST desenvolvida na disciplina de Java Advanced, implementada para fins acadêmicos na disciplina Devops Tools e Cloud Computing. O objetivo é demonstrar a utilização de máquinas virtuais em nuvem e o deploy de aplicações com Docker, aplicando conceitos de Devops e Cloud Computing. 

---

## ⚙️ Tecnologias Utilizadas
- **Java 17:** Linguagem principal da aplicação.
- **Spring Boot:** Framework para criação de APIs REST.
- **Maven:** Gerenciador de dependências e build.
- **Docker:** Ferramenta de containerização da aplicação.
- **Linux:** Sistema operacional da máquina virtual.
- **Azure:** Plataforma em nuvem utilizada para o deploy.

---

## 🚀 Como Usar

1. **Clone o Repositório:**

   ```bash
   https://github.com/knowball-oracle/Knowball-Devops.git
   ```

2. **Acesse o diretório do projeto:**

   ```bash
   cd Knowball-Devops
   ```

3. **Construa a imagem Docker:**

   ```bash
   docker build -t java-api .
   ```

4. **Executar o container em background:**

   ```bash
   docker run -d 
    -e SPRING_DATASOURCE_URL=jdbc:oracle:thin:@oracle.fiap.com.br:1521:ORCL 
    -e SPRING_DATASOURCE_USERNAME={DB_USERNAME}
    -e SPRING_DATASOURCE_PASSWORD={DB_PASSWORD} 
    -p 8080:8080 
    --name app-java 
    java-api
   ```

5. **Verificar se está rodando:**

   ```bash
   docker ps
   ```

6. **Acessando documentação da API**

   ```bash
   http://localhost:8080/swagger-ui/index.html
   ```

7. **Exemplos de endpoints da API para testes:**

   ```bash
   curl.exe -X GET http://localhost:8080/championships
   ```

   ```bash
   curl.exe -X POST http://localhost:8080/teams
   ```

   ```bash
   curl.exe -X PUT http://localhost:8080/teams/1
   ```

   ```bash
   curl.exe -X DELETE http://localhost:8080/teams/1
   ```


## ☁️ Deploy na Máquina Virtual (Azure)

1. **Conectar na VM:**

   ```bash
   ssh azureuser@<ip-publico>
   ```

2. **Atualizar Pacotes do Sistema:**

   ```bash
   sudo apt update -y
   ```

3. **Instalar Docker:**

   ```bash
   sudo apt install docker.io -y
   ```

4. **Iniciar o serviço Docker:**

   ```bash
   sudo systemctl start docker
   ```

5. **Permitir uso do Docker sem sudo:**

   ```bash
   sudo usermod -aG docker $USER
   ```

6. **Encerrar a sessão atual:**

   ```bash
   exit
   ```

7. **Reconectar na VM:**

   ```bash
   ssh azureuser@<ip-publico>
   ```

8. **Clone o repositório:**

   ```bash
   https://github.com/knowball-oracle/Knowball-Devops.git
   cd Knowball-Devops
   ```

9. **Build da Imagem Docker:**

   ```bash
   docker build -t java-api .
   ```

10. **Executar o container em background:**

    ```bash
    docker run -d 
    -e SPRING_DATASOURCE_URL=jdbc:oracle:thin:@oracle.fiap.com.br:1521:ORCL 
    -e SPRING_DATASOURCE_USERNAME={DB_USERNAME}
    -e SPRING_DATASOURCE_PASSWORD={DB_PASSWORD} 
    -p 8080:8080 
    --name app-java 
    java-api
    ```

11. **Acessar o Projeto:**

    ```bash
    http://<ip-publico>:8080
    ```

---

## 👥 Integrantes

| Dev | Foto | RM |
| ------------- | ------ | ----- |
| ![](https://img.shields.io/badge/DEV-Gabriel-47797a?style=for-the-badge&logo=github) | <a href="https://github.com/GabrielRossi01"><img src="https://avatars.githubusercontent.com/u/179617228?v=4" height="50" style="border-radius:30px;"></a> | RM560967 |
| ![](https://img.shields.io/badge/DEV-Rodrigo-70b2b4?style=for-the-badge&logo=github) | <a href="https://github.com/RodrygoYamasaki"><img src="https://avatars.githubusercontent.com/u/182231531?v=4" height="50" style="border-radius:30px;"></a> | RM560759 |
| ![](https://img.shields.io/badge/DEV-Patrick-7ca787?style=for-the-badge&logo=github) | <a href="https://github.com/castropatrick"><img src="https://avatars.githubusercontent.com/u/179931043?v=4" height="50" style="border-radius:30px;"></a> | RM559271 |
