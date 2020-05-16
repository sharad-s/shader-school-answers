precision highp float;

#define CIRCLE_COLOR    vec4(1.0, 0.4313, 0.3411, 1.0)
#define OUTSIDE_COLOR   vec4(0.3804, 0.7647, 1.0, 1.0)

void main() {

  //TODO: Replace this with a function that draws a circle at (256.5,256.5) with radius 128
  const float radius = 128.0;
  const float x = 256.0;
  const float y = 256.0;
  
  float eqLeft = (gl_FragCoord.x - x) * (gl_FragCoord.x - x) + (gl_FragCoord.y - y) * (gl_FragCoord.y - y);

  if(eqLeft < radius * radius) {
    gl_FragColor = CIRCLE_COLOR; 
  } else {
    gl_FragColor = OUTSIDE_COLOR;
  }
}