const double WIDTH_FIGMA = 360;
const double HEIGHT_FIGMA = 640;

double convertHeight(double height, double screenHeight) {
  double percent = ((height * 100) / HEIGHT_FIGMA) / 100;

  return screenHeight * percent;
}

double convertWidth(double width, double screenWidth) {
  double percent = ((width * 100) / WIDTH_FIGMA) / 100;

  return screenWidth * percent;
}
