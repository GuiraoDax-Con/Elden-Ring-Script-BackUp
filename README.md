# Elden-Ring-Script-BackUp
Script para automatizar las copias de seguridad de los archivos de guardado de Elden Ring y su recuperación.

## Motivos
1) En caso de que se corrompan los datos del juego (como me paso a mí), podras recuperar tu partida desde una copia de seguridad que hayas echo.
2) En caso de que tu partida haya sido alterada y/o perjudicada por un hacker como esta sucediendo estos ultimos días podras recuperar tu pasrtida en estado normal mediante una copia de seguridad que hayas echo.
3) En caso de que no uses Steam y necesites tener respaldo de tus datos dejuego o quieras tener tu propio respaldo por el motivo que sea.

## Función
Elden Ring siempre crea los archivos de seguridad en el mismo sitio, por lo que el script ira a la carpeta y copiara todos los archivos y los pegara en una carpeta en su escritorio, la carpeta llamada "Elden_Ring-BackUp". Usted no necesita crear la carpeta ya que el propio script verificara en cada proceso que la carpeta exista o no y en caso de que no exista la creara el mismo. 
Para la recuperación de la copia de seguridad el script comprobara la existencia de la carpeta "Elden_Ring-BackUp", en caso de que no exista porque la haya eliminado o todavia no se haya creado una copia de seguridad le dara el aviso de que no esta la carpeta, en caso de que exista la carpeta pero este vacia tambien se lo ara saber; en caso de que la carpeta exista y contenga los datos correspondientes ejecutara el proceso de copiado y pegado.
Si restaura una copia de seguridad tenga encuenta que para mantener siempre un backup el script no eliminara los archivos de la carpeta "Elden_Ring-BackUp".

### Por motivos de seguridad su equipo puede pedirle que active la ejecución de script en PowerShell o en Python, usted realiza esto bajo su propia responsabilidad.
