use <FractureNetwork.scad>
coreWidth = 30;
claddingThickness = 5;
LidThickness = 10;
coreHeight = 100;
LidSide = 10;
LidWidth = coreWidth + claddingThickness *2 + LidSide *2 ;
LidHeight = 10;
WaterPocketWidth=coreWidth;
WaterPocketHeight =5;
Sealing=5;
SealingPosition = coreWidth + claddingThickness *2;
BoltR=4;


wholeModel();

//This will create the whole model
module wholeModel() {
       difference(){
    union(){
        difference() {
            cube([coreWidth,coreWidth,coreHeight],center=true);
            fractures();
        }
        
        //cladding
        difference() {
            union(){
                cube([coreWidth+claddingThickness,coreWidth+claddingThickness,coreHeight],center=true);
                translate([0,0,coreHeight/2-LidHeight/2])cube([LidWidth,LidWidth,LidHeight],center=true);        
            translate([0,0,-coreHeight/2+LidHeight/2])cube([LidWidth,LidWidth,LidHeight],center=true);
            }
            cube([coreWidth,coreWidth,coreHeight+2],center=true);
        }
    }
  Bolt();
}
}  

module Bolt(){
         union(){
        translate([0,0,coreHeight/2])
        difference(){
    cube([coreWidth+claddingThickness/2+Sealing/8,coreWidth+claddingThickness/2+Sealing/8,Sealing/4],center=true);
    cube([coreWidth+claddingThickness/2-Sealing/8,coreWidth+claddingThickness/2-Sealing/8,Sealing+1],center=true);
        }
       translate([0,0,-coreHeight/2])
        difference(){
    cube([coreWidth+claddingThickness/2+Sealing/8,coreWidth+claddingThickness/2+Sealing/8,Sealing/4],center=true);
    cube([coreWidth+claddingThickness/2-Sealing/8,coreWidth+claddingThickness/2-Sealing/8,Sealing+1],center=true);
        }
        translate([LidWidth/2-LidSide/2-BoltR/2,LidWidth/2-LidSide/2-BoltR/2,0])cylinder(h = coreHeight+10, r=BoltR, center = true, $fn=100);
        translate([-LidWidth/2+LidSide/2+BoltR/2,LidWidth/2-LidSide/2-BoltR/2,0])cylinder(h = coreHeight+10, r=BoltR, center = true, $fn=100);
        translate([LidWidth/2-LidSide/2-BoltR/2,-LidWidth/2+LidSide/2+BoltR/2,0])cylinder(h = coreHeight+10, r=BoltR, center = true, $fn=100);
        translate([-LidWidth/2+LidSide/2+BoltR/2,-LidWidth/2+LidSide/2+BoltR/2,0])cylinder(h = coreHeight+10, r=BoltR, center = true, $fn=100);
    }
}
   
