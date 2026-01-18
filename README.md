# BASE - Ecosistema de Gestión para Fútbol Amateur

[cite_start]**BASE** es una plataforma integral diseñada para profesionalizar la experiencia del fútbol amateur[cite: 3]. [cite_start]El sistema actúa como un ecosistema compartido donde clubes, torneos y jugadores convergen en una única base de datos estadística y operativa[cite: 6, 11].

El nombre representa nuestra filosofía: el fútbol amateur como la base indispensable y el cimiento del deporte profesional.

## 🚀 Visión del Proyecto
* [cite_start]**Fútbol Amateur como Cimiento**: Otorgar a los jugadores amateurs el mismo nivel de detalle estadístico que el fútbol profesional [cite: 20-21].
* [cite_start]**Gestión Eficiente**: Proveer herramientas de carga rápida para administradores en campo y delegados de equipo [cite: 30-32].
* [cite_start]**Comunidad Conectada**: Permitir que hinchas y jugadores sigan de cerca la evolución de sus torneos y equipos favoritos[cite: 38, 82].

## 🛠️ Stack Tecnológico

### Backend
* [cite_start]**Lenguaje**: Java 17[cite: 421].
* [cite_start]**Framework**: Spring Boot 3.x[cite: 422].
* [cite_start]**Seguridad**: Spring Security + OAuth2 (Google) + JWT [cite: 426-427].
* [cite_start]**Persistencia**: Spring Data JPA + PostgreSQL[cite: 425, 435].
* **Pruebas**: JUnit 5 para lógica de negocio y desempates.

### Frontend
* [cite_start]**Biblioteca**: React[cite: 431].
* [cite_start]**Estilos**: Tailwind CSS[cite: 432].
* [cite_start]**Comunicación**: Axios / Fetch API para consumo de RESTful API[cite: 433, 439].

### Infraestructura
* [cite_start]**Contenerización**: Docker para asegurar un entorno de datos idéntico en desarrollo[cite: 436].
* [cite_start]**Documentación**: Spring Doc OpenAPI (Swagger)[cite: 440].

## 📱 Pautas de Diseño y UX
* [cite_start]**Mobile-First**: Interfaz optimizada para el uso en cancha (carga de eventos en < 3 toques)[cite: 457, 461].
* **Diferenciación de Entorno**: 
    * [cite_start]**PC**: Orientado a la administración profunda y visualización exhaustiva de datos[cite: 458].
    * [cite_start]**Móvil**: Orientado a la agilidad operativa y respuesta rápida en campo [cite: 468-469].
* [cite_start]**Identidad Visual**: Paleta de alto contraste (Naranja/Negro/Blanco) para garantizar legibilidad en exteriores bajo luz solar[cite: 470].

## 📂 Estructura del Repositorio
* [cite_start]`/backend`: Código fuente del servidor Spring Boot[cite: 420].
* [cite_start]`/frontend`: Aplicación cliente en React[cite: 430].
* `/docs`: Documentación técnica, diagramas y diccionario de datos.
* [cite_start]`/docker`: Configuraciones de contenedores y scripts de población inicial (Seeding)[cite: 436].

## 🤝 Lineamientos de Desarrollo
1. [cite_start]**Git Flow**: Toda nueva funcionalidad debe desarrollarse en una rama `feature/` y ser integrada a `develop` mediante Pull Request con revisión obligatoria [cite: 444-449].
2. [cite_start]**Sincronización**: Los eventos cargados deben verse reflejados en el sistema en un tiempo ideal menor a 2 minutos[cite: 487].
3. [cite_start]**Documentación**: Es obligatorio documentar decisiones técnicas o cambios en la arquitectura en el canal correspondiente de Discord[cite: 486].

## 📄 Licencia
Este proyecto se distribuye bajo la **MIT License**.
