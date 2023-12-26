#! /bin/bash

# Create a loop to iterate through all files passed to the script
# via the command line.
for f in "$@"
do
  # Capture the film simulation that was written to the image metadata.
  SIM=$(/usr/local/bin/exiftool -FilmMode -s3 "$f")
  case $SIM in
    "Classic Negative")
      /usr/local/bin/exiftool -OriginalTransmissionReference="Dreamland" -SpecialInstructions="https://film.recipes/2022/11/28/dreamland-warm-and-cosy-like-a-dream" -overwrite_original -P "$f"      
      ;;
    "F1b/Studio Portrait Smooth Skin Tone (Astia)")
      /usr/local/bin/exiftool -OriginalTransmissionReference="Astia Pops" -SpecialInstructions="https://film.recipes/2023/11/09/astia-pops-punchy-colour-film-recipe" -overwrite_original -P "$f"
      ;;
    # B&W do not use Film Mode but writes to Saturation instead.
    "")
      /usr/local/bin/exiftool -OriginalTransmissionReference="Leica M10 Monochrom" -SpecialInstructions="https://film.recipes/2023/11/09/astia-pops-punchy-colour-film-recipe" -overwrite_original -P "$f"
      ;;
  esac
done
