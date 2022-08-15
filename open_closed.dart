void main() {
  var square = Square(5);
  var rectangle = Rectangle(5, 10);
  var circle = Circle(5);

  print("Square area: ${AreaCalculator().calculate(square)}");
  print("Rectangle area: ${AreaCalculator().calculate(rectangle)}");
  print("Circle area: ${AreaCalculator().calculate(circle)}");
}

abstract class Area {
  const Area();

  double computeArea();
}

class Square extends Area {
  final double a;
  const Square(this.a);

  @override
  double computeArea() {
    return a * a;
  }
}

class Rectangle extends Area {
  final double a;
  final double b;
  const Rectangle(this.a, this.b);

  @override
  double computeArea() {
    return a * b;
  }
}

class Circle extends Area {
  final double r;
  const Circle(this.r);
  final pi = 3.1415;

  @override
  double computeArea() {
    return r * r * pi;
  }
}

class AreaCalculator {
  double calculate(Area shape) {
    return shape.computeArea();
  }
}
