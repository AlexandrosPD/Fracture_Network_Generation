This package includes OpenSCAD codes for generation of digital fracture networks. To use the OpenSCAD files OpenSCAD free software is required.The software can be downloaded from https://openscad.org/ . The code allows to generate fracture networks formed by disc-shaped fractures. The radii of the disc-shaped fractures is specified according to the power-law scaling with maximum and minimum radii. The fracture aperture is specified to be proportional to its radius based on linear elastic fracture mechanics. The fractures are generated until the fracture density reached the determined level with power-law fracture length distribution N=C[(r_min)^(-D)-(r_max)^(-D)].

In this package four examples are provided (Sample 1, Sample 2, Sample 3 and Sample 4). Each example has a different initial fracture netwrok design

-Sample 1: a fracture network of fractures with random orientation and fracture desnity C = 11050 is generated. -Sample 2: a fracture network of fractures with random orientation and fracture density C = 17700 is generated. -Sample 3: a fracture network of fractures with random orientation and fracture density C = 25000 is generated. -Sample 4: a fracture network of fractures with an orientation of 60 degrees and fracture density C = 20000 is generated.

The user can specify the values of maximum and minimum radii, fracture aperture, fracture length, fracture oriantation, dip azimuth and fracture density.

In each folder three different OpenSCAD files can be found: Disk.scad, FractureNetwork.scad and WholeModel.scad. The fracture network parameters are set in the FractureNetowrk.scad file. In order to generate the full model the user must run the WholeModel.scad script*.

*Note: The Disk.scad, FractureNetwork.scad and WholeModel.scad must be saved folder prior to running the WholeModel.scad
