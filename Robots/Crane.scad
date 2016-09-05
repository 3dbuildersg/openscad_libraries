// Filename : Crane.scad
// Version  : v1.0
// Modified : 3 Sept 2016
// Author   : Jason Yeo
//////////////////////////////////////
// Basic car frame. (Base class)
//////////////////////////////////////
crane();

module crane()
{
    mast();
    boom();
}

module boom()
{
    height=15;
    for(i=[-2:5])
        translate([i*height,0,5*height]) rotate([0,90,0])block(10,height);
}
module mast()
{
    height=15;
    for(i=[0:6])
        translate([0,0,i*height]) block(10,height);
}
  
module block(size=10, height=15)
{
    difference()
    {
        cube([size,size,height],true);
        rotate([-90,0,0]) cylinder(size+2,4,4,true,$fn =3);
        rotate([0,90,0]) cylinder(size+2,4,4,true,$fn =3);
        cube([size-2,size-2,height+2],true);
        //cube([size+2,size-2,height-2],true);
        //cube([size-2,size+2,height-2],true);
    }
}