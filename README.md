<p align="center" style="background-color: #f5f5f5">
  <a href="https://flutter.dev/" target="blank"><img src="https://docs.flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png" width="500" alt="Flutter Logo" /></a>
</p>

#

Flutter App Template

#

1. Para actualizar las dependencias

```
flutter pub get
```

#

2. Para cambiar el package name del proyecto, donde com.new.package.name sera el nuevo nombre del paquete para tu aplicacion

```
flutter pub run change_app_package_name:main com.new.package.name
```

#

3. En el pubspec.yaml se encuentara comentado la configuracion para el icono, si desea cambiar el icono debe agregar su icono a la carpeta `assets/icon`, descomentar `flutter_launcher_icons` y correr el siguiente comando

```
flutter pub run flutter_launcher_icons
```

#

4. En la carpeta config se encuentra las siguientes carpetas `constants`, `router` y `theme`. En la carpeta constants puede crear todas sus variables de entorno definidas en su `.env`, en la misma hay un ejemplo de como crearla y para utilizarla puedes hacerlo de la siguiente manera: `Environment.apiUrl`. En la carpeta `router` debe configurar sus rutas, or defecto solo esta configurada la ruta principar o el home y en la carpeta de `theme` puede configurar las necesidades de su tema, por defecto hay configuraciones basicas.

#

5. Este proyecto esta configurado para trabajar con la arquitectura DDD `Domain Driven Design`, por defecto ya estan las carpetas `domain`, `infrastructure` y ` presentation`. Dentro de domain se manejan las carpetas `datasources`, `entities` y `repositories`. En la carpeta de `infrastructure` se manejan las carpetas de `datasources`, `mappers`, `models` y `repositories`. En presentation se encuentra todo lo relacionado a `providers`, `screen`, `widgets` donde se manejaran widgets globales o compartidos en la carpeta `shared` dentro de la misma y por ultimo la carpeta`shared` donde se manejara `servicios` u otras carpetas que necesite en su proyecto como `utils` por ejemplo.

#

6. En la carpeta `shared` en la raiz del proyecto, se ecuentra configurado por defecto un wrapper para el uso de `shared_preferences` y para utilizarlo tiene tres metodos, uno para guardar, obtener y borrar. El tipado es opcional por ejemplo `keyValueStorage.getValue<String>('token');` 0 `keyValueStorage.getValue('token');`, por defecto como es una implemenacion generica sabra que tipo de dato es. Esta seria la forma que puede utilizarlo:

#

```
keyValueStorage.setKeyValue('token', user.token);
keyValueStorage.getValue<String>('token');
keyValueStorage.removeKey('token');
```
