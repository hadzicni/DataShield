#!/bin/bash

backup_dir="/pfad/zum/zu/sichernden/verzeichnis"

backup_dest="/pfad/zum/zielverzeichnis"

if [ ! -d "$backup_dest" ]; then
    mkdir -p "$backup_dest"
fi

backup_file="backup_$(date +'%Y%m%d_%H%M%S').tar.gz"

tar -czf "$backup_dest/$backup_file" "$backup_dir"

echo "Sicherung erfolgreich erstellt: $backup_dest/$backup_file"
