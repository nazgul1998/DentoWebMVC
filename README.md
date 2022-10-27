# DENTOWEB 

DentoWeb es un sistema web para un consultorio odontológico, sistema el cual se diseño debido las restricciones que teniamos con la pandemia de COVID-19. El proyecto esta desarrollado en .net core 3.1, usa Microsoft SQL Server como base de datos y entity framework como orm.


El sistema cuenta con una pagina de inicio, dos de login y dos paneles, el del doctor y el del cliente.


## Home

La página de inicio cuenta con 4 apartados dentro de esta ademas de su lema, como se muestra a continuación:

> Lema

![Image text](./imgs_md/home-lema.png)


> Acerca de nosotros

![Image text](./imgs_md/home-aboutus.png)


> Servicios

![Image text](./imgs_md/home-services.png)


> Personal 

![Image text](./imgs_md/honme-personal.png)


> Novedades

![Image text](./imgs_md/home-novedades.png)


## El doctor

El doctor puede realizar las siguientes acciones: 

> Iniciar sesion

![Image text](./imgs_md/doctor-login.png)


> Home

![Image text](./imgs_md/doctor-home.png)

> Atender cita

![Image text](./imgs_md/doctor-atendercita.png)

> Crear cita

![Image text](./imgs_md/doctor-crearcita.png)


> Ver detalles de cita

![Image text](./imgs_md/doctor-detallecita.png)


> Ver pacientes

![Image text](./imgs_md/doctor-listarpacientes.png)


> Ver historial del paciente

![Image text](./imgs_md/doctor-verhistorialpaciente.png)


> Ver perfil

![Image text](./imgs_md/doctor-profile.png)


> Ver boleta de cita

![Image text](./imgs_md/doctor-verboleta.png)


> Editar perfil

![Image text](./imgs_md/doctor-editardatos.png)


## El paciente

El paciente puede realizar las siguientes acciones: 

> Crear cuenta 

![Image text](./imgs_md/paciente-registro.png)


> Iniciar sesion

![Image text](./imgs_md/paciente-login.png)


> Home 

![Image text](./imgs_md/paciente-home.png)


> Crear cita

![Image text](./imgs_md/paciente-crearcita.png)


> Validar fechas

![Image text](./imgs_md/paciente-validacionfechacita.png)


> Ver detalle de su cita

![Image text](./imgs_md/doctor-detallecita.png)


> Ver perfil

![Image text](./imgs_md/paciente-profile.png)


> Ver boleta de pago de cita

![Image text](./imgs_md/paciente-boleta.png)


>Editar perfil

![Image text](./imgs_md/paciente-editarperfil.png)


## NOTA

Ambos, tanto paciente como doctor pueden cancelar y crear citas ademas de inicias sesion, pero el doctor no puede registrarse, este tiene que ser creado directamente en DB, por otro lado el paciente no puede atender una cita, ya que es trabajo del doctor. 


Para comenzar a usar el sistema debe modificar el archivo `appsettings.json` en especifico remplazar la DevConnection con su cadena de conexion propia, el script de base de datos se encuentra en `ScriptDB/DentoWeb.sql`.


Adicionalmente puede modificar el token con el que se encriptan las conteraseñas en el archivo `appsettings.json` en especifico remplazar el Token.


La tabla de la horarios sirve para establecer el horario de atencion del doctor. 




