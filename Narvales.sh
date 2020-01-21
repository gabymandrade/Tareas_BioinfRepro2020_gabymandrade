#!/bin/bash
## Este script baja 5 secuencias de Monodon monoceros de NCBI
# Gabriela Martínez Andrade, 2020

# Crear directorio para guardar datos
mkdir Narval5

# Bajar datos de NCBI
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nucleotide&rettype=fasta&id=1655748997" > Narval5/Narvales1.fasta
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nucleotide&rettype=fasta&id=1655748996" > Narval5/Narvales2.fasta
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nucleotide&rettype=fasta&id=1655748995" > Narval5/Narvales3.fasta
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nucleotide&rettype=fasta&id=1655748994" > Narval5/Narvales4.fasta
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nucleotide&rettype=fasta&id=1655748993" > Narval5/Narvales5.fasta

# Revisar qué secuencias se bajaron
grep ">" Narval5/*.fasta

# Para buscar la secuencia TGCA dentro de las secuencias que bajé de NCBI
grep -c "TGCA" Narval5/*.fasta
