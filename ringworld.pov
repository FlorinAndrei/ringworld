#include "shapes.inc"
#include "colors.inc"
#include "textures.inc"
#include "stones.inc"

#declare r = 1.5e5;
#declare w = 1.6e3;
#declare tall = 2;

#declare sunr = 7e2;

cylinder {
	<-1 * w / 2, 0, 0>, <w / 2, 0, 0>, r
	open
	texture {
		T_Stone25 scale 1
		//pigment {color rgb <0.54, 0.82, 1>}
	}
}

#declare Sun = sphere {
	<0, 0, 0>, sunr
	texture {
		pigment {color rgb <1, 1, 0.6>}
		finish {ambient 1 diffuse 1}
	}
}

light_source {
	<0, 0, 0>
	color White
	looks_like { Sun }
}

sky_sphere {
	pigment {
		bozo
		color_map {
			[0.0 White*3]
			[0.2 Black]
			[1.0 Black]
		}
		scale 0.0009
	}
}

camera {
	location <-0.1*r, 0, -1.6*r>
	right 16/9*y
	direction <0, 0, 1>
	sky <-1, 0, 0>
	look_at <0, 0, 0>
}
