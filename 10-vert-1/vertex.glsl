precision highp float;

uniform float theta;

attribute vec2 position;

void main() {
  // rotate position by theta radians about the origin
  float r = sqrt(position.x * position.x + position.y * position.y);
  float angle = atan(position.y, position.x) + theta;
  gl_Position = vec4(r*cos(angle), r*sin(angle), 0, 1.0);
}
