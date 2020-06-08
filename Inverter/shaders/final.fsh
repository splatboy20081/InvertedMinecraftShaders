#version 120

varying vec4 texcoord;
uniform sampler2D gcolor;

void main() {
	// Get the location of the current pixel on the screen.
	// point.x ranges from 0 on the left to 1 on the right.
	// point.y ranges from 0 at the top to 1 at the bottom.
	// Change the numbers to grab values from other parts of the screen.
	vec2 point = texcoord.st;
	
	// Get the color of the pixel pointed to by the point variable.
	// color.r is red, color.g is green, color.b is blue, all values from 0 to 1.
	vec3 color = texture2D(gcolor, point).rgb;

	// You can do whatever you want to the color. Here we're inverting it.
	color.r *= -1;
	color.g *= -1;
	color.b *= -1;
	
	// Here's where we tell Minecraft what color we want this pixel.
	gl_FragColor = vec4(color, 1.0);
};
