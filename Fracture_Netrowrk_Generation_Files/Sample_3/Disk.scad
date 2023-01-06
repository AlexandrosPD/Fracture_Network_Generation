module disk(CtX, CtY, CtZ, Rad, Apt, Dip, Azm){
    translate([CtX, CtY, CtZ - Apt/2]) {
        rotate([0, 0, Azm]) {
            rotate([0, Dip, 0]) {
            
    	        cylinder(r=Rad, h= Apt);
            }
        }
    }
}
