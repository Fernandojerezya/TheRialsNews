# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 3.2.2

* System dependencies rails 7.0.6

* Configuration Ruby gems 

* Database creation Postgrest 

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)
Amazon 
* Deployment instructions (recuerda que heroku ya no es gratuito)
Preparación:

Asegúrate de tener Git instalado en tu computadora y que tu aplicación esté versionada con Git.
Crea una cuenta en Heroku si aún no tienes una.
Instala la herramienta de línea de comandos de Heroku (Heroku CLI) en tu computadora siguiendo las instrucciones para tu sistema operativo: https://devcenter.heroku.com/articles/heroku-cli

Inicia sesión en Heroku desde la línea de comandos:

bash
Copy code
heroku login
En tu terminal, navega hasta la raíz de tu proyecto Rails.

Crea un nuevo repositorio Git o asegúrate de que tu proyecto ya esté versionado con Git.

Configura una base de datos para tu aplicación. Heroku proporciona soporte para bases de datos PostgreSQL de forma predeterminada, por lo que asegúrate de tener la configuración adecuada en tu archivo config/database.yml.

Asegúrate de tener el archivo Gemfile.lock en tu proyecto. Si no lo tienes, ejecuta:

bash
Copy code
bundle install
git add Gemfile.lock
git commit -m "Add Gemfile.lock"
Crea una aplicación Heroku:

bash
Copy code
heroku create nombre-de-tu-app
Configura las variables de entorno necesarias para tu aplicación en Heroku (por ejemplo, tus claves secretas, credenciales de bases de datos, etc.). Puedes hacerlo a través del comando heroku config:set o utilizando la interfaz web de Heroku.

Realiza el despliegue de tu aplicación a Heroku:

bash
Copy code
git push heroku main
Ejecuta las migraciones de base de datos en Heroku:

bash
Copy code
heroku run rails db:migrate
Abre tu aplicación en el navegador web:

bash
Copy code
heroku open
¡Listo! Tu aplicación Rails ahora debería estar desplegada en Heroku y accesible a través de la URL proporcionada por Heroku.
* ...
