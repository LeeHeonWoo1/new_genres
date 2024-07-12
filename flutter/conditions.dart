// 제어문 (if, switch, for, while)

enum Status {
  approved,
  pending,
  rejected
}

void main(){
  int number = 2;
  
  // 분기문
  if (number % 3 == 0){
    print("3의 배수입니다.");
  }else if(number % 3 == 1){
    print('나머지가 1이다.');
  }else{
    print('맞는 조건이 없다.');
  }

  Status status = Status.approved;

  // switch - case 문
  switch (status) {
    case Status.approved:
      print("승인 상태입니다.");
      break;
    
    case Status.pending:
      print("대기 상태입니다.");
      break;
    
    case Status.rejected:
      print("거절 상태입니다.");
      break;
    
    default:
      print("알 수 없는 상태입니다.");

  print(Status.values);
  }

  // for 문
  for (int i = 0; i < 3; i++){
    print(i);
  }

  List<int> numberList = [3, 6, 9];

  for (int number in numberList){
    print(number);
  }

  int total = 0;

  while(total < 10){  // 10이랑 같거나 커지면 종료
    total += 1;
  }

  print(total);

  total = 0;

  do{
    total += 1;  // 10이랑 같거나 커져도 do 문 안에 있는 코드는 무조건 한번 실행
  } while (total < 10);
}