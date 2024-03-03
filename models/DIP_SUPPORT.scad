
$fa = 1;
$fs = 0.04;

HALF_PIN_COUNT = 12;
WIDTH_IN_STEPS = 6;

step = 2.54;
body_color = [0.1,0.1,0.1];
pin_color = [0.9,0.9,0.9];
body_length_x = 3.2;
body_length_z = 2.8;
junction_height = 1.5;
hole_radius = 0.7;
hole_depth = 0.7;
pin_height = 3;
pin_radius = 0.22;

module pin() {
    difference() {
        color(body_color)
            translate([-body_length_x/2,-step/2,0])
                cube([body_length_x,step,body_length_z]);
        color(pin_color)
            translate([0,0,body_length_z-hole_depth])
                linear_extrude(height = hole_depth+0.1)
                    circle(hole_radius);
    }
    color(pin_color)
        rotate([180,0,0])
        linear_extrude(height = pin_height)
            circle(pin_radius);

}

module raw(pin_count) {
    for(i=[0:1:pin_count-1]) {
        translate([0,-step*i,0])
        pin();
    }
}

// Centered arround pin 0 (the most top left pin)
module support(half_pin_count, width_in_steps) {
    raw(half_pin_count);
    translate([width_in_steps*step,0,0])
        raw(half_pin_count);
    
    color(body_color)
        translate([width_in_steps*step/2,-step/2,body_length_z/2])
            cube([width_in_steps*step-body_length_x,step,junction_height],center=true);
    
    color(body_color)
        translate([width_in_steps*step/2,-step*(half_pin_count-1),body_length_z/2])
            cube([width_in_steps*step-body_length_x,step,junction_height],center=true);
}

// Centered arround pin center
module centered_support(half_pin_count, width_in_steps) {
    //support(half_pin_count, width_in_steps);
    translate([-width_in_steps*step/2,step*(half_pin_count-1)/2,0])
    support(half_pin_count, width_in_steps);
}

centered_support(HALF_PIN_COUNT, WIDTH_IN_STEPS);
