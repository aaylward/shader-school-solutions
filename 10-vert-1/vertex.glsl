precision highp float;

uniform float theta;

attribute vec2 position;

// x = r cos(ø)
// y = r sin(ø)

// r = sqrt(potions.x * position.x + position.y * position.y)
// ø = arctan(position.y / position.x)

// position = vec4(r * cos(ø + theta), r * sin(ø + theta), 0, 1.0)

void main() {
  // rotate position by theta radians about the origin
  float r = sqrt(pow(position.x, 2.0) + pow(position.y, 2.0));
  float angle = atan(position.y / position.x) + theta;

  gl_Position = vec4(r*cos(angle), r*sin(angle), 0, 1.0);
}
