
$fa = 1;
$fs = 0.04;

body_color = [0.1,0.1,0.1];
body_width = 9;
body_depth = 6;
body_height = 9.4;

inter_pin_distance = 2.54;

pin_color = [0.9,0.9,0.9];
pin_width = 0.5;
pin_depth = 0.75;
pin_height = 4;

lever_color = [0.8,0.8,0.9];
lever_height = 14;
lever_offset_z = 6;
lever_radius = 1.25;
lever_angle = 12;

module pin() {
    color(pin_color)
        translate([-pin_width/2,-pin_depth/2,-pin_height])
        linear_extrude(height = pin_height)
            square([pin_width,pin_depth]);

}

color(body_color)
    translate([-body_width/2,-body_depth/2,0])
        cube([body_width,body_depth,body_height]);

color(lever_color)
    translate([0,0,lever_offset_z])
    rotate([0,lever_angle,0])
    linear_extrude(height = lever_height)
        circle(lever_radius);

for(i=[-1:1:1]) {
    translate([inter_pin_distance*i,0,0])
        pin();
}

