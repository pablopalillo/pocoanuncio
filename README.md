# pocoaununcio
milanuncios clone

### Instalación
Una vez clonado el proyecto con el sistema e versiones **git** y idealmente teniendo el ambiente virtual creado ,con el sistema paquetes de python **pip**. se instalan 
las dependencias faltantes asociadas al proyecto que se encuentran en el archivo **requirements.txt**.

```
pip install -r requirements.txt 
```

###  Migración base de datos

En la configuracion de **settings.py** puede configurar su intancia de base de datos MySql en el siguiente apartado.

```
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'name_db',
        'USER': 'root',
        'PASSWORD': 'mysql',
        'HOST': 'ip_db',
        'PORT': 'port_db',
    }
}
```

Una vez configurado el proyecto en general procedemos a hacer la migración inicial para dejar funcionando la base de datos.
Todo esto con ayuda del asistente de Django y el ambiente virtual activado.

```
manage.py migrate
```

Si prefieres en la raiz del proyecto existe un archivo llamado **database.db** en el encontrará los scripts para bases de datos con motor Mysql.

### Pruebas unitarias

con la ayuda del asistente de Django podemos ejecutar el comando para correr las pruebas.

ejem:
```
manage.py test 
```

### Puesta en marcha

Al ejecutar el proyecto encontrará un homepage con todas las categorias proporcionado por el Scrapper y dentro de cada categoria incontrará los anuncios correspondientes a esa categoria.
*en la prueba encontrara por defecto anuncios para caregoria 'Motos' y 'Coches'*

Puede acceder al administrador de Django como administrador con las credenciales de prueba:

- usuario: admin
- password: admin

Alli podrás administrar las categorias y los articulos.

***web srapper***: si quieres hacer uso del Scrapper de Milanuncios.com, puedes hacerlo con la ruta url
```/import.```