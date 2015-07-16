#include "stdio.h"
#include "stdlib.h"

int main(int argc, char const *argv[]) {
  float lat = atof(argv[6]);
  float longi = atof(argv[5]);
  float cidade[4];

  for (int i = 1;  i< 5; i++) {
    cidade[i-1]=atof(argv[i]);
  }

  if ((lat <= cidade[3]) && (lat >= cidade[1]) && (longi <= cidade[2]) && (longi >= cidade[0])) {
    printf("1\n");
  }else{
    printf("0\n");
  }

  return 0;
}
