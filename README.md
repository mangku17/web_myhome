##### web_MyHome
20200713 - 20200717 1st <br>
20200723 - 20200727 2nd

## 팀소개
 팀원 | 역할 
 ---|---
 송현수 | 화면기획&디자인 / 프로그램 설계
 안덕우 | DB 설계/ 관리자-회원관리 구현
 윤미정 | 로그인, 회원가입, 게시판 구현
 이가희 | DB 설계&관리 / 게시판, 관리자-매출관리 구현
 이지형 | 상품 리뷰, 장바구니, 주문기능 구현
 
## 담당 기능
- 나만의집 로그인, 회원가입, 아이디&비밀번호 찾기, 게시판 기능
- 카카오API를 활용하여 회원 로그인과 회원 가입 선택의 폭을 넓힘
- 페이지 통합

### 1.Login
 - Login page(css) jsp
 - Login function jsp
    1. KAKAO_Login
    2. Login

### 2.Join
- Join page(css) jsp
    1. KAKAO_Join
    2. Join
- Join function jsp
    1. KAKAO_Join
    2. Join 

### 3.Find_ID&PW
- Find page(css) jsp
- Find function jsp
    1. Find_ID
    2. Find_PW

### 4.Board
- Board page(css) jsp
    1. Board_list
    2. Board_choice
    3. Board_insert
- Board function jsp
    1. Board_list
    2. Board_choice
    3. Board_insert

### 쿼리스트링
1. 페이지 내에서 특정 정보를 클릭해 다음페이지로 값을 이동하고 싶을때<br>
  : 객체를 선택했을 때 값을 선택했다는 인식이 제대로 전달되지 않아(:null값으로 다음 페이지에 전달) 이를 쿼리스트링으로 해결.
2. 카카오api 사용했을때<br>
  : 사용자의 로그인 정보를 담은 토큰을 콘솔에서 찍었을 때 정상적으로 출력되는 것을 확인할 수 있었지만,
  위의 이유처럼 다른페이지로 값이 제대로 전달되지 않는 것(null)을 확인할 수 있었다. 
  //사진추가
  
  
  ## 4. 윤미정
- Login & Join
    1. Join
      <br> FireBase Auth 이메일 회원가입
    2. Auto Login
      <br> 초반에는 FireBase Auth에서 사용되는 로그인 유저 확인하는 방법을 통해 로그인의 유무를 확인. 도중에 __앱이 포그라운드 서비스__ 를 이용해 실행되고 있음을 알게 되어, 정보가 초기화 되지 않는 사실을 깨닫게 됨. 이를 __Application 클래스를 상속__ 받은 클래스에 로그인 유무를 전달하는 방법으로 해결.
- MainFeed
    1. [Feed Upload](https://www.naver.com "마우스를 올려놓으면 말풍선이 나옵니다.")
    2. [Reply](https://www.naver.com "마우스를 올려놓으면 말풍선이 나옵니다.") 
- Setting
    1. Logout & Withdrawal
     <br> 위에 설명한 포그라운드 서비스 때문에 로그아웃, 회원탈퇴를 했을 경우 Application 클래스를 상속 받는 클래스에 로그아웃을 했음을 전달.
     ```android
     if(user != null){
         auth.singOut(); 
         ((NotifyApplication)getApplication()).setIslogin(false);
        }
     ```
- Admin_Feed
    1. Report classification
    `코드작성`
