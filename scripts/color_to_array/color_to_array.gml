function color_to_array(){
/// @description color_to_array( color);
/// @param color
// Converts GML color constants to rgb float array

var hex = [];
var ret = [];
var quotient = argument0;

// Convert to hex
for( var i = 0; quotient != 0; ++i){
	hex[i] = quotient % 16;
	quotient = floor( quotient / 16);
}

// Make sure this is a color code
while( array_length( hex) < 6){
	hex[array_length(hex)] = 0;
}
if( array_length( hex) > 6){
	show_error( "Unknown color: " + string( argument0), true);
	return -1;
}

// Convert hex to RGB
for( var i = 0; i < 3; ++i){
	ret[i] = hex[i * 2 + 1] * 16 + hex[i * 2];
	ret[i] /= 255; // Change from 255 to float
}

return ret;
}