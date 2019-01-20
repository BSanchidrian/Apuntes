# Tema 4 - Grid computing

La computacion grid permite el acceso a recursos computacionales geograficamente dispersos (al contrario que los cluster)

## Limitaciones de los cluster

- Mantenimiento
  - La ampliacion de un cluster es costosa
  - Solucion escalable, hasta que punto?
- Recursos infrautilizados - Se desperdician millones de ciclos de computo
- Siempre existe un problema mas grande

## Caracterisicas grid computing

- Potencia computacional
- Almacenamiento
- Utiliza protocolos de internet (WAN) e ideas de computacion paralela y distribuida
- Soporte de computacion y almacenamiento para aplicaciones que necesitan una gran capacidad de computo y requieren gran numero de datos
- Cada 'nodo' se encuentra formado por un cluster (LAN)
- Compartir recursos de forma flexible y segura

## Beneficios del grid

- Potencia de computo 'ilimitada'
- Posibilidad de aprovechar los recursos de diferentes organizaciones (posiblemente dispersas)
- Integracion de sistemas y dispositivos heterogenos
- Escalabilidad

## Estado actual

- Necesidad de estandarizacion
- Es necesaria mucha experiencia para aprovechar sus capacidades correctamente

## Arquitectura del grid

**Recursos + middleware = Infraestructura grid**

- Distintos tipos de middleware:
  - Grid fabric (SGE, Condor)
  - Core grid middleware (Unicore)
  - User level grid middleware (OGSA)
  - Grid portals (GridSphere)
- Estandar **The Globus Toolkit**

## The globus toolkit (Core grid middleware)

- Considerado el estandar de la tecnologia grid
- Open source
- Ampliamente utilizado
- Interfaces y protocolos que posibilitan el acceso a recursos remotos
- Librerias monitorizacion, gestion ficheros, seguridad
- Basado en **OGSA**
  **OGSA (Open Grid Services Architecture)**

**Broker**: Intermediario encargado de buscar, identificar, evaluar, asignar, etc. los recursos del grid  
**GridFTP**: Transferencia segura de datos en el entorno de un grid. Extiende el protocolo FTP.
