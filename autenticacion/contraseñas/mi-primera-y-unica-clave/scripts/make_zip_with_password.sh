#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

mkdir -p dist

# Flag
echo "flag{contraseñas_debiles_son_peligrosas}" > dist/FLAG.txt

# Write-up pedagógico (será visible al abrir el ZIP)
cat > dist/RECOMENDACIONES.txt <<'WEOF'
¡Bien hecho! Abriste el archivo con una contraseña débil (nombre de mascota).
¿Por qué esto es inseguro?
- Los datos personales que publicamos (mascotas, cumpleaños, equipos) son fáciles de adivinar.
- Muchos atacantes prueban listas con nombres comunes y combinaciones.

¿Cómo mejorar tu contraseña?
1) Usá una frase larga (passphrase). Ej: "MiGatoMishiCorre24!"
2) Mezclá mayúsculas, minúsculas, números y símbolos.
3) No reutilices contraseñas en distintos sitios.
4) Considera un gestor de contraseñas para crear/almacenar claves seguras.

Ejemplo de contraseña segura (no usar exactamente): MiGatoMishi_Corre!24
WEOF

cd dist
if ! command -v zip >/dev/null 2>&1; then
  echo "ERROR: 'zip' no instalado. Instalá zip y volvé a ejecutar"
  exit 2
fi

# Contraseña deliberadamente débil: 'Mishi'
zip -P "Mishi" -r secreto.zip FLAG.txt RECOMENDACIONES.txt >/dev/null

# eliminar archivos sueltos que contienen la flag (solo queda dentro del zip)
rm -f FLAG.txt RECOMENDACIONES.txt

echo "ZIP creado: passw/pass_tu-primera-clave/dist/secreto.zip (password: Mishi)"
