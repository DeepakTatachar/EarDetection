Title: Ear Detection using Snakes
 
Authors: Deepak R, Abhishek Vasant Nayak, Manikantan K, 2015.

Purpose: The purpose of the above code is to demonstrate ear detection using Snakes (Active Contour Modelling). 
This code demonstrates a specific result obtained when CMU-PIE face database was customized and the proposed algorithm was applied.
The result expected is the as tabulated in Table 1, Entry 2, “Only SVM SLR” on page 4 of the paper.

The code was developed using Matlab 2014a. 
The code has two user inputs. 
The first is a question stating whether to run Snake-based based Background Removal (SBR).
The second input is if the user wants to see the detected cases.
For the sake of computational time calculation, there are two cases the first skips the SBR and uses a precompiled SBR database this takes about 5 minutes and 45 seconds. 
If one chooses to run SBR then it takes about 12 minutes and 15 seconds, on CORE i7 with 8 GB of RAM.

What to Code To Execute?
Run: EarDetection.m

Also see Expected Results Published From Matlab.pdf

Files and Folder List Required to run the code are specified in the Requirements.txt file



