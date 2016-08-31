Nameplate(10, "Merry Christmas");

module Nameplate(fontsize, name)
{
    fonttype="Stencil:style Italic";
    linear_extrude(5) text(name, fontsize, font=fonttype, true, $fn=80);    
    translate([0,-2,0])cube([fontsize*len(name)*0.7, fontsize+2, 2]);
}