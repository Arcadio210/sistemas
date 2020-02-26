#!/bin/bash
fitxer="/home/alumno/fitxer3.txt"
carpeta=" /home/alumno"


if ([ -f $fitxer ]); then
    echo "Los permisos del fichero son: "
    if ([ -r $fitxer ]); then
        echo " Lecutra "
    fi
    if ([ -w $fitxer ]); then
        echo " Escritura "
    fi
    if ([ -x $fitxer ]); then
        echo " Ejecucion "
    fi
else
    if ([ -d $carpeta ]); then
        ls -la $carpeta
    else
        echo "La carpeta $carpeta no existeix"
    fi
fi
