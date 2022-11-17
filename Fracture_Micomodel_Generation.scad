
// Unit [mm]
//Outside
OT = 20;
OW = 130;
OL = 130;
//Inside
IT = OT - 5*2;
IW = OW - 10*2;
IL = OL - 10*2;
//Inlet connectors
Inlet_length=15;
Inlet_r=6;

//Matrix set min and max Frac apperture 
seed=42;
Apmin=0.2;
Apmax=0.8;

// Generate Large fractures
//Lfrac_ap=10;
//Lfrac_length=30;
//Lfrac_ap2=5;
//Lfrac_length2=20;

difference(){
    cube([OW,OL,OT],center=true);
    union(){
    Fractures(); 
    translate([15,40,0]){
            rotate([0,0,15]){
            cube([Lfrac_length,Lfrac_ap,IT], center = true);        
        }}
    translate([-30,-40,0]){
            rotate([0,0,105]){
            cube([Lfrac_length2,Lfrac_ap2,IT], center = true);        
        }}
    translate([30,60,0]){
        rotate([90,0,0]){
        cylinder(h=Inlet_length, r1=Inlet_r, r2=Inlet_r, $fn = 100,     center=true);
        }}
    translate([-30,-60,0]){
        rotate([90,0,0]){
        cylinder(h=Inlet_length, r1=Inlet_r, r2=Inlet_r, $fn = 100,     center=true);
        }} 
    }
}   



module Fractures(){
    difference(){
       union(){
            for (i= [-10 : 10]) {
                for (j= [-10 : 10]){
                    ap = rands(Apmin,Apmax,seed)[0];
                    echo(5*i,5*j,ap);
                translate([5*i,5*j,0])rotate([0,0,45])cube([             ap,7.5,IT],center= true);    
            }  
        }
          for (i= [-10 : 10]) {
                for (j= [-10 : 10]){                
                    ap = rands(Apmin,Apmax, seed)[0];
                    echo(5*i,5*j,ap);
                    translate([5*i,5*j,0])rotate([0,0,-45])cube([            ap,7.5,IT],center= true);
            }
        }
        }
        union(){
            translate([IW,0,0])cube([IW,3*IW,300],center= true);
            translate([-IW,0,0])cube([IW,3*IW,300],center= true);
            translate([0,IW,0])cube([3*IW,IW,300],center= true);
            translate([0,-IW,0])cube([3*IW,IW,300],center= true);

    }
    }   
}







