
$fa = 1;
$fs = 0.04;

pin_count = 6;

step = 2.54;

body_color = [0.1,0.1,0.1];

body_width = 2.4;
body_height = 8;

hole_color = [0.4,0.4,0.4];
hole_width = 1.8;
hole_depth = 5;

pin_color = [0.9,0.9,0.9];
pin_height = 3;
pin_width = 0.4;

// centered pin
module pin() {
    difference() {
        color(body_color)
            translate([-body_width/2,-step/2,0])
                cube([body_width,step,body_height]);
        color(hole_color)
            translate([-hole_width/2,-hole_width/2,body_height-hole_depth])
                linear_extrude(height = hole_depth+0.1)
                    square(hole_width);
    }
    color(pin_color)
        rotate([180,0,0])
        linear_extrude(height = pin_height)
            square(pin_width,center=true);

}

module raw(pin_count) {
    for(i=[0:1:pin_count-1]) {
        translate([0,step * (i - (pin_count-1)/2),0])
        pin();
    }
}

raw(pin_count);
