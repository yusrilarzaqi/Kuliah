package PackIntervace;

public interface Phone {
  int MAX_VOLUME = 100, MIN_VOLUME = 0;

  void powerOn();

  void powerOff();

  void volumeUp();

  void volumeDown();
}
