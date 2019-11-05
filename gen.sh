#!/bin/bash
cd /media/nfs/data/car-cascade
opencv_createsamples -info cars.info -num 550 -w 48 -h 24 -vec cars.vec
opencv_traincascade -data data -vec cars.vec -bg bg.txt -numPos 500 -numNeg 500 -numStages 15 -w 48 -h 24 -featureType LBP
echo cascade.xml generated with 15 passes
