int fact(int f){
   if (f == 1 || f <= 0) {
    return 1;
  } else {
    int result = 1;
    for (int i = 2; i <= f; i++) {
      result *= i;
    }
    return result;
  }
}
