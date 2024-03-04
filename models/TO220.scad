
$fa = 1;
$fs = 0.04;

body_color = [0.1,0.1,0.1];
body_width = 10.16;
body_depth = 4.4;
body_height = 8.7;

offset_y = -1.7;
offset_z = 3.7;

dissipator_color = [0.8,0.8,0.8];
dissipator_depth = 1.3;
dissipator_height = 6.35;
dissipator_hole_radius = 1.9;

pin_color = [0.9,0.9,0.9];
pin_count = 3;
pin_width = 0.8;
pin_depth = 0.38;
pin_height = 14;
pin_inter_distance = 2.54;

module pin() {
    color(pin_color)
        translate([-pin_width/2,-pin_depth/2,-pin_height])
            cube([pin_width, pin_depth, pin_height]);

}

module dissipator() {
    difference() {
        color(dissipator_color)
            cube([body_width,dissipator_depth,dissipator_height]);

        translate([body_width/2,-dissipator_depth,dissipator_height/2])
            rotate([-90,0,0])
                color(dissipator_color)
                    linear_extrude(height = dissipator_depth*3)
                        circle(dissipator_hole_radius);
    }
}

translate([-body_width/2,offset_y,offset_z]) {
    color(body_color)
        cube([body_width,body_depth,body_height]);

    translate([0,body_depth-dissipator_depth,body_height])
        dissipator();
}

for(i=[0:1:pin_count-1]) {
    translate([pin_inter_distance * (i - (pin_count-1)/2),0,offset_z])
        pin();
}
