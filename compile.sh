#!/bin/bash

# Navigate to the literature_overview directory
cd literature_overview || { echo "Error: Directory literature_overview not found"; exit 1; }

# Define the base filename
FILENAME="literature-neural-architecture-robotics"

echo "=== Fast Compilation (pdflatex only) ==="
pdflatex -interaction=nonstopmode "$FILENAME.tex"

echo "=== Moving PDF to parent directory ==="
if [ -f "$FILENAME.pdf" ]; then
    mv "$FILENAME.pdf" ../
    echo "=== Fast Compilation Complete ==="
    echo "PDF updated in root: $FILENAME.pdf"
else
    echo "=== Fast Compilation Failed ==="
    echo "Error: PDF generation failed."
fi
