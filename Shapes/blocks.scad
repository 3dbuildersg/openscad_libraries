Cross_Block();
//T_Block();
//translate([50,0,0]) L_Block();
//Block();

module T_Block()
{
    union()
    {
        Block1(3);
        translate([10,0,0]) Block2(4);
    }
}
module L_Block()
{
    union()
    {
        Block1(4);
        Block2(2);
    }
}
module Cross_Block()
{
    Block1(3);
    translate([10,-10,0])Block2(4);
}
module Block2(length)
{
    for(i=[0:length-1])
        translate([0,10*i,0]) Block();
}

module Block1(length)
{
    for(i=[0:length-1])
        translate([10*i,0,0]) Block();
}

module Block()
{
    difference() 
    {   
        cube([10,10,10], true);
        shape();
        rotate([0,90,0]) shape();
        rotate([90,90,0]) shape();
    }
}

module shape()
{
    cylinder(15,4,4,true,$fn =20);
    //cube([7,7,12], true);
    //cylinder(15,4,4,true,$fn =3);
    
}