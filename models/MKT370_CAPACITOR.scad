
$fa = 1;
$fs = 0.04;

body_color = [0.8,0.8,0.1];
body_width = 3.5;
body_height = 8;
body_length = 7.2;

inter_pin_distance = 5.08;

pin_color = [0.9,0.9,0.9];
pin_height = 3;
pin_radius = 0.22;

module pin() {
    color(pin_color)
        rotate([180,0,0])
        linear_extrude(height = pin_height)
            circle(pin_radius);

}

color(body_color)
    translate([-body_length/2,-body_width/2,0])
        cube([body_length,body_width,body_height]);

translate([inter_pin_distance/2,0,0])
    pin();

translate([-inter_pin_distance/2,0,0])
    pin();
