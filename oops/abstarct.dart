abstract class Vechile {
  void start();
  void stop();
}

class Baleno extends Vechile {
  @override
  void start() {
    print('Baleno Start');
  }

  @override
  void stop() {
    print('Baleno Stop');
  }
}

class MarutiSuzuki extends Vechile {
  @override
  void start() {
    print('Start Maruti Suzuki ');
  }

  @override
  void stop() {
    print('Stop Maruti Suzuki ');
  }
}

void main(List<String> args) {
  MarutiSuzuki marutiSuzuki = MarutiSuzuki();
  Baleno baleno = Baleno();

  marutiSuzuki.start();
  baleno.start();
  marutiSuzuki.stop();
  baleno.stop();
}
