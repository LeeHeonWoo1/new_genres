enum Status{
  approved,
  pending,
  rejected
}

// enum은 한 변수의 값을 몇 가지 옵션으로 제한하는 기능이다. 선택지가 제한적일 때 사용한다.
// String으로 완전 대체할 순 있지만 enum은 기본적으로 자동 완성이 지원되고 정확히 어떤 선택지가 존재하는지 정의할 수 있기에 유용하다.

void main(){
  Status status = Status.approved;
  print(status);

  Map<String, String> dictionary = {
    'Harry Potter' : "해리 포터",
    'Ron Weasley' : "론 위즐리",
    'Hermione Granger' : "헤르미온느 그레인저",
  };

  print(dictionary['Harry Potter']);
  print(dictionary['Hermione Granger']);

  print(dictionary.keys.toList());
  print(dictionary.values.toList());

  Set<String> blackPink = {"로제", "지수", "리사", "제니", "제니"};  // 중복되는 값 존재

  print(blackPink);
  print(blackPink.contains("로제"));  // 값이 있는지 확인하기
  print(blackPink.toList());

  List<String> blackPink2 = ['로제', '지수', '지수'];  // 배열 형태를
  print(Set.from(blackPink2));  // Set type으로 변환할 수 있음

  // Map 타입은 키와 값을 모두 반환받을 수 있다. 값을 반환받고 싶은 Map타입의 변수에 key와 value 게터를 실행하면 된다.
  // Set 타입은 중복을 허용하지 않는 자료형이기에 각 값의 유일 unique함을 보장받을 수 있다.
}