use <Disk.scad>

//The fracture network used in the 
module fractures() {
    ///// Fracture parameters /////////////////////////
    ParameterC = 11050;
    ParameterD = 2;
    MinRadius = 1.6;
    MaxRadius = 15;
    ParameterA = 0.125;
    ////////////////////////////////////////////////////
    
    ModelLengthX = 30+30;
    ModelLengthY = 30+30;
    ModelLengthZ = 100+30;
    ModelRadius = 15;
    ModelHeight = 100;    
    seed =42;
    wp = 1.0 / ParameterD;
    Nmin = round(ParameterC * pow(MinRadius, -ParameterD));
    Nmax = round(ParameterC * pow(MaxRadius, -ParameterD));
    Number = Nmin - Nmax;
    echo(Nmin);
    echo(Nmax);
    //i is the number of fractures at a specific radius
    for (i = [Nmax + 1 : Nmin]) {
        //Center position
        CtX = rands(-ModelLengthX/2,ModelLengthX/2,i,seed);
        CtY = rands(-ModelLengthY/2,ModelLengthY/2,i,seed+10);
        CtZ = rands(-ModelLengthZ/2,ModelLengthZ/2,i,seed+20);
        
        //Radius and Aperture
        wb = ParameterC / i;
        Rad = pow(wb, wp);
        Apt = ParameterA * Rad;
        
        //Dip and Azimuth
        Dip = rands(0,90,i,seed+30);
        Azm = rands(0,360,i,seed+40);
        //Create fracture model
//        for (j = [0:i-1]) {
            j=i-1;
            if (sqrt(CtX[j]*CtX[j] + CtY[j]*CtY[j]) < (ModelRadius + Rad) && abs(CtZ[j]) < ModelHeight / 2 + Rad)
                disk(CtX[j], CtY[j], CtZ[j], Rad, Apt, Dip[j], Azm[j]);
            echo(CtX[j], CtY[j], CtZ[j], Rad, Apt, Dip[j], Azm[j]);
  //      }
    } 
}

//A model consisting only a single vertical fracture
module simpleFracture(coreRadius, coreHeight, Apt = 0.1) {
    cube(size = [Apt, coreRadius * 2 + 1, coreHeight + 2], center = true);
}

//For fracture network with different dip orientations
module fracturesOriented(ParameterC = 1010, ParameterD = 2.5, MinRadius = 1.6, MaxRadius = 10, ParameterA = 0.025, ModelLengthX = 60, ModelLengthY = 60, ModelLengthZ = 60, orientationAngle = 45) {

    wp = 1.0 / ParameterD;
    Nmin = round(ParameterC * pow(MinRadius, -ParameterD));
    Nmax = round(ParameterC * pow(MaxRadius, -ParameterD));
    Number = Nmin - Nmax;
    echo(Nmin);
    echo(Nmax);
    //i is the number of fractures at a specific radius
    for (i = [Nmax + 1 : Nmin]) {
        //Center position
        CtX = rands(-ModelLengthX/2,ModelLengthX/2,i);
        CtY = rands(-ModelLengthY/2,ModelLengthY/2,i);
        CtZ = rands(-ModelLengthZ/2,ModelLengthZ/2,i);
        
        //Radius and Aperture
        wb = ParameterC / i;
        Rad = pow(wb, wp);
        Apt = ParameterA * Rad;
        
        //Dip and Azimuth
        DipRandom = rands(0, 1, i);
        //Azm = rands(0,359,i);
        //Create fracture model
        for (j = [0:i-1]) {
            Dip = (DipRandom[j] > 0.5) ? orientationAngle:-orientationAngle;
            if (sqrt(CtX[j]*CtX[j] + CtY[j]*CtY[j]) < (12.5 + Rad) && abs(CtZ[j]) < 20 + Rad)
                disk(CtX[j], CtY[j], CtZ[j], Rad, Apt, Dip, 0);
            echo(CtX[j], CtY[j], CtZ[j], Rad, Apt, Dip, 0);
        }
    } 
}
    
