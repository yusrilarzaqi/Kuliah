class VolcanoRobot {
  String status;
  int speed;
  float temperature;

  void checkTemperature() {
    if (temperature > 660) {
      status = "returning home";
      speed = 5;
    }
  }

  void showAttributes() {
    System.out.println("Status: " + status);
    System.out.println("Speed: " + speed);
    System.out.println("Temmperature: " + temperature);
  }

  public static void main(String[] args) {
    VolcanoRobot dante = new VolcanoRobot();
    dante.status = "exploring";
    dante.speed = 2;
    dante.temperature = 510;

    dante.showAttributes();
    System.out.println("\nIncreasing Speed to 3.\n");
    dante.speed = 3;
    dante.showAttributes();
    System.out.println("");
    dante.temperature = 670;
    dante.showAttributes();
    System.out.println("\nChecking the temperature.\n");
    dante.checkTemperature();
    dante.showAttributes();
  }
}

// 77
