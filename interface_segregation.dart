void main() {
  var human = Human();
  var robot = Robot();

  print("Human");
  human.work();
  human.sleep();
  
  print("Robot");
  robot.work();
}

abstract class Worker {
  void work();
}

abstract class Sleeper {
  void sleep();
}

class Human implements Worker, Sleeper {
  @override
  void work() {
    print("I work 8 hours a day on weekdays.");
  }

  @override
  void sleep() {
    print("I need 7 hours of sleep every night.");
  }
}

class Robot implements Worker {
  @override
  void work() {
    print("I always work");
  }
}
