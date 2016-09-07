use <headlight.scad>
trafficlight();

module trafficlight(length=60)
{
    color("Blue")hull()
    {
        translate([-length/2,0,0])cylinder(20,20,20, true);
        translate([+length/2,0,0])cylinder(20,20,20, true);
    }
    translate([-length/2,0,10]) color("Red")headlight();
    translate([0,0,10]) color("Orange")headlight();
    translate([+length/2,0,10]) color("Green") headlight();
    translate([length,0,0]) rotate([0,90,0]) color("Black") cylinder(120,5,5, true);
    translate([length*2,0,0]) rotate([0,90,0]) color("Black") cylinder(10,20,30, true);
}

