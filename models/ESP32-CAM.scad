use <FH_CONNECTOR.scad>

$fa = 1;
$fs = 0.04;

inter_raw_distance = 22.86;

board_color = [0.3,0.3,0.3];
board_width = 27;
board_length = 40;
board_depth = 2;
board_offset_y = -26.5;
board_offset_z = 11;

pin_color = [0.9,0.9,0.9];
pin_height = 6;
pin_width = 0.4;

camera_color = [0.1,0.1,0.1];
camera_base_width = 8.5;
camera_base_height = 2;
camera_height = 3;
camera_radius = 4;
camera_offset_y = 5;

camera_hole_color = [0.3,0.1,0.1];
camera_hole_height = 0.5;
camera_hole_radius = 1.5;

step = 2.54;

module pin() {
    color(pin_color)
        rotate([180,0,0])
        linear_extrude(height = pin_height)
            square(pin_width,center=true);

}

module raw_pins(pin_count) {
    for(i=[0:1:pin_count-1]) {
        translate([0,step * (i - (pin_count-1)/2),0])
        pin();
    }
}

module camera() {
    difference() {
        color(camera_color) {
            union() {
                translate([-camera_base_width/2,-camera_base_width/2,0]) 
                    cube([camera_base_width,camera_base_width,camera_base_height]);
                translate([0,0,camera_base_height]) 
                    linear_extrude(height = camera_height)
                        circle(camera_radius);
            }
        }
        color(camera_hole_color) {
            translate([0,0,camera_base_height+camera_height-camera_hole_height]) 
                linear_extrude(height = camera_hole_height+0.1)
                    circle(camera_hole_radius);
        }
    }
}

module board() {
    color(board_color)
        translate([-board_width/2,board_offset_y,board_offset_z])            
            cube([board_width,board_length,board_depth]);
    translate([0,camera_offset_y,board_offset_z+board_depth])
        camera();
}

board();

translate([-inter_raw_distance/2,0,0])
    raw(8);

translate([-inter_raw_distance/2,0,board_offset_z])
    raw_pins(8);
    
translate([inter_raw_distance/2,0,0])
    raw(8);

translate([inter_raw_distance/2,0,board_offset_z])
    raw_pins(8);
