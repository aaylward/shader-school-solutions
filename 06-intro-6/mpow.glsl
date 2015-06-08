mat2 matrixPower(highp mat2 m, int n) {
  //Raise the matrix m to nth power

  const highp int MAX = 100;
  
  mat2 result = mat2(1.0);
  for (int i=0; i<MAX; i++) {
    if (i == n) break;
    result *= m;
  }

  return result;
}

//Do not change this line or the name of the above function
#pragma glslify: export(matrixPower)
