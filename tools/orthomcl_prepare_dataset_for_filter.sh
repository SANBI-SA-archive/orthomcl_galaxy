#!/bin/bash

DATASET=$1
if [ ! -d inputs ] ; then
    mkdir inputs
fi
ABBREV=$(/usr/bin/head -1 $DATASET | /bin/sed -r 's/^>([^|]*)\|.*/\1/')
cp $DATASET inputs/$ABBREV.fasta