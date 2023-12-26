#! /bin/bash

# Create a loop to iterate through all files passed to the script
# via the command line.
for f in "$@"
do
    # Set the IPTC values.
    /usr/local/bin/exiftool -OriginalTransmissionReference="Astia Pops" -SpecialInstructions="https://film.recipes/2023/11/09/astia-pops-punchy-colour-film-recipe" -overwrite_original -P "$f"
done
