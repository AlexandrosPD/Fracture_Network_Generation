This package includes OpenScad codes for generation of fracture networks. To use the files OpenScad free software is required which can be downloaded from https://openscad.org/ . The code allows to generate fractured networks formed by disc-shaped fractures. The radii of the disc-shaped fractures is specified according to the power-law scaling with maximum and minimum radii. The fracture aperture is specified to be proportional to its radius based on linear elastic fracture mechanics. The user can specify the values of maximum and minimum radii, fracture aperture, fracture length, fracture oriantation, dip and azimuth.

Each folder (Sample 1, Sample 2, Sample 3 and Sample 4) contains a different initial fracture netwrok design. 
-Sample 1 allows or generation of a fracture network of fractures with random orientation and number of factures C = 11050.
-Sample 2 allows or generation of a fracture network of fractures with random orientation and number of factures C = 17700.
-Sample 3 allows or generation of a fracture network of fractures with random orientation and number of factures C = 25000.
-Sample 4 allows or generation of a fracture network of fractures with an orientation of 60 degrees and number of factures C = 20000.

Each sample file contain the following three OpenScad files:Disc, FractureNetwork and WholeModel. In order to generate the fracture network the user should use the WholeModel.scad file. 
