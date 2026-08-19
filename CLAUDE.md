# soja-tablero

Tablero familiar de venta de soja. Un único `index.html` estático — sin build,
sin dependencias, sin servidor. Se edita y se pushea.

## Preferencias de diseño

**El color principal es azul. Siempre.**

No proponer ni aplicar otra familia cromática como color de marca. Vale para el
tablero y para cualquier cosa que se genere alrededor del proyecto (documentos,
guías, gráficos, presentaciones).

Paleta de marca:

| Token            | Valor     | Uso                                       | Contraste vs crema |
| ---------------- | --------- | ----------------------------------------- | ------------------ |
| `--prusia`       | `#15537F` | Azul acero. Color principal y serie actual. | 7,55:1           |
| `--celeste`      | `#6BA3CE` | Serie del año anterior.                    | 2,51:1            |
| `--celeste-soft` | `#D9E8F3` | Fondos suaves, chips.                      | —                 |
| `--ink`          | `#0C2438` | Texto.                                     | 14,68:1           |
| `--gris`         | `#5A6E7E` | Texto secundario, ejes.                    | 4,91:1            |
| `--crema`        | `#FAF6EC` | Fondo de página.                           | —                 |
| `--card`         | `#FFFFFF` | Fondo de tarjetas.                         | —                 |
| `--line`         | `#E4DCC9` | Bordes, líneas de grilla.                  | —                 |

Los neutros llevan un sesgo hacia el azul: el gris es azulado, no puro.

**No cambiar estos valores a ojo.** La serie actual y la del año anterior no son
categorías intercambiables: tienen orden temporal, así que forman una rampa
**ordinal** de un solo matiz. Si se retocan, hay que revalidar lightness
monótona, salto adyacente ≥ 0,06 y extremo claro ≥ 2:1 contra la crema. El
`#003153` que usaba el proyecto antes daba chroma 0,078 — tan bajo que leía
como pizarra casi negra en vez de azul; por eso se subió a `#15537F`.

### Lo que no es color de marca

Los colores del semáforo son semánticos y **no cambian** cuando cambia el color
principal — codifican estado, no identidad:

| Token       | Valor     | Estado    | Contraste vs crema |
| ----------- | --------- | --------- | ------------------ |
| `--verde`   | `#2F7D4F` | Favorable | 4,67:1             |
| `--ambar`   | `#B97F14` | Atención  | 3,19:1             |
| `--naranja` | `#D9622C` | Alerta    | 3,39:1             |

El naranja era `#E8743B`, que daba 2,78:1 y quedaba bajo el piso de 3:1 para
marcas. Se corrigió a `#D9622C` sin cambiar su lectura de alerta.

## Dónde vive el color

Si se toca la paleta, hay que actualizar los tres lugares. Cambiar solo el
primero deja el gráfico desfasado del resto de la página:

1. El bloque `:root` del `<style>`.
2. El meta `theme-color` del `<head>` (barra del navegador en iOS).
3. **Hexes literales dentro del JS que dibuja el SVG del gráfico** — línea de
   grilla, etiquetas de los ejes, serie del año anterior, serie actual, y el
   punto final con su etiqueta. No usan `var()`, están escritos a mano.

## Convenciones

- Mensajes de commit: `apertura YYYY-MM-DD` y `cierre DD-mmm-YYYY`.
- El archivo se sirve como página estática; no hay paso de compilación que
  validar antes de pushear.
