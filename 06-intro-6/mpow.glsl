mat2 matrixPower(highp mat2 m, int n) {
  
  //Raise the matrix m to nth power
  highp mat2 res = m;
  for (int i=1;i<16;i++){
    if (i < n) {
    res = res * m;
    }
  }

  // highp mat2 res = m;
  // for (int i=1;i<16;i++){
  //   if (i<n) {
  //     res = res * m;
  //   }
  // }


  return res;  
  // return mat2(1);  

}

//Do not change this line or the name of the above function
#pragma glslify: export(matrixPower)