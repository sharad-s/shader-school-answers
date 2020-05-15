bool inBox(highp vec2 lo, highp vec2 hi, highp vec2 p) {

  //Test if the point p is inside the box bounded by [lo, hi]
  bvec2 less = bvec2(lessThan(lo, p));
  bvec2 greater = bvec2(greaterThan(hi, p));
  bool isLess = all(less);
  bool isGreater = all(greater);

  return all(bvec2(isLess, isGreater));
}


//Do not change this line or the name of the above function
#pragma glslify: export(inBox)
