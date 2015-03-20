프로젝트 소개
----------

## 작게 함께 시작해 보아요

1thing.kr은 도움을 나누고 싶지만 무엇부터 시작해야 할지 막막해 하는 마음에서 만든 서비스입니다. 마음만으로는 뭔가를 시작한다는건 늘 막연하고 어렵습니다. 혼자가 아니라면, 누군가가 작은 일을 함께 해 보자고 먼저 제안하고, 그 제안에 응답하는 방식이라면 더 많은 우리가 작은 움직임을 시작할 수 있지 않을까요. 그런 작은 움직임들이 쌓이면 더 큰 변화도 일어나지 않을까 욕심내어 볼 수도 있지 않을까요. 1thing.kr은 그런 마음으로 시작합니다.

### 이력: 
* 2015년 2월 16일 시작
* 2015년 3월 1일 첫페이지 디자인

### 제안: 
* 특정 이슈에 대해 간단한 제안을 올리고 함께 하는 서비스
* 세월호를 다룬 책을 함께 읽어보자 예) ["금요일엔 돌아오렴"]
(http://www.yes24.com/24/goods/15782106?scode=032&OzSrank=1)
* 큰 슬픔에 무력감을 느낄 때 작은 것 하나라도 같이 해보자.
* 사진을 모아봅시다.
* 추모를 위해 포스트잇을 남깁니다.

### 도메인:
1thing.kr 

### 개발:
* 레일스 4.2 루비 2.2
* 데이터베이스 몽고디비
* 코드 저장소: https://github.com/peace-code/one-thing

### 주요 사용자기능:
* 소셜 회원 가입 및 로그인 - 페이스북, 카카오
* 제안 등록하기 - 제목, 본문, 사진
* 제안에 참가 신청하기
* 제안에 댓글 남기기

### 참고사이트:
* 청소년 캠페인 사이트 http://dosomething.org
* 희망제작소의 오프너 http://opener.or.kr


배포하는 방법
----------

1. 헤로쿠 툴을 설치한다.

1. 헤로쿠 계정으로 로그인 한다.

2. 헤로쿠 앱을 새로 만들거나 앱을 연결한다.
2.1 새로 앱을 만들 때는 `heroku create` 한다.
2.2 기존 앱으로 사용하려면 리모트 브랜치를 추가한다.
```
.git/config

[remote "heroku"]
        url = https://git.heroku.com/appname.git
        fetch = +refs/heads/*:refs/remotes/heroku/*

```

3. 환경 변수를 추가한다.
```heroku config:set FB_API_ID=..........

3.1 추가할 환경변수는 아래와 같다.
* FB_API_ID
* FB_API_SECRET
* KK_API_ADMIN_ID
* KK_API_ID
* MONGOLAB
* TW_API_ID
* TW_API_SECRET

4. 헤로쿠 저장소로 파일을 전송(PUSH) 한다.
```git push heroku master

4.1 마스터가 아닌 브랜치를 전송하는 경우
```git push heroku your_branch:master

5. 웹브라우저로 확인한다.
```open https://appname.herokuapp.com