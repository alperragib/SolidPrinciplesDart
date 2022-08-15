void main() {
  final Square square = Square(3);
  print("Square width: ${square.width}, height: ${square.height}");

  square.width = 4;
  square.height = 8;

  print("Square width: ${square.width}, height: ${square.height}");

  // We were able to create a square with various side lengths.
  // We need to create two separate classes and not inherit them so that a false square is not created.
}

class Rectangle {
  double width;
  double height;
  Rectangle(this.width, this.height);
}

class Square extends Rectangle {
  Square(double length) : super(length, length);
}
