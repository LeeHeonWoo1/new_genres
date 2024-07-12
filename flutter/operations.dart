// 연산자

void main(){
  double number = 2;

  print(number + 2);
  print(number - 2);
  print(number * 2);
  print(number / 2);
  print(number % 3);

  number++;
  number--;
  number += 2;
  number -= 2;
  number *= 2;
  number /= 2;

  double? number1 = 1;  // 타입 뒤에 ?를 명시하면 null값을 가질 수 있음을 의미함. 그렇지 않고 null을 할당하면 에러

  double? number2;
  print(number2);
  number2 ??=3;  // ??를 사용하면 기존 값이 null일 때만 저장됨
  print(number2);

  number2 ??=4;  // 위에서 이미 3을 할당했기에 4로 할당되지 않음
  print(number2);

  print(number is int); // 비교 연산자
  print(number is String);
  print(number is! int); // !는 반대를 의미함
  print(number is! String); // 이외에도 and 는 &&, or는 ||로 작성
}