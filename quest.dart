import 'dart:async';

void main() {
  const workMins = 25;
  const shortBreakMins = 5;
  const longBreakMins = 15;
  int cycle = 0;

  void startTimer(int minutes, String type) {
    int remaining = minutes * 60;
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (remaining > 0) {
        remaining--;
        print("flutter: ${Duration(seconds: remaining).toString().substring(2, 7)}");
      } else {
        timer.cancel();
        if (type == "work") {
          cycle++;
          startTimer(cycle % 4 == 0 ? longBreakMins : shortBreakMins, "break");
        } else {
          startTimer(workMins, "work");
        }
      }
    });
  }

  startTimer(workMins, "work");
}
