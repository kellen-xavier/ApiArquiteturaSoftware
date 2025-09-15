# Usa a imagem oficial do OpenJDK 17 (ajuste conforme sua versão)
FROM openjdk:17-jdk-slim

# Cria diretório de trabalho
WORKDIR /app

# Copia o JAR gerado pelo Maven para dentro do container
COPY target/ApiArquiteturaSoftware-0.0.1-SNAPSHOT.jar app.jar

# Expõe a porta padrão do Spring Boot (Render vai definir PORT como variável)
EXPOSE 8080

# Executa a aplicação, forçando o uso da porta do Render
ENTRYPOINT ["sh", "-c", "java -jar app.jar --server.port=$PORT"]