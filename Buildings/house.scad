house();

module house()
{
    base();
    roof();
}

module base()
{
    difference()
    {
        walls();   
        door();
        windows();
    }
}

module walls()
{
    difference()
    {
        cube([50,80,50], true);
        cube([40,70,55], true);
        translate([20,10,-25]) cube([10,15,30]); // Door
        translate([20,-25,-5]) cube([10,15,15]); // Front window
        translate([0,30,-5]) cube([15,10,15]);   // Left window
    }
}

module windows()
{
}

module door()
{
    
}
module roof()
{
    //translate([0,0,50])rotate([0,-90,0])cylinder(60,50,50,$fn=3, true);
}