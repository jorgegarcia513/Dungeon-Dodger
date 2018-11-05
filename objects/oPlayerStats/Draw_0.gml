/// @description Insert description here
// You can write your code in this editor
starting_x = 10;
starting_y = 10;
width = 5;
scale = 2;

draw_set_color(c_red);
draw_rectangle(starting_x, starting_y, scale * (starting_x + oPlayer.maxhp), starting_y + width, false);
draw_set_color(c_green);
draw_rectangle(starting_x, starting_y, scale * (starting_x + oPlayer.hp), starting_y + width, false);
draw_set_color(c_white);
draw_rectangle(starting_x, starting_y, scale * (starting_x + oPlayer.maxhp), starting_y + width, true);

starting_y = starting_y + width;

draw_set_color(c_red);
draw_rectangle(starting_x, starting_y, scale * (starting_x + oPlayer.max_magic), starting_y + width, false);
draw_set_color(c_blue);
draw_rectangle(starting_x, starting_y, scale * (starting_x + oPlayer.magic), starting_y + width, false);
draw_set_color(c_white);
draw_rectangle(starting_x, starting_y, scale * (starting_x + oPlayer.max_magic), starting_y + width, true);