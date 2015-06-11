precision highp float;

uniform float theta;

attribute vec2 position;

void main() {
  // rotate position by theta radians about the origin
  mat2 rotation;
  rotation[0] = vec2(cos(theta), sin(theta));
  rotation[1] = vec2(-sin(theta), cos(theta));

  gl_Position = vec4((rotation*position), 0, 1.0);
}
