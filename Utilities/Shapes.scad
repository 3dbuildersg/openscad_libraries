
dome();
ring();

module dome(d1=20)
{
	color("Blue") translate([0,0,-d1/4])rotate([180,0,0])rotate_extrude() {
		difference() {
			circle(d=d1);
			translate([-d1/2,0,0])square([d1,d1/2]);
			translate([0,-d1/2,0])square([d1/2,d1]);
		}
	}
}

module ring(d1=20, thick=5)
{
	color("Orange")translate([0,0,-thick/2]) linear_extrude(thick) difference()
	{
		circle(d=d1*1.2);
		circle(d=d1);
	}
}
