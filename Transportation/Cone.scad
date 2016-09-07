
cone();
module cone(diameter = 30, height=70)
{   
    cylinder(height, diameter, diameter/3, true);
    translate([0,0,-height/2])cube([diameter*2,diameter*2,5], true);
}
