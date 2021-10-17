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

### Manual de usuario:

Al ejecutar el proyecto encontrará un homepage con todas las categorias proporcionado por el Scrapper y dentro de cada categoria incontrará los anuncios correspondientes a esa categoria.
*en la prueba encontrara por defecto anuncios para caregoria 'Motos' y 'Coches'*

Puede acceder al administrador de Django como administrador con las credenciales de prueba:

- usuario: admin
- password: admin

Alli podrás administrar las categorias y los articulos.

***web srapper***: si quieres hacer uso del Scrapper de Milanuncios.com, puedes hacerlo con la ruta url
```/import```

### API filtros

Si quieres hacer uso de la API de los filtros su uso seria el siguiente.

***Uso general***:

Encontrará la informacion de todos los anuncios disponibles en general con la url.
```/api/articles```

***Filtro Título***:

Puede filtrar por titulo haciendo uso de la expresión url enviando el filtro por GET.

```/api/articles?title=example```

***Filtro Descripción***:

Puede filtrar por descripción haciendo uso de la expresión url enviando el filtro por GET.

```/api/articles?description=example```

***Filtro Categoria***:

Puede filtrar por la categoria haciendo uso de la expresión url enviando el filtro por GET.

```/api/articles?category__name=Coches```

***Filtro Multiple***:

Puede hacer uso de varios filtros al tiempo con la expresión url los filtros seguidos por GET.

```/api/articles?title=titulo&description=descripcion&category__name=categoria```


Y eso seria todo por ahora ;).



