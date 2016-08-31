//include <Nameplate.scad>

PenHolder(80, 30, "FCBC");

module PenHolder(height, radius, name)
{
    fontsize=10;
    difference()
    {
        cylinder(height, radius, radius, $fn=100);
        translate([0,0,5]) cylinder(height, radius-2, radius-2, $fn=100);
        translate([radius-5,0,(len(name)+1)*.75*fontsize]) rotate([0,90,0])linear_extrude(5) text(name,fontsize, true, $fn=80);   
    }
    
}