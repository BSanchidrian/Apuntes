Tema 3 - Programacion basada en paso de mensajes
======

## Computacion paralela
Forma eficaz de proceso de la informacion, favorece la explotacion de 
succesos concurrentes.
* Objetivo: aumentar el rendimiento
* Computacion paralela:
  * Memoria compartida - cada procesador tiene acceso a un conjunto de 
memoria compartida
  * Paralelismo de datos - operaciones ejecutadas en paralelo sobre un 
conjunto de datos estructurados
  * Paralelismo funcional - tareas diferentes que pueden ser ejecutadas 
en paralelo 

### Fases de la programacion paralela
* Descomposicion funcional - identificar las funciones que se deben 
realizar
* Particion - distribucion de las funciones en procesos y esquema de 
comunicacion entre procesos (maximizar grado de paralelismo y minimizar 
la comunicacion)
* Localizacion - cada proceso se asigna a un procesador del sistema
* Escalado - determinar el tamaño optimo del sistema en funcion de algun 
parametro de entrada

OpenMP, lenguajes paralelos, librerias de paso de mensajes (MPI)

### MPI (Message Passing Interface)
La comunicacion puede ser:
* Punto a punto: el proceso origen conoce el identificador del proceso 
destino y envia un mensaje dirigido
* Colectiva: aka broadcast

A su vez puede ser **bloqueante** (bloquea el proceso hasta que la 
operacion finalice) o **no bloqueante** (si se recupera el control 
inmediatamente).
La **recepcion** finaliza cuando se **obtiene el mensaje completo** y la 
**emision** cuando se puede **reutilizar el buffer de emision**

Ejemplo de MPI_Send /MPI_Recv
```C
char msg[100];

if(my_rank==0)
{
  source = my_rank;
  sprintf(msg,"\n\n\tEsto es un mensaje del proceso %d al proceso 
%d",source,dest);
  MPI_Send(msg,100,MPI_CHAR,dest,TAG,MPI_COMM_WORLD);
  printf("\n Mensaje enviado a %d",dest);
}
else if(my_rank==1)
{          
  dest = my_rank;
  MPI_Recv(msg,100,MPI_CHAR,source,TAG,MPI_COMM_WORLD,&status);
  printf("\n Mensaje recibido en %d",dest);
  printf(msg);
}
```

```C
int main(int argc, char **argv)
{
  int rank;
  int rank;
  char msg[20];
  MPI_Status status;
  MPI_Init(&argc, &argv);
  MPI_Comm_rank(MPI_COMM_WORLD, &rank);
  if (rank==0)
  {
    printf ("I am master. Sending the message.\n\n");
    strcpy(msg,"Hello World!");
    MPI_Send(msg, 13, MPI_CHAR, 1, 100, MPI_COMM_WORLD);
  }
  else
  {
    printf ("I am slave. Receiving the message.\n");
    MPI_Recv(msg, 13, MPI_CHAR, 0, 100, MPI_COMM_WORLD, &status);
    printf ("The message is: %s\n", msg);
  }
  MPI_Finalize();
}
```

**Compilacion**: `mpicc <fichero fuente mpi> <flags> -o <nombre 
ejecutable>`
**Ejecucion**: `mpirun -np <numero procesos> <nombre programa & 
argumentos>`
