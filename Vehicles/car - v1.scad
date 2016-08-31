use <wheel.scad>
car();

module car(length = 100, breadth = 60, height = 50)
{
    w_width=10;
    w_diameter=25;
    body(length, breadth, height);//, w_diameter);
    drawWheels(w_width, w_diameter, length, breadth);
}

module body(length, breadth, height)//, w_diameter)
{
    difference()
    {
        union()
        {
            translate([0,0,height/2])cube([length,breadth,height/2], true);
            //translate([30,0,height/2])cube([40,60,height/2], true);
        }
        //translate([40,0,50])rotate([0,45,0]) cube([60,60,30]);
    }
    difference()
    {
        //translate([0,0,height/2])cube([length, breadth, height], true);
        //translate([0,0,height/2+2])cube([length-3, breadth-3, height], true);
//      translate([length/3,breadth/2,0]) rotate([90,0,0])cylinder(breadth/4, w_diameter/2+2, w_diameter/2+2, true);
//      translate([length/3,-breadth/2,0]) rotate([90,0,0])cylinder(breadth/4, w_diameter/2+2, w_diameter/2+2, true);
//      translate([-length/3,breadth/2,0]) rotate([90,0,0])cylinder(breadth/4, w_diameter/2+2, w_diameter/2+2, true);
//      translate([-length/3,-breadth/2,0]) rotate([90,0,0])cylinder(breadth/4, w_diameter/2+2, w_diameter/2+2, true);
    }
    
}
module drawWheels(width, diameter, length, breadth)
{
    b_offset = breadth/2+width;
    l_offset = length/3;
    translate([l_offset, 0, 0]) rotate([90,0,0]) cylinder(breadth+width*2, 1, 1, true);
    translate([-l_offset, 0, 0]) rotate([90,0,0]) cylinder(breadth+width*2, 1, 1, true);
    
    translate([l_offset, b_offset, 0]) rotate([90,0,0]) wheel(width, diameter);
    translate([l_offset, -b_offset, 0]) rotate([90,0,0]) wheel(width, diameter);
    translate([-l_offset, b_offset, 0]) rotate([90,0,0]) wheel(width, diameter);
    translate([-l_offset, -b_offset, 0]) rotate([90,0,0]) wheel(width, diameter);
}