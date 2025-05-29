# pro-asixc1a-g5


## Contenido


---


* [Descripcion del proyecto](#descripcion-del-proyecto)
* [Objetivos](#objetivos)
* [Escenario planteado](#escenario-planteado)
* [Propuesta CPD](#propuesta-cpd)
* [Implementacion de Servicios](#implementacion-de-servicios)
* [Sostenibilidad](#sostenibilidad)
* [Estructura del repositorio](#estructura-del-repositorio)
* [Video de muestra](#video-de-muestra)


## Descripcion del proyecto


---


Innovate Tech es una empresa dedicada a la creación y distribución de contenido digital.
Como parte de nuestro compromiso con la innovación tecnológica y la sostenibilidad, nos dirigimos a ustedes con el objetivo de diseñar e implantar una arquitectura de Centro de Procesamiento de Datos (CPD) en la nube adaptada a nuestras necesidades actuales y futuras.
Buscamos una solución integral que integre el servicio web de la empresa y la transmisión de audio y vídeo, que sea eficaz en términos de rendimiento, seguridad y eficiencia energética, alineándose con los Objetivos de Desarrollo Sostenible (ODS) de la Agenda 2030.

Innovate Tech se compromete con el desarrollo responsable y sostenible, tal como se refleja en nuestra apuesta por soluciones que cumplan con los Objetivos de Desarrollo Sostenible (ODS) de la Agenda 2030.
Concretamente, queremos contribuir activamente a los ODS 7 (Energía asequible y no contaminante), ODS 9 (Industria, innovación e infraestructura), ODS 12 (Producción y consumo responsables), ODS 13 (Acción por el clima) y ODS 16 (Paz, justicia e instituciones sólidas).


## Objetivos


---


- Diseñar una arquitectura de CPD en la nube que integre servicios web y de transmisión de audio y vídeo.
- Garantizar la seguridad, eficiencia energética y sostenibilidad de la infraestructura.
- Implementar soluciones que cumplan con los ODS de la Agenda 2030.
- Proporcionar una solución escalable y adaptable a las necesidades futuras de la empresa.
1. Diseñar un CPD sostenible (ODS 7, 9, 12, 13, 16)
2. Configurar máquinas virtuales con servicios de streaming de audio y vídeo.
3. Diseñar e implementar una base de datos de personal.
4. Calcular la huella ecológica y proponer mejoras.



## Escenario planteado


---


Innovate Tech es una pyme ubicada en Barcelona. Debido al reciente crecimiento de la demanda de sus servicios de streaming de audio y vídeo, han decidido invertir en su propio CPD para no depender de compañías externas y poder gestionar de forma más eficiente sus recursos.

Antes de realizar la inversión, debían estimar a cuántos clientes quieren dar servicio y qué recursos necesitan para hacerlo.

Después de realizar los cálculos, han llegado a la siguiente conclusión:

- Tienen una media de 20 clientes recurrentes al mes.
- Cada cliente realiza un evento con un rango de entre 500 y 2000 espectadores.
- Aunque haya 20 eventos al mes, no todos se realizan al mismo tiempo, pero hay que considerar escenarios de máxima concurrencia.

| Escenari             | Supuesto                                         | Oyentes simultáneos estimados |
|----------------------|--------------------------------------------------|-------------------------------|
| Promedio Bajo        | 2 eventos a la vez, 500 espectadores por evento  | 1000                          |
| Promedio medio       | 3 eventos a la vez, 1000 espectadores por evento | 3000                          |
| Pico maximo realista | 4 eventos a la vez, 2000 espectadores por evento | 8000                          |


En base a estos datos, hemos diseñado el CPD teniendo en cuenta el pico máximo realista, y hemos considerado que el CPD debe ser escalable para poder adaptarse a las necesidades futuras de la empresa.

El CPD debe ser capaz de gestionar la carga de trabajo de hasta 8000 espectadores simultáneos, y debe contemplar la seguridad, la eficiencia energética y la sostenibilidad de la infraestructura.

Además, se debe garantizar la disponibilidad y el rendimiento de los servicios web y de transmisión de audio y vídeo.

Por lo tanto, todas las decisiones tomadas en el diseño del CPD y la implementación de los servicios se han realizado teniendo en cuenta estos factores.



## 01.Propuesta CPD


---


### [propuesta-cpd](docs/01_cpd/01.1_propuesta_cpd.md)


## Implementacion de Servicios


---


#### [02.1_implementacion.md](docs/02_implementacion/02.1_implementacion.md)
#### [02.2.1_streaming.md](docs/02_implementacion/02.2_documentacion_tecnica/02.2.1_streaming.md)
#### [02.2.2_bbdd.md](docs/02_implementacion/02.2_documentacion_tecnica/02.2.2_bbdd.md)
#### [02.2.3_webserver.md](docs/02_implementacion/02.2_documentacion_tecnica/02.2.3_web.md)
#### [02.2.4_elk.md](docs/02_implementacion/02.2_documentacion_tecnica/02.2.4_elk.md)
#### [02.2.5_ftp.md](docs/02_implementacion/02.2_documentacion_tecnica/02.2.5_ftp.md)
#### [02.2.6_msg.md](docs/02_implementacion/02.2_documentacion_tecnica/02.2.6_msg.md)
#### [02.2.7_backup.md](docs/02_implementacion/02.2_documentacion_tecnica/02.2.7_backup.md)


## Sostenibilidad


---


### [03.1_sostenibilidad.md](docs/03_sostenibilidad/03.1_sostenibilidad.md)


## Estructura del repositorio


---


```plaintext
pro-asixc1a-g5/
├── assets/                             # Recursos gráficos o multimedia para usar en la documentación
├── diagramas/                          # Diagramas técnicos del CPD, red, servicios y sostenibilidad
├── docs/
│   ├── 01_cpd/
│   │   └── 01.1_propuesta_cpd.md       # Propuesta inicial de arquitectura del CPD (estructura física, VMs, red)
│   ├── 02_implementacion/
│   │   ├── 02.1_implementacion.md      # Resumen global del proceso de implementación y configuración
│   │   └── 02.2_documentacion_tecnica/
│   │       ├── 02.2.1_streaming.md     # Configuración del servicio de streaming (audio/vídeo)
│   │       ├── 02.2.2_bbdd.md          # Diseño y despliegue de la base de datos
│   │       ├── 02.2.3_web.md           # Configuración del servidor web
│   │       ├── 02.2.4_elk.md           # Implementación del sistema de monitorización ELK
│   │       ├── 02.2.5_ftp.md           # Servicio FTP para gestión de archivos
│   │       ├── 02.2.6_msg.md           # Instalación del servidor de mensajería
│   │       └── 02.2.7_backup.md        # Estrategia de backup y recuperación
│   └── 03_sostenibilidad/
│       └── 03.1_sostenibilidad.md      # Análisis de sostenibilidad, ODS implicados y propuestas de mejora
├── scripts/                            # Scripts de automatización (instalación, testeo, monitorización, etc.)
└── README.md                           # Documentación principal del proyecto y guía general
```


## Video de muestra


[Link al Video]

<video width="640" height="480" controls>
  <source src="https://drive.google.com/uc?export=view&id=11djxGufpwlp2K-DMOiTdE_eu65c8qkwL" type="video/mp4">
  Tu navegador no soporta el elemento de video.
</video>
