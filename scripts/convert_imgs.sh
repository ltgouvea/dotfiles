#!/bin/zsh
IMGCOUNTER=0
IMGLENGTH=$(find . -name '*.**g' | wc -l)
mkdir img_original
for image in *.**g; do
    IMGCOUNTER=$((IMGCOUNTER + 1))
    echo "Convertendo imagem $IMGCOUNTER de $IMGLENGTH";
    convert $image -resize 500x500 "${image}_resized"
    mv $image img_original/$image
    mv "${image}_resized" $image
done
echo "Concluído"
