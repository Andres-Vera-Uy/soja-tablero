# soja-tablero

Tablero familiar de venta de soja. Un único `index.html` estático — sin build,
sin dependencias, sin servidor. Se edita y se pushea.

## Preferencias de diseño

**El color principal es azul. Siempre.**

No proponer ni aplicar otra familia cromática como color de marca. Vale para el
tablero y para cualquier cosa que se genere alrededor del proyecto (documentos,
guías, gráficos, presentaciones).

Paleta de marca:

| Token            | Valor     | Uso                                    |
| ---------------- | --------- | -------------------------------------- |
| `--prusia`       | `#003153` | Azul de Prusia. Color principal.       |
| `--celeste`      | `#5B9BD5` | Acento, serie del año anterior.        |
| `--celeste-soft` | `#D8E7F4` | Fondos suaves, chips.                  |
| `--ink`          | `#0B2436` | Texto.                                 |
| `--gris`         | `#5F7180` | Texto secundario, ejes.                |
| `--crema`        | `#FAF5E9` | Fondo de página.                       |
| `--card`         | `#FFFFFF` | Fondo de tarjetas.                     |
| `--line`         | `#E4DCC9` | Bordes, líneas de grilla.              |

Los neutros llevan un sesgo hacia el azul: el gris es azulado, no puro.

### Lo que no es color de marca

Los colores del semáforo son semánticos y **no cambian** cuando cambia el color
principal — codifican estado, no identidad:

| Token       | Valor     | Estado    |
| ----------- | --------- | --------- |
| `--verde`   | `#2F7D4F` | Favorable |
| `--ambar`   | `#B97F14` | Atención  |
| `--naranja` | `#E8743B` | Alerta    |

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
