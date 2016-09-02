//include <Nameplate.scad>
fontsize=10;
name = "Jason";
PenHolder(80, 30, "Adniel");


module PenHolder(height, radius, name)
{
    difference()
    {
        cylinder(height, radius, radius, $fn=100);
        translate([0,0,5]) cylinder(height, radius-2, radius-2, $fn=100);
    translate([radius/2,-radius/2,10])rotate([90,0,90])linear_extrude(15) text(name,fontsize, true, $fn=80); 
    }
    //translate([radius-5,0,(len(name)+1)*.75*fontsize]) 
}