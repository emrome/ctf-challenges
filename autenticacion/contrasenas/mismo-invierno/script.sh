#!/bin/bash
# -----------------------------------------------------------------
# Script para generar el desafío "El Descuido Anual (Auth + Stego)"
# Lógica: Mutación (ZIP) + Acróstico (Steghide)
# -----------------------------------------------------------------

# --- CONFIGURACIÓN DEL DESAFÍO ---

# Contraseña 1: para el ZIP (deducida por mutación)
PASS_ZIP="Invierno_2025"

# Archivos usados y generados
MEMO_FILE="memo_politica.txt"
OUTER_ZIP="auditoria_anual.zip"
IMAGE_BASE="siempre-lo-mismo.png"

# --- Inicio ---
echo "🧠 Generando artefactos para el desafío (Auth + Stego)..."


if [ ! -f "$IMAGE_BASE" ]; then
    echo "❌ ERROR: No se encuentra la imagen base '$IMAGE_BASE'."
    echo "   Descarga una imagen (por ejemplo una oficina) y renómbrala así."
    exit 1
fi

# 2. Crear el memo con las pistas
echo "1️⃣  Creando $MEMO_FILE..."
cat << EOF > "$MEMO_FILE"
DE: Departamento de IT
ASUNTO: ¡NUEVA POLÍTICA DE CLAVES OBLIGATORIA - 2025!

A todo el personal:

Como parte de nuestra nueva auditoría de seguridad para 2025, todas las contraseñas deben ser actualizadas. 
La contraseña del ZIP de la auditoría se actualizó siguiendo esta política (la clave vieja era 'Invierno.2024').

La nueva política exige:
1. Mínimo 10 caracteres.
2. Debe incluir el año en curso (2025) para validar el cambio.
3. El uso de símbolos especiales como '.' o '!' ya NO está permitido.
4. El único símbolo especial ahora aprobado es el 'guion bajo' (_).

---
**Recordatorio de Protocolos de Seguridad:**
Para asegurar la confidencialidad y la integridad en la distribución de archivos críticos,
se ha implementado el uso de **datos ocultos** dentro de los archivos.
Esta técnica implica insertar información directamente en el flujo de bits de un archivo multimedia
o en sus **metadatos**, para que no sea visible a simple vista.
Si un archivo parece contener "información extra", se recomienda buscar online herramientas para su extracción.
Asegúrese de emplear herramientas adecuadas para la revisión exhaustiva.
---
EOF


# 5. Crear el ZIP cifrado con el memo y la imagen
echo "4️⃣  Creando $OUTER_ZIP (contraseña: $PASS_ZIP)..."
zip -q -e --password "$PASS_ZIP" "$OUTER_ZIP" "$IMAGE_BASE"


echo "-----------------------------------------------------------------"
echo "✅ ¡Desafío generado con éxito!"
echo "Archivos creados para el alumno:"
echo "  - $OUTER_ZIP"
echo ""
echo "--- (Solo para tu referencia) ---"
echo "🔐 Clave ZIP: $PASS_ZIP"
echo "-----------------------------------------------------------------"

