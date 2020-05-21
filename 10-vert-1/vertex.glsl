precision highp float;

uniform float theta;

attribute vec2 position;

void main() {

  vec2 rotated = position.xy;

  rotated.x = position.x*cos(theta) - position.y*sin(theta);
  rotated.y = position.x*sin(theta) + position.y*cos(theta);

  //TODO: rotate position by theta radians about the origin
  gl_Position = vec4(rotated, 0.0, 1);
}
