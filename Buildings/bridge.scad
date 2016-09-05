

bridge();

module bridge()
{
	road();
	translate([+40,0,-17])pillar();
	translate([0,0,-17])pillar();
	translate([-40,0,-17])pillar();
}

module road()
{	
	cube([100,30,10], true);
	translate([0,14,7.5])cube([100,2,7], true);
	translate([0,-14,7.5])cube([100,2,7], true);
}

module pillar()
{
	cylinder(20, 5, 5, true);
	translate([0,0,10])	cylinder(5, 6, 8, true);
	translate([0,0,-10])	cylinder(5, 8, 6, true);
}