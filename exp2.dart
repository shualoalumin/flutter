import 'dart:async';

int session = 0;
const workSecs = 5;       // 작업 시간 (5초)
const shortBreakSecs = 5; // 짧은 휴식 시간 (5초)
const longBreakSecs = 5;  // 긴 휴식 시간 (5초)

Timer? activeTimer;

void main() {
  startTimer(workSecs, 'work');  // 첫 번째 세션을 위한 타이머 시작
}

// 타이머 함수
void startTimer(int seconds, String type) {
  activeTimer?.cancel();   // 기존 타이머가 있다면 취소하여 중복 실행 방지

  int remaining = seconds;
  activeTimer = Timer.periodic(Duration(seconds: 1), (t) {    // 매 초 실행
    if (remaining > 0) {
      remaining--;
      print('flutter: ${remaining}초 남음');
    } else {
      t.cancel();
      if (type == 'work') {
        session++;
        print('작업 세션 종료. 현재 세션: $session');
        // 세션이 4의 배수일 때 긴 휴식, 아니면 짧은 휴식
        startTimer(session % 4 == 0 ? longBreakSecs : shortBreakSecs, 'break');
      } else {
        print('휴식 종료.');
        startTimer(workSecs, 'work');
      }
    }
  });
}

// main()
//   │
//   ├─ 상수 정의
//   │   ├─ workSecs (5초)
//   │   ├─ shortBreakSecs (5초)
//   │   └─ longBreakSecs (5초)
//   ├─ 변수 정의
//   │   └─ session (0부터 시작)
//   │
//   └─ startTimer() 함수
//       │
//       ├─ 매개변수
//       │   ├─ seconds: 타이머 시간
//       │   └─ type: "work" 또는 "break"
//       │
//       └─ Timer.periodic
//           │
//           ├─ 매 초마다 실행
//           │   └─ 남은 시간 출력
//           │
//           └─ 타이머 종료 시
//               ├─ type이 'work'인 경우
//               │   ├─ session 증가
//               │   └─ 다음 타이머 설정 (longBreakSecs 또는 shortBreakSecs)
//               └─ type이 'break'인 경우
//                   └─ workSecs로 타이머 재설정