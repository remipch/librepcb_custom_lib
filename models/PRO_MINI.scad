use <FH_CONNECTOR.scad>

$fa = 1;
$fs = 0.04;

step = 2.54;

inter_raw_distance = 6*step;

raw_pin_count = 12;

board_color = [0.1,0.2,0.6];
board_width = 7*step;
board_length = 13*step;
board_depth = 1.5;
board_offset_y = -raw_pin_count*step/2;
board_offset_z = 11;

button_color = [0.6,0.2,0.2];
button_width = 4;
button_length = 2;
button_depth = 1;
button_offset_y = -10;

pin_color = [0.9,0.9,0.9];
pin_height = 6;
pin_width = 0.4;

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

module board() {
    color(board_color)
        translate([-board_width/2,board_offset_y,board_offset_z])            
            cube([board_width,board_length,board_depth]);
    color(button_color)
        translate([-button_width/2,button_offset_y-button_length/2,board_offset_z+board_depth])            
            cube([button_width,button_length,button_depth]);
}

board();

translate([-inter_raw_distance/2,0,0])
    raw(raw_pin_count);

translate([-inter_raw_distance/2,0,board_offset_z])
    raw_pins(raw_pin_count);
    
translate([inter_raw_distance/2,0,0])
    raw(raw_pin_count);

translate([inter_raw_distance/2,0,board_offset_z])
    raw_pins(raw_pin_count);
