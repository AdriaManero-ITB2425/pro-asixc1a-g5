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

nnovate Tech és una empresa dedicada a la creació i distribució de contingut digital.
Com a part del nostre compromís amb la innovació tecnològica i la sostenibilitat ens dirigim a vostès amb l'objectiu de dissenyar i implantar una arquitectura de Centre de Processament de Dades (CPD) al núvol adaptada a les nostres necessitats actuals i futures. Busquem una solució integral que integri servei web de l’empresa i de transmissió d'àudio i vídeo, que sigui eficaç en termes de rendiment, seguretat, i eficiència energètica, alineant-se amb els Objectius de Desenvolupament Sostenible (ODS) de l'Agenda 2030. InnovateTech es compromet amb el desenvolupament responsable i sostenible, tal com es reflecteix en la nostra aposta per solucions que compleixin amb els Objectius de Desenvolupament Sostenible (ODS) de l'Agenda 2030. Concretament, volem contribuir activament als ODS 7 (Energia asequible i no contaminant), ODS 9 (Indústria, innovació i infraestructura), ODS 12 (Producció i consum responsables), ODS 13 (Acció pel clima) i ODS 16 (Pau, justícia i institucions sòlides).

## Objetivos

---

- Dissenyar una arquitectura de CPD al núvol que integri serveis web i de transmissió
d'àudio i vídeo.
- Garantir la seguretat, eficiència energètica i sostenibilitat de la infraestructura.
- Implementar solucions que compleixin amb els ODS de l'Agenda 2030.
- Proporcionar una solució escalable i adaptable a les necessitats futures de l'empresa.
1. Diseñar CPD sostenible (ODS 7, 9, 12, 13, 16)
2. Configurar máquinas virtuales con servicios de streaming de audio y vídeo.
3. Diseñar e implementar base de datos de personal.
4. Calcular huella ecológica y proponer mejoras.
5. Documentar en Markdown y presentar demo.

## Escenario planteado

---

Innovate Tech és una PYME ubcada a Barcelona. Degut al recent creixement de la demanda dels seus serveis de streaming d'àudio i vídeo, han decidit invertir en el seu propio CPD per no dependre de companyies externes i poder gestionar de forma més eficient els seus recursos. Abans de realitzar la inversió, havien d'estimar a quants clients volen donar abast i quins recursos nessiten per fer-ho.

Despres de fer calculs, han arribat a la seguent conclusió:
        - Tenen unna mitjana de 20 clients recurrents al mes.
        - Cada client realitza un event amb un rang de 500 a 2000 espectadors.
        - Encara que tingui 20 events al mes, no tots son a la vegada, pero hem de conciderar escenaris de maxima concurrencia:

| Escenari             | Supuesto                                         | Oyentes simultáneos estimados |
|----------------------|--------------------------------------------------|-------------------------------|
| Promedio Bajo        | 2 eventos a la vez, 500 espectadores por evento  | 1000                          |
| Promedio medio       | 3 eventos a la vez, 1000 espectadores por evento | 3000                          |
| Pico maximo realista | 4 eventos a la vez, 2000 espectadores por evento | 8000                          |

En base aquestes dades, hem dissnyat el CPD tenint en ment el pico maximo realista, i hem considerat que el CPD ha de ser escalable per poder adaptar-se a les necessitats futures de l'empresa. El CPD ha de ser capaç de gestionar la càrrega de treball dels 8000 espectadors simultanis, i ha de tenir en compte la seguretat, eficiència energètica i sostenibilitat de la infraestructura. A més, s'ha de garantir la disponibilitat i rendiment dels serveis web i de transmissió d'àudio i vídeo.

Per tant, totes les decisions preses en el disseny del CPD i la Implementacio del serveis s'han pres tenint en compte aquests factors.


## 01.Propuesta CPD

---

### [01.1_propuesta_cpd.md](docs/01_cpd/01.1_propuesta_cpd.md)

## Implementacion de Servicios

---

### [02.1_implementacion.md](docs/02_implementacion/02.1_implementacion.md)
### [02.2.1_streaming.md](docs/02_implementacion/02.2_documentacion_tecnica/02.2.1_streaming.md)

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
│   │       ├── 02.2.3_webserver.md     # Configuración del servidor web
│   │       ├── 02.2.4_elk.md           # Implementación del sistema de monitorización ELK
│   │       ├── 02.2.5_ftp.md           # Servicio FTP para gestión de archivos
│   │       └── 02.2.6_dns.md           # Configuración del servidor DNS
│   └── 03_sostenibilidad/
│       └── 03.1_sostenibilidad.md      # Análisis de sostenibilidad, ODS implicados y propuestas de mejora
├── scripts/                            # Scripts de automatización (instalación, testeo, monitorización, etc.)
└── README.md                           # Documentación principal del proyecto y guía general
```

## Video de muestra

[LInk al Video]
