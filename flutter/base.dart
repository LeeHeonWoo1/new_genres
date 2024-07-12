void main(){
  List<String> blackPinkMembers = ['리사', '지수', '제니', '로제'];

  print(blackPinkMembers);  // 리스트 출력
  print(blackPinkMembers[0]);  // 첫 번째 요소 출력
  print(blackPinkMembers[3]);  // 네 번째 요소 출력

  print(blackPinkMembers.length);  // 리스트 길이 출력

  blackPinkMembers[3] = "마이플레이스";  // 리스트 값 교체
  print(blackPinkMembers);

  blackPinkMembers.add("마이플레이스"); // 리스트 값 추가
  print(blackPinkMembers);

  final newList = blackPinkMembers.where(  // 배열을 순회하면서 조건에 맞는 값들만 반환
    (name) => name == '리사' || name == "지수"  // where 문을 거쳐 나오는 값은 iterable 객체이기에
  );

  print(newList.toList());  // 배열 형태로 바꾸려면 toList 사용

  final mapList = blackPinkMembers.map((e) => '블랙핑크 $e',);  // 객체를 순회하면서 값을 바꿀 수 있음
  print(mapList.toList());  // map도 마찬가지로 배열형태로 만드려면 toList 사용

  final reductList = blackPinkMembers.reduce((value, element) => value + ", " + element);  // 위 함수들과 달리 2개의 매개변수를 받으며
                                                                                          // 각 변수들에 배열 요소가 하나씩 들어감
  print(reductList);

  final allMembers = blackPinkMembers.fold<int>(0, (value, element)=> value + element.length);

  print(allMembers);

}

// add 함수 : List에 값을 추가할 때 사용되며 추가하고 싶은 값을 매개변수로 전달한다.
// where 함수 : List에 있는 값들을 순서대로 순회하면서 특정 조건에 맞는 값만 필터링할 때 사용한다.
// map 함수 : map함수는 List에 있는 값들을 순서대로 순회하면서 값을 변경할 수 있다. 
// reduct 함수 : 해당 함수 역시 List에 있는 값들을 순회하면서 매개변수에 입력된 함수를 실행한다.
// 다만, reduct함수는 순회할 때 마다 값을 쌓아가는 특징이 있다. 
// fold 함수 : fold함수는 동작 원리는 reduce와 똑같지만, 리스트를 구성하는 값들의 타입과 반환되는 리스트를 구성할 값들의 타입이 완전히 같아야 하는 reduce와는 다르게,
// 제약 없이 어떠한 값도 리턴할 수 있다.






































































































