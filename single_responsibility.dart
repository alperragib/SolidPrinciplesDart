void main() {
  var square = Square(5);
  print("Square area: ${square.area()}");

  var rectangle = Rectangle(5, 10);
  print("Rectangle area: ${rectangle.area()}");

  var circle = Circle(5);
  print("Circle area: ${circle.area()}");
}

abstract class Shape {
  double area();
}

class Square extends Shape {
  double a;

  Square(this.a);

  double area() {
    return a * a;
  }
}

class Circle extends Shape {
  double r;
  final pi = 3.1415;

  Circle(this.r);

  double area() {
    return pi * r * r;
  }
}

class Rectangle extends Shape {
  double a, b;

  Rectangle(this.a, this.b);

  double area() {
    return a * b;
  }
}

class ShapePainter {
  void paintSquare() {
    /* ... */
  }
  void paintCircle() {
    /* ... */
  }
  void paintRectangle() {
    /* ... */
  }
}

