# BASE - Ecosistema de Gestión para Fútbol Amateur

**BASE** es una plataforma integral diseñada para profesionalizar la experiencia del fútbol amateur. El sistema actúa como un ecosistema compartido donde clubes, torneos y jugadores convergen en una única base de datos estadística y operativa.

El nombre representa nuestra filosofía: el fútbol amateur como la base indispensable y el cimiento del deporte profesional.

## 🚀 Visión del Proyecto
* **Fútbol Amateur como Cimiento**: Otorgar a los jugadores amateurs el mismo nivel de detalle estadístico que el fútbol profesional .
* **Gestión Eficiente**: Proveer herramientas de carga rápida para administradores en campo y delegados de equipo.
* **Comunidad Conectada**: Permitir que hinchas y jugadores sigan de cerca la evolución de sus torneos y equipos favoritos.

## 🛠️ Stack Tecnológico

### Backend
* **Lenguaje**: Java 17.
* **Framework**: Spring Boot 3.x.
* **Seguridad**: Spring Security + OAuth2 (Google) + JWT .
* **Persistencia**: Spring Data JPA + PostgreSQL.
* **Pruebas**: JUnit 5 para lógica de negocio y desempates.

### Frontend
* **Biblioteca**: React.
* **Estilos**: Tailwind CSS.
* **Comunicación**: Axios / Fetch API para consumo de RESTful API.

### Infraestructura
* **Contenerización**: Docker para asegurar un entorno de datos idéntico en desarrollo.
* **Documentación**: Spring Doc OpenAPI (Swagger).

## 📱 Pautas de Diseño y UX
* **Mobile-First**: Interfaz optimizada para el uso en cancha.
* **Diferenciación de Entorno**: 
    * **PC**: Orientado a la administración profunda y visualización exhaustiva de datos.
    * **Móvil**: Orientado a la agilidad operativa y respuesta rápida en campo .
* **Identidad Visual**: Paleta de alto contraste (Naranja/Negro/Blanco) para garantizar legibilidad en exteriores bajo luz solar.

## 📂 Estructura del Repositorio
* `/backend`: Código fuente del servidor Spring Boot.
* `/frontend`: Aplicación cliente en React.
* `/docs`: Documentación técnica, diagramas y diccionario de datos.
* `/docker`: Configuraciones de contenedores y scripts de población inicial (Seeding).

## 🤝 Lineamientos de Desarrollo
1. **Git Flow**: Toda nueva funcionalidad debe desarrollarse en una rama `feature/` y ser integrada a `develop` mediante Pull Request con revisión obligatoria.
2. **Sincronización**: Los eventos cargados deben verse reflejados en el sistema en un tiempo ideal menor a 2 minutos.
3. **Documentación**: Es obligatorio documentar decisiones técnicas o cambios en la arquitectura en el canal correspondiente de Discord.

## 📄 Licencia
Este proyecto se distribuye bajo la **MIT License**.
