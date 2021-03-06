vec2 iterate(vec2 z, vec2 c) {
  return vec2(z.x * z.x - z.y * z.y, 2.0 * z.x * z.y) + c;
}

bool inside(vec2 p) {
  return length(p) < 2.0;
}

bool mandelbrot(highp vec2 c) {

  //Test if the point c is inside the mandelbrot set after 100 iterations
  vec2 z = vec2(0.0);
  for (int i=0; i<100; ++i) {
    z = iterate(z, c);
  }

  return inside(z);
}


//Do not change this line or the name of the above function
#pragma glslify: export(mandelbrot)
