
---

### 📄 simple-exercise.sh
```bash
#!/bin/bash

# Script para calcular calorías quemadas en ejercicios simples
# Uso: ./simple-exercise.sh <ejercicio> <minutos>

ejercicio=$1
minutos=$2

if [ -z "$ejercicio" ] || [ -z "$minutos" ]; then
  echo "Uso: $0 <ejercicio> <minutos>"
  exit 1
fi

case $ejercicio in
  correr)
    calorias=$((10 * minutos))
    ;;
  caminar)
    calorias=$((4 * minutos))
    ;;
  bicicleta)
    calorias=$((8 * minutos))
    ;;
  yoga)
    calorias=$((3 * minutos))
    ;;
  *)
    echo "Ejercicio no reconocido. Opciones: correr, caminar, bicicleta, yoga"
    exit 1
    ;;
esac

echo "Ejercicio: $ejercicio"
echo "Duración: $minutos minutos"
echo "Calorías aproximadas quemadas: $calorias"
