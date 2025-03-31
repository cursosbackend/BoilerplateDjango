# Boilerplate para Django con Docker y PostgreSQL

Este documento describe los pasos para levantar un proyecto Django con PostgreSQL utilizando Docker Compose.

## 📂 Estructura del Proyecto
```
/boilerplate/
│── Dockerfile
│── docker-compose.yml
│── requirements.txt
│── backend/ (se creará automáticamente con Django)
```

## 🛠️ Configuración y Uso

### 1️⃣ Construir y levantar los contenedores
```sh
docker-compose up --build -d
```

### 2️⃣ Verificar que los contenedores están corriendo
```sh
docker ps
```

### 3️⃣ Crear el proyecto Django dentro de la carpeta `backend/`
```sh
docker-compose exec django django-admin startproject backend 
```

### 4️⃣ Verificar que los archivos de Django se generaron correctamente
```sh
ls -l backend/
```

### 5️⃣ Detener los contenedores cuando no se necesiten
```sh
docker-compose down