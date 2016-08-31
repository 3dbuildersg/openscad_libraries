//include <Nameplate.scad>

PenHolder(80, 30, "jason");

module PenHolder(height, radius, name)
{
    fontsize=10;
    difference()
    {
        cylinder(height, radius, radius, $fn=100);
        translate([0,0,5]) cylinder(height, radius-2, radius-2, $fn=100);
        translate([radius-5,0,len(name)*.75*fontsize+15]) rotate([0,90,0])linear_extrude(5) text(name,fontsize, true, $fn=80);   
    }
    
}