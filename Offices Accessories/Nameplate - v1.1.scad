Nameplate(10, "Jesus Is Lord !");

module Nameplate(fontsize, name)
{
    
    fonttype="Stencil:style Italic";
    translate([0,5,5])rotate([90,0,0])
        linear_extrude(5) text(name, fontsize, font=fonttype, true, $fn=80);    
            
    difference()
    {
        translate([0,-2,0])cube([fontsize*len(name)*0.7, 10, 8]);
        translate([0,-5,0])rotate([40,0,0])cube([fontsize*len(name)*0.6, fontsize+15, 10]);
    }
    
}