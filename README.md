![header](https://capsule-render.vercel.app/api?type=waving&color=auto&height=300&section=header&text=PROJECT.%20LIVE%20Web%20Site%20&fontSize=60&animation=fadeIn&fontAlignY=38&desc=Decorate%20GitHub%20Profile%20or%20any%20Repo%20like%20me!&descAlignY=51&descAlign=62)


# PROJECT. 라이브 커머스 클론 프로젝트💻

> 2021.05.16 - 07.20  
> 개발인원 : 1명
>
> 최근 비대면이 일상화되면서 자연스레 언택트 시대를 맞이하게 되었습니다. 그로인해 온라인 쇼핑이 크게 성장 하였고 현재 라이브커머스가 큰 관심을 받고 있습니다.   
>
> 그래서 이번 포트폴리오를 라이브 커머스 서비스로 중점을 두어 개발하였습니다.  네이버 쇼핑 라이브의 웹 디자인과 기능을 개인적으로 분석해 클론 코딩 프로젝트를 진행하였습니다.

## ❓ 목차

### 1. 프로젝트 소개    
> 1-1.  [프로젝트 소개](#1-1-프로젝트-소개)  
> 1-2.  [개발 환경](#1-2-개발-환경)  
> 1-3.  [DB 모델링](#1-3-DB-모델링)  
> 1-4.  [실행 영상](#1-4-실행-영상)  

### 2. 프로젝트 기능
#### 2-1. 로그인 서비스  
> 2-1-1. [로그인에 따른 권한 처리](#2-1-1-로그인에-따른-권한-처리)  
> 2-1-2. [OAuth2를 이용한 SNS 로그인](#2-1-2-OAuth2를-이용한-SNS-로그인)  
> 2-1-3. [자동 로그인](#2-1-3-자동-로그인)  
#### 2-2. 라이브 서비스
> 2-2-1. [Nginx 설정하기](#2-2-1-Nginx-설정하기)  
> 2-2-2. [Obs 사용하기](#2-2-2-Obs-사용하기)  
> 2-2-3. [라이브 영상 출력](#2-2-3-라이브-영상-출력)  
> 2-2-4. [ffemeg로 라이브 영상 추출해 S3에 올리기](#2-2-4-ffemeg로-라이브-영상-추출해-S3에-올리기)  
> 2-2-5. [라이브 종료 후 추출한 영상 보여주기](#2-2-5-라이브-종료-후-추출한-영상-보여주기)
#### 2-3. 채팅 서비스
> 2-3-1. [라이브 채팅방](#2-3-1-라이브-채팅방)  
> 2-3-2. [채팅방 인원수 표시](#2-3-2-채팅방-인원수-표시)
#### 2-4. 장바구니 
> 2-4-1. [업체별 합계 및 배송비 처리](#2-4-1-업체별-합계-및-배송비-처리)
#### 2-5. 결제 서비스
> 2-5-1. [아임포트 API를 이용한 결제 기능](#2-5-1-아임포트-API를-이용한-결제-기능)
#### 2-6. 구매내역
> 2-6-1. [구매 상태별 수 구하기](#)
#### 2-7. 판매자 기능
> 2-7-1. [상품 등록 및 판매글 등록](#2-7-1-상품-등록-및-판매글-등록)  
> 2-7-2. [라이브 등록](#2-7-2-라이브-등록)  
> 2-7-3. [판매내역 결제 및 주문상태](#2-7-3-판매내역-결제-및-주문상태)  

### 3. AWS
*** 추 후 블로그에 정리할 예정
(https://github.com/onealog)

### 4. 마무리
> 3-1. 아쉬웠던 점/ 좋았던 점
> 3-2. 마무리 소감
---
---
# 1. 프로젝트 소개
## 1-1. 프로젝트 소개
* 라이브 서비스를 구현해보고 싶어서 처음에는 영상 스트리밍 서비스를 구현해볼까 하다 최근 라이브 커머스가 현재 큰 관심 중 하나라 생각하여 라이브 커머스 웹 프로젝트를 진행하기로 했습니다.

* 라이브 커머스의 장점인 편의성과 소통성을 위해 실시간 영상과 실시간 채팅 기능을 넣었으며 실시간 방송이 끝나도 해당 영상을 다시 보여줌으로써 소비자에게 지속적인 서비스를 제공하여 효율성을 증대시켰습니다.

* 혼자 새롭게 기획하고 제작하기엔 많은 기간이 소요될 것 같아서 웹 디자인과 라이브 서비스는 네이버 쇼핑 라이브를 개인적으로 분석해 클론 코딩 하였으며, 장바구니, 구매페이지는 오늘의 쇼핑 웹 디자인을 참고 하였습니다.

## 1-2. 개발 환경 🛠 
<img src="https://img.shields.io/badge/JAVA-FF4DAC?style=flat-square&logo=java&logoColor=white&width=300"> <img src="https://img.shields.io/badge/MySQL-B965DF?style=flat-square&logo=MySQL&logoColor=white"/> <img src="https://img.shields.io/badge/Spring Boot-758bfd?style=flat-square&logo=SpringBoot&logoColor=white"/> <img src="https://img.shields.io/badge/Spring Security-0083DE?style=flat-square&logo=Spring Security&logoColor=white"/> <img src="https://img.shields.io/badge/Apache Tomcat-21B88F?style=flat-square&logo=ApacheTomcat&logoColor=white"/> <img src="https://img.shields.io/badge/NGINX-007844?style=flat-square&logo=NGINX&logoColor=white"/>

<img src="https://img.shields.io/badge/FFmpeg-00BD8D?style=flat-square&logo=FFmpeg&logoColor=white"/> <img src="https://img.shields.io/badge/Socket.io-00B0D5?style=flat-square&logo=Socket.io&logoColor=white"/> <img src="https://img.shields.io/badge/Amazon AWS-00A1FF?style=flat-square&logo=AmazonAWS&logoColor=white"/> <img src="https://img.shields.io/badge/Amazon ECS-008CFF?style=flat-square&logo=Amazon ECS&logoColor=white"/> <img src="https://img.shields.io/badge/Amazon S3-006BFF?style=flat-square&logo=Amazon S3&logoColor=white"/> 
<img src="https://img.shields.io/badge/Amazon RDS-4026FF?style=flat-square&logo=Amazon RDS&logoColor=white"/> 

<img src="https://img.shields.io/badge/HTML-FF911E?style=flat-square&logo=HTML5&logoColor=white"/> <img src="https://img.shields.io/badge/CSS3-FF7965?style=flat-square&logo=CSS3&logoColor=white"/> <img src="https://img.shields.io/badge/Javascript-FF4986?style=flat-square&logo=Javascript&logoColor=white"/> <img src="https://img.shields.io/badge/jQuery-FF26AC?style=flat-square&logo=jQuery&logoColor=white"/> <img src="https://img.shields.io/badge/Adobe Photoshop-B15AE9?style=flat-square&logo=Adobe Photoshop&logoColor=white"/> <img src="https://img.shields.io/badge/Adobe Illustrator-6E19DF?style=flat-square&logo=Adobe Illustrator&logoColor=white"/>

## 1-3. DB 모델링


## 1-4. 실행 영상

<br>

# 2. 프로젝트 기능
## 2-1. 로그인 서비스
### 2-1-1. WebSecurityConfig 설정
Spring Security에 다양한 로그인 방법 처리 설정을 해준다.
* form 로그인
* 로그인 성공-실패 핸들러 및 페이지 URL
* 자동 로그인 
* 로그아웃
* 로그인 처리 URL csrf 예외처리
* OAuth2 로그인
```
http.authorizeRequests()
      ...(URL의 권한 설정)...
      .and()
        .formLogin()                                    // form태그 기반의 로그인                                                             
        .usernameParameter("userId")                    // id 파라미터 명
        .passwordParameter("userPw")                    // pw 파라미터 명
        .loginPage("/login")                            // 로그인 페이지
        .loginProcessingUrl("/loginProcess")            // 로그인 처리 URL
        .failureUrl("/login?error=true")                // 로그인 실패 후 페이지
        .failureHandler(authenticationFailureHandler)   // 로그인 실패 핸들러
        .successHandler(authenticationSuccessHandler)   // 로그인 성공 핸들러
        .permitAll()
      .and()
        .rememberMe()                                   // 자동로그인
        .rememberMeParameter("rememberMe")              // 자동로그인 파라미터 명
        .tokenValiditySeconds(86400 * 30)               // 쿠키 만료 시간 설정(30일)                    
        .userDetailsService(customUsersDetailService)   // 시스템의 사용자 계정을 조회할 때 처리 설정하는 api
        .tokenRepository(tokenRepository())             //DataSource 추가
      .and()
        .logout()                                       // 로그아웃 기능 설정 진입점
        .logoutUrl("/logout")                           // 로그아웃 처리 URL
        .logoutSuccessUrl("/")                          // 로그아웃 성공 시 입력한 주소로 리다이렉트
        .invalidateHttpSession(true)                    // 세션 정보 삭제
        .deleteCookies("JSESSIONID","rememberMe")       //로그아웃 후 자동 로그인 쿠키 삭제
        .permitAll()
      ...(서브모듈 iframe 에러 처리)...
      .and()
        .cors()                                         // 자원 공유 권한 체제
      .and()      
        .csrf()                                         //csrf 공격을 막아주는 CsrfFilter 제공
        .ignoringAntMatchers("/loginProcess","/stomp/**")  // csrf예외처리  
      .and()
        .oauth2Login()                                  //  OAuth2 로그인 기능 설정 진입점
        .loginPage("/login")
        .userInfoEndpoint()                             //  OAuth2 로그인 성공 이후 사용자 정보 가져올 설정 담당
        .userService(customOAuth2UserService);          //  소셜 로그인 성공 후 처리 구현체 등록
```
### 2-1-1. 로그인에 따른 권한 처리
* 유저의 권한을 따로 저장해 DB에 저장된 유저 권한의 key 값으로 권한 role값을 부여해준다
```
```
### 2-1-2. OAuth2를 이용한 SNS 로그인
* OAuth2UserService를 상속 받는 클래스를 생성해 로그인 하려는 SNS에 대한 정보를 가져와 
```
```
## 2-2.
* OBS의 방송 서버를 위해 NGINX-RTMP를 사용하였으며 HTML5의 Video태그로 스트림을 받아 영상을 재생시킬 수 있게 hls.js를 사용하였습니다.
* 라이브 영상을 저장해 라이브 종료 후에도 
