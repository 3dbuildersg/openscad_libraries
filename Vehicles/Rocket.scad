height=100;
diameter1=30;
diameter2=diameter1/2;
offset=diameter1/2+diameter2/2;
subRocket=.5;
cylinder(height, diameter1, diameter1);

translate([offset,offset,0])cylinder(height*subRocket,diameter2,diameter2);
translate([offset,-offset,0])cylinder(height*subRocket,diameter2,diameter2);
translate([-offset,offset,0])cylinder(height*subRocket,diameter2,diameter2);
translate([-offset,-offset,0])cylinder(height*subRocket,diameter2,diameter2);
