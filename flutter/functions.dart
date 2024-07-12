int addTwoNumbers(int a, int b) {  // positional parameter
  return a + b;
}

void main(){
  print(addTwoNumbers(1, 2));
  print(addTwoNumbers2(a: 2, b: 1));

  List<int> numbers = [1, 2, 3, 4, 5];

  // 일반 함수로 모든 값 더하기
  final allMembers = numbers.reduce((value, element){
    return value + element;
  });

  print(allMembers);

  // 람다 함수로 모든 값을 더하기
  final allMembers2 = numbers.reduce((value, element) => value + element);

  print(allMembers2);
}

// 다트의 함수에는 매개변수를 지정하는 방법으로 순서가 고정된 매개변수(포지셔널 파라미터)와 이름이 있는 매개변수(네임드 파라미터) 가 있다. 포지셔널 파라미터는 입력된 순서대로 
// 매개변수에 값이 지정된다. 예를들어 위 코드에서 int a가 int b보다 먼저 선언되었기 때문에 함수를 실행할 때도 1, 2 순서대로 a, b에 할당된다. 
// 두 번째 이름을 덧붙이는 매개변수는 순서와 관계없이 지정하고 싶은 매개변수의 이름을 이용해 값을 입력할 수 있다.

// 네임드 파라미터를 지정하려면 중괄호와 required 키워드를 사용해야 한다. 만약 네임드 파라미터에 기본값을 지정하려면 required를 생략하고 기본값을 할당하면 된다.
// 만약, 포지셔널 파라미터와 네임드 파라미터를 함께 사용하려면 포지셔널 파라미터가 먼저 정의되어야 한다.

int addTwoNumbers2({required int a, required int b,}) {  // named parameter
  return a + b;
}

// typedef 키워드는 함수의 시그니처를 정의하는 값으로 보면 된다. 시그니처는 반환값 타입, 매개변수 개수와 타입 등을 말한다.

typedef Operation = void Function(int x, int y);

void add(int x, int y){
  print("결과값 : ${x + y}");
}

void subtract(int x, int y){
  print("결과값 : ${x - y}");
}