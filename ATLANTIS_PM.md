# Demo ATLANTIS PM
---

### Usuarios

- Carlos:carlos (Admin)
- Laura:laura   (Admin)
- Luis:luis     (Admin)

### Customer

- Se puede añadir clientes o departamentos de interes para la plataforma
- Cuando seleccionamos uno de ellos podemos ver detalles como el nombre, código de departamento, anotaciones, direcciones de contacto y físicas
- Podemos añadir tantas direcciones de contacto/fisicas como queramos y marcar aquellas que queramos que reciban notificaciones

### Service Catalog

- Podemos definir plantillas de los servicios que ofrecemos (servicios, trabajos, tareas)
- A la hora de añadir un servicio podemos definir el tipo de trabajo (Proyecto, Servicio, Asistencia técnica, etc.), tipo de facturación (estandar, por tiempo, extra) y
la descripción del servicio
- También es posible añadir `sub-servicios` (ejemplo `servicio limpieza` -> `barrer` y `fregar`), asociar documentos, las diferentes tareas o trabajos (`Jobs`) necesarios para el servicio
y las `competencias` requeridas para la ejecucción del servicio

### Custom Jobs

- Aqui se crean las plantillas de trabajos o tareas que pueden formar un servicio
- Existen campos de entrada (`Information`) que tienen que ser rellenados por la persona que lanza/asigna la tarea (en el ejemplo de `Generar documento` tenemos `Tipo documento` y `Fecha limite`) 
y campos de salida o feedback (`Execution`) que deben de ser rellenados pos la persona que ha ejecutado la tarea una vez esta ha finalizado
- También podemos añadir las competencias necesarias para realizar esta tarea

### Competences

- `Skills` en la parte izquierda de la ventana y `Certificados + Training` en la derecha
- La unica diferencia real es que los `Certificados` tienen una fecha de validez (en meses) y los `Training` una duración en horas

### Service Managment [**In development**]

- Una vez tenemos los `CustomJob` y las `Competencias` asignadas a la plantilla de nuestro servicio podremos crear dicho servicio para ser ejecutado en el sistema tantas veces como queramos
(ya que lo que hemos creado previamente es solo una plantilla)
- Se crearan tarjetas en el `Job Panel`

### Staff Managment

- Podemos crear `Equipos` y `Empleados` y crear una jerarquia
- Si pinchamos en uno de los equipos (`ASD` por ejemplo) podemos ver la jerarquia que hemos pre-creado a la derecha
- `ASD` es una division, mientras que `IO` es un area y el resto de grupos son departamentos
- Se puede añadir un `Calendario` y `Jornada` (no journal!) general a todo un grupo (division, area, etc.) el cual heredarán los empleados que se encuentren dentro de la jerarquia. En caso de que un `Empleado` tenga un calendario diferente 
se podrá sobreescribir el que tiene por defecto (vacaciones, dias libres, jornada reducida, etc.)
- Para poder añadir un `Empleado` tiene que ser previamente un usuario registrado en el sistema (hay unos cuantos añadidos para probar)

### Presence [**In development**]

- Actualmente se pueden ver los calendarios de los diferentes empleados del sistema
- `Javier Rodriguez` tiene el calendario de `ALTRAN MADRID` y `Luis Canales` tiene el calendario de AIRBUS asignado
- `Laura Leon` tiene 3 dias de vacaciones asignados manualmente
