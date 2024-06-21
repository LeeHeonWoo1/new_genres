# Recommendation System !
Recommendation System은 종류가 많은 편이다. 하나씩 살펴보자면,

## Demographic Filtering(인구 통계학적 접근법)
**Demographic Filtering**은 유저에 대한 인구통계학적인 정보를 이용한다. 나이, 성별, 인종 등을 고려하여 인구 통계학적 집단을 정의해 둔 후, 타깃 유저를 이 중 한 집단으로 분류하는 것이다. 비슷한 인구 통계학적 특성을 보이는 사람들은 취향도 비슷할 것이라 가정하는 셈이다.

하지만 요즘 널리 사용되는 Content-based Filtering, Collaborate Filtering에 비해 Demographic Filtering는 사용되지 않는 편이다.

가장 큰 이유는 input이 되는 <span style="background-color: #F7FF00;">인구 통계학적 정보를 얻기가 힘들다는 점</span>에 있다. **개인정보보호**가 중요한 요즘, 나이, 직업, 사는 곳 등을 사용하는 것은 다소 위험성이 존재한다. 또한, 타겟이 되는 유저를 각각의 개성을 지닌 **개인**의 개념 보다는 **집단**의 개념으로 생각하기에 비교적 광범위한 추천 결과를 내놓게 된다.

## Content-based Filtering(컨텐츠 기반 필터링)
추천 시스템에서는 user와 item이 중요한 역할을 차지한다. `Demographic Filtering`이 **user의 정보를 활용하는 방법론**이었다면, `Content-based Filtering`은 **item에 대한 정보를 활용하는 방법론**이다.

해당 방법론의 경우 장단점을 알아보자면,

- 장점
    + Demographic Filtering이 **유저 집단**의 취향을 고려했다면, Content-based Filtering은 **개인의 취향**을 존중한다. 조금이나마 더 개인화된 추천이 가능하다는 장점이 있다.
    + 새로운 유저 B가 등장해도 A에게 추천을 하기 위해 작업해두었던 **item vector들을 그대로 재활용**할 수 있다는 측면에서, **유저 확장성**이 좋다.
- 단점
    + 유저에게 색다른 아이템을 추천할 수 없고, 매번 비슷한 결의 추천만이 가능하다. **새로운 발견**의 측면에서는 뚜렷한 단점을 가진다.

## Collaborative Filtering(협업 필터링)
협업 필터링의 경우, `특정 user와 비슷한 사람들의 의견을 참고한다`는 핵심 아이디어를 기반으로 연구되고 있으며, 해당 방법론 안에서도 많은 연구가 이뤄지고 있다. 그 중, `User-based Collaborate Filtering`를 살펴보자.

- 동작 순서(영화 추천)
    + 1. 특정 user가 남긴 영화에 대한 평점 데이터를 기반으로, 비슷한 유저를 찾는다(vectorize $\rarr$ pearson correalation coefficient).
    + 2. 타겟 user의 평점을 예측
    + 3. 예상 평점이 높은 아이템 추천

이 또한 장점과 단점을 알아보자면,

- 장점
    + 구현이 쉽다. Content-based Filtering의 경우 전문적인 지식이 필요한 것에 반해, 구매 기록 혹은 평점 기록만 있다면 구현할 수 있다.
- 단점
    + 데이터의 수집이 어렵다.
    + 유저의 확장성 면에서도 단점을 띤다. 한명의 유저를 위해 수백번의 상관계수 연산을 진행해야 하는 상황도 생길 수 있다.
    + cold start 문제, 즉 신규 대상에 대해 아무런 정보도 주어지지 않는 경우 좋은 추천 결과를 도출하기 어렵다.