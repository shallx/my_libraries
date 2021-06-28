int main(){
  Timer _timer;
  String seconds = "00";
  String minutes = "00";
}
Text("$minutes: $seconds");

void startTime() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (totalTime > 0) {
        setState(() {
          totalTime--;
          seconds = (totalTime % 60).toString();
          minutes = (totalTime ~/ 60).toString();
          if (seconds.length == 1) seconds = "0$seconds";
          if (minutes.length == 1) minutes = "0$minutes";
        });
      } else {
        _timer.cancel();
      }
    });
  }