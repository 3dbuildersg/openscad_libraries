//difference()
//{
//    translate ([-15,-15,-15])cube([30,30,30]);
//    translate ([-20,-10,-10])cube([40,20,20]);
//    translate ([-10,-20,-10])cube([20,40,20]);
//    translate ([-10,-10,-20])cube([20,20,40]);
//}

difference()
{
    translate ([-15,-15,-15])cube([30,30,30]);
    cylinder(h=40, r=10, center=true, $fn=100);
    //translate ([-10,-20,-10])cube([20,40,20]);
    //translate ([-10,-10,-20])cube([20,20,40]);
}