# Borja Sanchidrian

_Tengo un teclado americano, perdon por la falta de tildes._

# ¿Qué diferencia hay entre estas dos formas de declarar d?

- `int const *d = 5;` puntero constante, por lo que no se puede modificar la direccion a la que apunta.
- `int* const d = 5;` puntero a un entero constante.

# ¿Cuál es, a grandes rasgos, la forma correcta de implementar delegación en un lenguaje de programación moderno con herencia simple e interfaces?

Ejemplo en C#, logger

Interfaz que los delegados deben cumplir.

```
interface ILogger
{
    void Log(string message);
}
```

Clase que implementa la interfaz.

```
using System;

class ConsoleLogger : ILogger
{
    public void Log(string message)
    {
        Console.WriteLine($"Log: {message}");
    }
}
```

Clase que utiliza un delegado.

```
class MiSistema
{
    ILogger logger;

    public MiSistema()
    {
        this.logger = new ConsoleLogger;
    }

    public void HacerAlgunaAccion()
    {
        // Hacer algo aqui...
        this.logger.Log("Llamada a la funcion delegada desde MiSistema");
    }
}
```

En este caso, para mejorar un poco la arquitectura de este ejemplo, se podria usar IoC para no crear la instancia `this.logger = new ConsoleLogger()` manualmente, sino que se infiera de alguna forma.

Tambien se podria crear una clase base que implemente las funciones basicas de nuestra interfaz (ILogger) y se extienda posteriormente, de cara a reutilizar codigo.

```
class LoggerBase : ILogger
{
    public virtual void Log(string message)
    {
        Console.WriteLing("Soy un logger!!!");
    }
}

class ConsoleLogger : LoggerBase, ILogger (no seria necesario)
{
    public override void Log(string message)
    {
        super.Log(message);
        Console.WriteLine($"Log: {message}");
    }
}
```

# Explica cómo estarían contadores de referencias al final de cada paso en este código y qué objetos quedarían en memoria después de ejecutar este código, diciendo el número de referencias a cada objeto en memoria y desde dónde salen esas referencias

### Paso 1

- `garraphone` refcount = 1
- `t` refcount = 1
- `t2` refcount = 1
- `carlos` refcount = 1

### Paso 2

- `garraphone` refcount = 2
- `t` refcount = 3
- `t2` refcount = 1
- `carlos` refcount = 2

### Paso 3

- `garraphone` refcount = 2
- `t` refcount = 3
- `t2` refcount = 2
- `carlos` refcount = 3
- `pacophone` refcount = 2

### Paso 4

- `garraphone` refcount = 2
- `t` refcount = 2
- `t2` refcount = 2
- `carlos` refcount = 3
- `pacophone` refcount = 2

### Paso 5

- `garraphone` refcount = 1
- `t` refcount = 2
- `t2` refcount = 2
- `carlos` refcount = 3
- `pacophone` refcount = 2

### Paso 6

Supongo, que como dice el enunciado, `Destroy` solo decrementa el contador de referencias, por lo que la etiqueta `t1` sigue existiendo en el contexto, simplemente se decrementa en 1 su contador.

- `garraphone` refcount = 1
- `t` refcount = 1
- `t2` refcount = 1
- `carlos` refcount = 3
- `pacophone` refcount = 2

### Paso 7

- `garraphone` refcount = 1
- `t` refcount = 1
- `t2` refcount = 1
- `carlos` refcount = 2
- `pacophone` refcount = 2

# Dado el siguiente pseudocódigo, qué papel juegan las clases A y B dentro de los roles del patrón delegación

Ambas clases actuan como delegados de la otra. `A` ejecuta el metodo `DoWork` y posteriormente llama al metodo `clean` de la clase `B`, por otro lado, la clase `B` ejecuta `DoWork` y despues llama a `Chop` en la clase `A`.

# ¿Por qué pueden tener complicaciones en cuanto a la gestión de memoria los callbacks?

- Problemas de referencias circulares, si un callback por cualquier motivo se llama a si mismo, se crea un bucle infinito y por tanto causando un `StackOverFlow`

- Cambio de contexto, por lo que una variable concreta puede no existir en el contexto del callback. En lenguajes como javascript es un problema habitual y dificil de detectar.

# Explica las diferencias que hay en C++ entre “\*”, “&” y “\*\*” poniendo ejemplos concretos (código) de uso de cada una de ellas y explicándolos

- `*` sirve para declarar un puntero
  Guarda el entero `1` en memoria y almacena la posicion de memoria en la variable `p`.

```
int *p = 1;
```

- `&` sirve para obtener la direccion de memoria de un elemento dado, permitiendonos almacenarla (entre otras cosas).

```
int a = 1;
int *p = &a; // guarda la direccion de memoria de `a`
```

- `**` crea un puntero de un puntero, es decir, guarda la direccion de memoria de otro puntero (otra direccion de memoria). Un uso muy comun es para el uso de matrices.

```
int **m = new int*[rows];
for(int i = 0; i < rows; i++) m[i] = new int[cols];
```

# Explica, con tus palabras, en qué consisten la pila y el montón (stack y heap) en C++, qué datos van a cada uno y las fortalezas y debilidades que tienen.

- La memoria de stack es mas rapida que el heap por regla general, se reserva en al compilar el programa, es muy limitada y normalmente se libera automaticamente (dependiendo del lenguaje de programacion)

- El heap se utiliza para reservar datos de forma dinamica que a la hora de compilar se desconocen su tamaño, como por ejemplo una lista de numeros de `n` longitud. Es mas ligeramente mas lenta que el stack y dependiendo del lenguaje de programacion (como C/C++ por ejemplo) debe ser reservada y liberada manualmente.
