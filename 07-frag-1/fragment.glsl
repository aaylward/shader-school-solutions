precision highp float;

#define CIRCLE_COLOR    vec4(1.0, 0.4313, 0.3411, 1.0)
#define OUTSIDE_COLOR   vec4(0.3804, 0.7647, 1.0, 1.0)
#define CENTER          vec2(256.5)
#define RADIUS          128.0

bool insideCircle(vec4 point, vec2 center, float radius) {
  return length(point.xy - center) < radius;
}

void main() {
  if (insideCircle(gl_FragCoord, CENTER, RADIUS)) {
    gl_FragColor = CIRCLE_COLOR;
  } else {
    gl_FragColor = OUTSIDE_COLOR;
  }
}
