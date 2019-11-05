# Car Cascade on cluster

Project for Machine Perception where I am generating a cascade from 1000 pictures of cars and not cars on a cluster

## Getting Started

Use gen.sh when directory is places in the home directory after editiing the file to add the number of passes desired

### Prerequisites

What things you need to install the software

```
libopencv
python
openssh
```

### Installing

After pulling from git edit the gen.sh file to input your paramaters

```
opencv_traincascade -data data -vec cars.vec -bg bg.txt -numPos 500 -numNeg 500 -numStages 15 -w 48 -h 24 -featureType LBP
```

Change numStages to however many times you want the algorithm to pass through the dataset 
Delete all files in the data folder for a fresh generation
Also delete cars.vec for this same reason

run
```
sh gen.sh
```

Output will be in the data directory

```
cascade.xml
```

## Running the tests

A run of 15 passes took 90 seconds on an Intel NUC with an Intel core i5
A run of 60 passes took 82 seconds (15 passes per node) on Dell cluster of 4 nodes


## Authors

* **Naomi Calvi** - *Initial work* - (https://git.cs.hartford.edu/ncalvi)
* **Dr. Becker** - *Cluster Back-end Development* - (https://git.cs.hartford.edu/tbecker) 


## License

This project is licensed under the GNU License


## Acknowledgments

* Image set obtained from UIUC under educational license (http://cogcomp.org/Data/Car/)

