# README

The program is composed of 5 separate MATLAB script files (.m). 4 of those contain the code:
1. read.m
2. init.m
3. simul.m
4. figures.m
The last script, main.m, calls the 4 other script sin succession. 


# The configuration file:
The config.txt file lists all the essential parameters that the program needs in order to properly run the simulations. The syntax should not be tampered with as it might aversely affect the reading script. Numerical and boolean values can be changed to create a customised configuration.

# Script 1: read.m
The read.m script requires a configuration text file (.txt) to be located in the same location, named “config.txt”. In order to import a configuration file with another name or from another location please alter line 3 of the script accordingly.	

# Script 2: init.m
The init.m script takes the data read from the read.m script, stores in the data_read matrix, and initialises matlab variables with the inputted numerical values.

# Script 3: simul.m
This is the main script of the code. Its structure and functions are detailed by the comments in the code. 

# Script 4: figures.m
This final script takes the estimates in each axis, stored in the variables S_i, and plots their difference with the true background field as a histogram. The histogram is fitting with a normal distribution, of which the mean and standard deviation are added to the legend of the figure.

# How to run a simulation:

Adjust the config.txt file to an appropriate configuration. Open the main.m script and run it. This will generate 3 figures that represent the error distribution for each axis. 

The recommended number of simulations is nsimul = 10’000, as this equates to a running time of about 30s. nsimul = 100’000 is feasible but much lengthier and does not generate different results.


# Authors
Nicholas Delmotte \
Daniel Montagna


Imperial College London, 2019


