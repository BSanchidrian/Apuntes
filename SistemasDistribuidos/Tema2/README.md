# Tema 2 - Sistemas distribuidos tipo cluster

Se compone de un conjunto de nodos de computo completos e independientes conectados por una red (LAN). Normalmente denominados **multicomputador**.

Para poder usar estos sistemas se suelen usar estrategias de _procesamiento de datos distribuido_ (DDP), su objetivo es procesar la informacion de la forma mas **eficiente posible**, aprovechando las capacidades de procesamiento en paralelo y replicacion de unidades (RAID).

- **Disponibilidad**: Al tener multiples sistemas, si uno se cae otro puede asumir su carga rapidamente.
- **Comparticion de recursos**: bases de datos por ejemplo
- **Crecimiento incremental**: no hace falta tirar los equipos viejos, simplemente se pueden añadir nuevos al cluster para aplicaciones con mayor capacidad de carga y mantener los antiguos para otras mas sencillas
- **Mayor productividad**: Los sistemas distribuidos suelen tener una mayor rapidez de respuesta ante programas con gran carga de trabajo, ya que se tiende a que cada nodo de cómputo realice partes pequeñas del mismo.

## Nuevos paradigmas de la programacion

- No hay unico rango de direcciones de memoria (compartida)
- Comunicacion de procesos por "paso de mensajes" (MPI)
- Gestion de recursos
  - Sincronizacion entre nodos
  - Maestro/esclavo

## Cliente/Servidor

- Clientes - normalmente simples terminales que proporcionan una interfaz intuitiva
- Servidor - sistema completo que ofrece los servicios a los clientes

### Partes

- Interfaz de programacion (API) - permite a los clientes y servidores comunicarse
- Middleware - conjunto de controladores, API, etc. que facilitan el uso del sistema

## Clases de aplicaciones

- Procesamiento tipo **HOST** - toda la carga se encuentra en el servidor. El cliente es una terminal tonta
- Procesamiento tipo **Servidor** - el cliente proporciona una interfaz grafica con las opciones a realizar y mediante mensajes el servidor las realiza (webs y bases de datos)
- Procesamiento bassado en el **cliente** - el cliente realiza toda la carga de trabajo y el servidor solo verifica las operaciones (juegos en red)
- Procesamiento **cooperativo** - ambos se reparten el trabajo (sistema ficheros distribuido)

## Middleware

Usados para poder sacar provecho de estos sistemas

- Similares en todos los PC
- Misma forma de acceso a los datos, independientemente de donde se encuentren

## Paso de mensajes

opcionalmente se puede hacer un broadcast. send/recv (MPI). Se envia el mensaje junto con los parametros necesarios

**Remote procedure call (RPC)**: se abstraen las funciones de send/recv y se llama a los metodos directamente (yo me entiendo)
**Broker de objetos**: cuando un cliente necesita un servicio manda una peticion y este actua como directorio de servicios de forma que pone al cliente en contacto con el objeto adecuado.

- Pueden ser
  - Fiable - garantizan la entrega, control de errores, etc. (like TCP)
  - # No fiable - no garantiza la entra, el orden, etc. pero reduce la latencia y complejidad (like UDP)
  - Bloqueante - si bloquea la funcion hasta que se envie el mensaje
  - No bloqueante - ^ si no bloquea
