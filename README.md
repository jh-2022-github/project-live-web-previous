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
<img src="https://img.shields.io/badge/JAVA-FF4DAC?style=flat-square&logo=java&logoColor=white&width=300"> 
<img src="https://img.shields.io/badge/MySQL-B965DF?style=flat-square&logo=MySQL&logoColor=white"/>
<img src="https://img.shields.io/badge/Spring Boot-758bfd?style=flat-square&logo=SpringBoot&logoColor=white"/> 
<img src="https://img.shields.io/badge/Spring Security-0083DE?style=flat-square&logo=Spring Security&logoColor=white"/> 
<img src="https://img.shields.io/badge/Apache Tomcat-21B88F?style=flat-square&logo=ApacheTomcat&logoColor=white"/> 
<img src="https://img.shields.io/badge/NGINX-007844?style=flat-square&logo=NGINX&logoColor=white"/>

<img src="https://img.shields.io/badge/FFmpeg-00BD8D?style=flat-square&logo=FFmpeg&logoColor=white"/> <img src="https://img.shields.io/badge/Socket.io-00B0D5?style=flat-square&logo=Socket.io&logoColor=white"/> <img src="https://img.shields.io/badge/Amazon AWS-00A1FF?style=flat-square&logo=AmazonAWS&logoColor=white"/> <img src="https://img.shields.io/badge/Amazon ECS-008CFF?style=flat-square&logo=Amazon ECS&logoColor=white"/> <img src="https://img.shields.io/badge/Amazon S3-006BFF?style=flat-square&logo=Amazon S3&logoColor=white"/> 
<img src="https://img.shields.io/badge/Amazon RDS-4026FF?style=flat-square&logo=Amazon RDS&logoColor=white"/> 

<img src="https://img.shields.io/badge/HTML-FF911E?style=flat-square&logo=HTML5&logoColor=white"/> <img src="https://img.shields.io/badge/CSS3-FF7965?style=flat-square&logo=CSS3&logoColor=white"/> <img src="https://img.shields.io/badge/Javascript-FF4986?style=flat-square&logo=Javascript&logoColor=white"/> <img src="https://img.shields.io/badge/jQuery-FF26AC?style=flat-square&logo=jQuery&logoColor=white"/> <img src="https://img.shields.io/badge/Adobe Photoshop-B15AE9?style=flat-square&logo=Adobe Photoshop&logoColor=white"/> <img src="https://img.shields.io/badge/Adobe Illustrator-6E19DF?style=flat-square&logo=Adobe Illustrator&logoColor=white"/>



## 1-3. DB 모델링

## 1-4. 실행 영상

<br>

# 2. 프로젝트 기능
## 2-1. 로그인 서비스
### 2-1-1. 로그인에 따른 권한 처리
* 유저의 권한을 따로 저장해 권한 비교할 때 불러와서 


## 2-2.
* OBS의 방송 서버를 위해 NGINX-RTMP를 사용하였으며 HTML5의 Video태그로 스트림을 받아 영상을 재생시킬 수 있게 hls.js를 사용하였습니다.
* 라이브 영상을 저장해 라이브 종료 후에도 
