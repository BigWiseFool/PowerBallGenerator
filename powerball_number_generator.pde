int [] arr;
int powerball;

void setup() {
  arr = new int [7];
}

void generateArr() {
  for (int i = 0; i < 7; i ++) {
    arr[i] = round(random(1, 35));
    for (int j = 0; j < i; j ++) {
      if (arr[i] == arr[j]) {
        i--;
      }
    }
    println("the winning numbers are :" + arr[i]);
  }
}

void generatePowerball() {
  int p = round(random(1, 20));
  powerball = p;
  println("the winning powerball is :" + powerball);
}

void draw() {
  generateArr();
  generatePowerball();
}
