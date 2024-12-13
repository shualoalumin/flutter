
import 'dart:async';
  int session = 0; 
  const workMins = 25; 
  const shortBreakMins = 5; 
  const longBreakMins = 15;

Timer? activeTimer;

void main() {
    startTimer(workMins, 'work');  // 첫 번째 세션을 위한 타이머 시작
}

// 타이머 함수
void startTimer(int minutes, String type) {
  activeTimer?.cancel();   // 기존 타이머가 있다면 취소하여 중복 실행 방지

  int remaining = minutes * 60;
  activeTimer = Timer.periodic(Duration(seconds: 1), (timer) {    // 매 남은 초 실행
    if (remaining > 0) { 
        remaining--;
        print('flutter: ${Duration(seconds: remaining).toString().substring(2,7)}');  // Duration.toString() 결과 H:MM:SS.mmmmmm 에서 substring(2,7)로 H:MM:SS까지 추출
    } 
      else {
      timer.cancel();
      if (type == 'work') {
        session++;
        startTimer(session % 4 == 0 ? longBreakMins : shortBreakMins, 'break');
      } else {
        startTimer(workMins, 'work');
      }
    }
  });
}







// main()
//   │
//   ├─ 상수 정의
//   │   ├─ workMins (25분)
//   │   ├─ shortBreakMins (5분)
//   │   └─ longBreakMins (15분)
//   ├─ 변수 정의
//   │   └─ session (0부터 시작)
//   │
//   └─ timer() 함수
//       │
//       ├─ 매개변수
//       │   ├─ minutes: 타이머 시간
//       │   └─ type: "work" 또는 "break"
//       │
//       └─ Timer.periodic
//           │
//           ├─ 매 초마다 실행
//           │   └─ 남은 시간 출력
//           │
//           └─ 타이머 종료 시
//               ├─ work 종료 → break 시작
//               └─ break 종료 → work 시작


