/// Makes Text Disappear
image_alpha -= disappear_rate;
//color = color_list[irandom(array_length(color_list)-1)];
y += rise_amount;
	

image_xscale -= disappear_rate;
image_yscale = image_xscale;
if (image_alpha <= 0) instance_destroy();