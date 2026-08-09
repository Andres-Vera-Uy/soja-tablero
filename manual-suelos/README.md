# Manual de Suelos del Uruguay

Manual PDF de divulgación (37 páginas, A4) con todos los grandes grupos de suelo
del Uruguay: composición, dónde aparecen, para qué sirven, clasificación nacional
(Altamirano et al. 1976, rev. 2007), correlación internacional (WRB 2022 y USDA
Soil Taxonomy), CONEAT, conservación, hidrología y drenaje de suelos (constantes hídricas, balance, clases de drenaje y grupos hidrológicos de Durán 1997, con bibliografía citada), guía de diagnóstico y un anexo cartográfico: mapas esquemáticos de suelos, geología, hidrogeología (acuíferos) y aguas superficiales, con cartoteca de los mapas oficiales por escala.

- **`manual-suelos-uruguay.pdf`** — el manual listo para leer o imprimir.
- **`manual-suelos-uruguay.html`** — la fuente: todo el contenido, el diseño (CSS)
  y las ilustraciones SVG (perfiles de suelo, mapa de regiones, escalas) en un solo
  archivo. Las fichas de suelos se generan desde un arreglo de datos en el `<script>`
  final, así que corregir un dato es editar ese arreglo.
- **`fonts/`** — tipografías embebidas (Fraunces, Source Serif 4, Inter; SIL OFL).
- **`build.sh`** — regenera el PDF desde el HTML con Chromium headless.

Es material independiente del tablero de soja (`index.html` en la raíz), que no se toca.

Fuentes principales: Carta de Reconocimiento de Suelos del Uruguay (MGAP), Manual de
Descripción y Muestreo de Suelos (MGAP–DGRN), CONEAT (ley 13.695), WRB 4ª ed. (IUSS/FAO),
USDA–NRCS, Museo Virtual de Suelos (Facultad de Agronomía, Udelar). El detalle completo
está en la última página del manual.
