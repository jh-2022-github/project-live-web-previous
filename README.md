![header](https://capsule-render.vercel.app/api?type=waving&color=auto&height=300&section=header&text=PROJECT.%20Livecommerce%20&fontSize=60&animation=fadeIn&fontAlignY=38&desc=Livecommerce%20Website%20clone%20project&descAlignY=51&descAlign=62)


# PROJECT. 라이브 커머스 웹사이트 클론 프로젝트💻

> 2021.05.16 - 07.20  
> 개발인원 : 1명
>
> 라이브 커머스 서비스로 중점을 두어 프로젝트를 개발하였으며, 네이버 쇼핑라이브의 기능과 웹 디자인을 개인적으로 분석해 클론 코딩 프로젝트를 진행하였습니다.

## ❓ 목차

### 1. 프로젝트 소개    
> 1-1.  [프로젝트 제작 계기](#1-1-프로젝트-제작-계기) 
> 1-2.  [프로젝트 주요 기능](#1-2-프로젝트-주요-기능)  
> 1-3.  [개발 환경](#1-3-개발-환경)  
> 1-4.  [DB 모델링](#1-4-DB-모델링)  
> 1-5.  [실행 영상](#1-5-실행-영상)  

### 2. 프로젝트 기능
#### 2-1. 로그인 서비스  
> 2-1-1. [로그인에 따른 권한 처리](#2-1-1-로그인에-따른-권한-처리)  
> 2-1-2. [OAuth2와 JPA를 이용한 SNS 로그인](#2-1-2-OAuth2와-JPA를-이용한-SNS-로그인)  
#### 2-2. 라이브 서비스
> 2-2-1. [Nginx 설정하기](#2-2-1-Nginx-설정하기)  
> 2-2-2. [Obs 사용하기](#2-2-2-Obs-사용하기)  
> 2-2-3. [라이브 영상 출력](#2-2-3-라이브-영상-출력)  
> 2-2-4. [ffemeg로 라이브 영상 추출해 S3에 올리기](#2-2-4-ffemeg로-라이브-영상-추출해-S3에-올리기)  
> 2-2-5. [라이브 종료 후 추출한 영상 보여주기](#2-2-5-라이브-종료-후-추출한-영상-보여주기)
#### 2-3. 채팅 서비스
> 2-3-1. [라이브 채팅방](#2-3-1-라이브-채팅방)  
> 2-3-2. [채팅방 인원수 표시](#2-3-2-채팅방-인원수-표시)
#### 2-4. 메인 페이지
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

* 라이브 커머스의 장점인 편의성과 소통성을 위해 실시간 영상과 실시간 채팅 기능을 넣어 제품에 대한 정보를 바로 보여주면서 질문에 대한 답을 바로 알려줄 수 있게 하였으며, 실시간 방송이 끝나도 해당 영상을 다시 보여줌으로써 소비자에게 지속적인 서비스를 제공하여 효율성을 증대시켰습니다.

* 또한 라이브를 보면서 구매할 수 있게 하단에 제품글을 누르면 제품 소개 및 구매 창이 팝업 형식으로 보여줄 수 있게 하였으며, 바로 구매하기와 장바구니 넣기 버튼을 하단에 고정시켜 주문하기 편하게 하였습니다.

* 소비자의 배송지 주소를 기본 배송지와 추가로 4개 더 저장할 수 있게하여 주문 시 최소한의 행동으로 구매할 수 있게 했으며, 결제 API를 사용해 신용카드, 카카오페이, 토스로 구매할 수 있게 처리하였습니다.

* 판매자가 제품을 관리(재고량 등)할 수 있고 판매글을 올렸을 때 동일한 상품에 대한 상품명과 금액을 동일시 하기 위해 제품 등록과 판매글 등록을 구분하였으며 라이브 등록시 판매글을 선택해 동일한 제품을 계속 라이브 할 수 있게 처리하였습니다. 그리고 스트림키는 노출을 막기 위해 마스킹 처리를 하였고 언제든 스트림키를 교체할 수 있게 하였습니다.

* 혼자 새롭게 기획하고 제작하기엔 많은 기간이 소요될 것 같아서 웹 디자인과 라이브 서비스는 네이버 쇼핑 라이브를 개인적으로 분석해 클론 코딩 하였으며, 장바구니, 구매페이지는 오늘의 쇼핑 웹 디자인을 참고 하였습니다. 

## 1-2. 개발 환경 🛠 
<img src="https://img.shields.io/badge/JAVA-FF4DAC?style=flat-square&logo=java&logoColor=white&width=300"> <img src="https://img.shields.io/badge/MySQL-B965DF?style=flat-square&logo=MySQL&logoColor=white"/> <img src="https://img.shields.io/badge/Spring Boot-758bfd?style=flat-square&logo=SpringBoot&logoColor=white"/> <img src="https://img.shields.io/badge/Spring Security-0083DE?style=flat-square&logo=Spring Security&logoColor=white"/> <img src="https://img.shields.io/badge/Apache Tomcat-21B88F?style=flat-square&logo=ApacheTomcat&logoColor=white"/> <img src="https://img.shields.io/badge/NGINX-007844?style=flat-square&logo=NGINX&logoColor=white"/>

<img src="https://img.shields.io/badge/FFmpeg-00BD8D?style=flat-square&logo=FFmpeg&logoColor=white"/> <img src="https://img.shields.io/badge/Socket.io-00B0D5?style=flat-square&logo=Socket.io&logoColor=white"/> <img src="https://img.shields.io/badge/Amazon AWS-00A1FF?style=flat-square&logo=AmazonAWS&logoColor=white"/> <img src="https://img.shields.io/badge/Amazon ECS-008CFF?style=flat-square&logo=Amazon ECS&logoColor=white"/> <img src="https://img.shields.io/badge/Amazon S3-006BFF?style=flat-square&logo=Amazon S3&logoColor=white"/> 
<img src="https://img.shields.io/badge/Amazon RDS-4026FF?style=flat-square&logo=Amazon RDS&logoColor=white"/> 

<img src="https://img.shields.io/badge/HTML-FF911E?style=flat-square&logo=HTML5&logoColor=white"/> <img src="https://img.shields.io/badge/CSS3-FF7965?style=flat-square&logo=CSS3&logoColor=white"/> <img src="https://img.shields.io/badge/Javascript-FF4986?style=flat-square&logo=Javascript&logoColor=white"/> <img src="https://img.shields.io/badge/jQuery-FF26AC?style=flat-square&logo=jQuery&logoColor=white"/> <img src="https://img.shields.io/badge/Adobe Photoshop-B15AE9?style=flat-square&logo=Adobe Photoshop&logoColor=white"/> <img src="https://img.shields.io/badge/Adobe Illustrator-6E19DF?style=flat-square&logo=Adobe Illustrator&logoColor=white"/>

## 1-3. DB 모델링


## 1-4. 실행 영상

<br>

# 2. 프로젝트 기능 설명
## 2-1. 로그인 서비스
> 로그인은 form 로그인과 OAuth2 로그인을 사용하였습니다.
### 2-1-1. WebSecurityConfig 설정
* Spring Security에 다양한 로그인 처리를 설정 해줍니다.
```java
http.authorizeRequests()
      ...
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
      ...
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
* 유저 권한 정보를 저장하는 enum 클래스를 생성하고 DB에 저장된 유저 권한의 key 값과 비교해 유저의 권한 값을 부여해준다.
* 자동 로그인 처리시에도 사용된다.
```java
@Getter
@RequiredArgsConstructor
public enum UserRole {
    MEMBER("ROLE_MEMBER","11","정회원"), 
    EMPLOYEE("ROLE_EMPLOYEE","12","기업회원"),
    ADMIN("ROLE_ADMIN","13","관리자"), 
    UNKNOWN("UNKNOWN","",""),
    STOP("ROLE_STOP","99","블럭계정");
    
    private final String role;
    private final String key;
    private final String title;
    ...
}
```

```java
   ... 
  /* 유저 권한 정보 넣기 */
  UserRole userRole =UserRole.fromRole(user.getUserRole());
  ArrayList<SimpleGrantedAuthority> authorities = new ArrayList<>();

  if(UserRole.MEMBER.getKey().equals(user.getUserRole())) {                         //UserRole의 key값과 DB에 저장된 유저의 Role 값을 비교해
      authorities.add(new SimpleGrantedAuthority(UserRole.MEMBER.getRole()));       //일치하는 UserRole 값을 부여해준다
  }else if(UserRole.EMPLOYEE.getKey().equals(user.getUserRole())) {
      authorities.add(new SimpleGrantedAuthority(UserRole.EMPLOYEE.getRole()));
  }else if(UserRole.ADMIN.getKey().equals(user.getUserRole())){
      authorities.add(new SimpleGrantedAuthority(UserRole.ADMIN.getRole()));
  }else if(UserRole.STOP.getKey().equals(user.getUserRole())) {
      authorities.add(new SimpleGrantedAuthority(UserRole.STOP.getRole()));
  }else{
      authorities.add(new SimpleGrantedAuthority(UserRole.UNKNOWN.getRole()));
  }
  ... 
```

### 2-1-2. OAuth2와 JPA를 이용한 SNS 로그인
* OAuth2UserService를 상속 받는 클래스를 생성해 로그인 하려는 SNS(네이버, 카카오)를 구분해 계정 정보를 받아와 
UserVo 형태로 값을 부여했습니다. 

```java
...
//카카오 계정 정보 가져오기
private static OAuthAttributes ofKakao(String userNameAttributeName, Map<String, Object> attributes) {
        // 받아 온 kakao 정보 안에 kakao_account 담기
        Map<String, Object> kakaoAccount = (Map<String, Object>)attributes.get("kakao_account");
        // kakao_account안에 profile이라는 JSON객체 정보를 담는다
        Map<String, Object> kakaoProfile = (Map<String, Object>)kakaoAccount.get("profile");
        return OAuthAttributes.builder()
                .userId((attributes.get("id"))+"@k")
                .userUname((String) kakaoProfile.get("nickname"))
                .userNickname((String) kakaoProfile.get("nickname"))
                .userPlatform("kakao")
                .userRole(UserRole.MEMBER.getKey())
                .attributes(attributes)
                .nameAttributeKey(userNameAttributeName)
                .build();
    }
...

```
* 넘어오는 값과 DB 값을 비교해 없으면 바로 회원 가입 처리 하였으며 DB처리에는 JPA를 사용했습니다.
```java
...
//회원가입
@Modifying 
@Query(value="INSERT INTO USER_INFO (USER_ID,USER_PW,USER_UNAME,USER_NICKNAME,USER_PLATFORM,USER_ROLE)VALUES(#{userId},#{userPw},#{userUname},#{userNickname},#{userPlatform},#{userRole}",nativeQuery = true)
int insertUserInfo(@Param("userId")String userId,@Param("userPw")String userPw,@Param("userUname")String userUname
            ,@Param("userNickname")String userNickname,@Param("userPlatform")String userPlatform,@Param("userRole")String userRole);
```
* UserVo 형태로 값을 넣어 유저 정보를 return 하여 form로그인과 OAuth2로그인시 저장하는 계정 정보를 동일한 코드로 사용할 수 있게 했습니다.
* OAuth2User와 UserDetails를 상속 받아 UserVo형태로 값을 저장합니다.
```java
public class UserVo implements OAuth2User,UserDetails{
...
    @Builder
    public UserVo(String userId,String userUname, String userNickname, String userPhone, String userRole,Collection<? extends GrantedAuthority> authorities) {
        this.userId = userId;
        this.userUname = userUname;
        this.userNickname = userNickname;
        this.userPhone = userPhone;
        this.userRole = userRole;
        this.authorities = authorities;
    }
...
}
```
## 2-2. 라이브 서비스
> OBS의 방송 서버를 위해 NGINX-RTMP를 사용하였으며 HTML5의 Video태그로 스트림을 받아 영상을 재생시킬 수 있게 HLS를 사용하였습니다.  
>
> 실시간 영상을 종료 후에도 보여줄 수 있게 ffeng
### 2-2-1. Nginx-RTMP 설정하기
* ubuntu에 원하는 버전의 Nginx-RTMP를 다운 받아 컴파일러해 설치하고 rtmp소스를 hls로 바꾸기위해 환경 설정을 수정합니다.
* conf 파일에 대한 자세한 설명은 아래 주소 참고 
  * https://github.com/dreamsxin/nginx-rtmp-wiki/blob/master/Directives.md#record_path
```
rtmp {
    server {
	listen 1935;
	chunk_size 4096;
	access_log logs/rtmp_access.log;

	# obs 접속 서버 뒤에 /live 입력
	application live {
		# 라이브 스트리밍 활성화
	      live on;
		# 오디오와 비디오 데이터 동일한 RTMP 청크 스트림 전송
		interleave on;
		# /live의 라이브영상을 다른 주소로 밀기
		push rtmp://IP주소/hls;
            ...
		}
	application hls {
	        live on;
		# hls 전환
		hls on;
		# 스트림에 대해 하위 디렉토리 생성
		hls_nested on;
		# 오래된 hls 조각과 재생 목록 제거
		# 프리티어를 사용하기 때문에 꼭 설정하기
		hls_cleanup on;
		...
		}
	}
}
http {
	...
    	server {
		# 연결할 포트
		listen		8050;	
		# 연결할 IP주소
		server_name	IP주소;
		...
		location /hls {
			...
           		 types {
               			 application/vnd.apple.mpegurl m3u8;
                               ...
            		}
            		root /tmp;
            		add_header Cache-Control no-cache;
            		add_header Access-Control-Allow-Origin *;
			...
			autoindex on;
			autoindex_localtime on;
			autoindex_exact_size off;
			# 스트리밍시 임시 저장되는 폴더 경로
			alias /mnt/hls;	
			...
        	}
		...
	}
}
```
### 2-2-2. Obs 사용하기
* 설정 -> 방송 탭에서 접속할 서버와 방송 열쇠를 입력합니다.
- 서버: `rtmp://IP주소 또는 도메인 주소/live`   
- 방송 열쇠: `판매자에게 부여된 스트림키` 

### 2-2-3. 라이브 영상 출력
* hls.js를 사용해 라이브 영상을 
```javascript
    //라이브 연결
    var video = document.getElementById('video');
    var videoSrc =url+"/hls/"+stream+"/index.m3u8";
    var hls = new Hls();
    if(status){
        if(video.canPlayType('application/vnd.apple.mpegurl')) {   // 우선 HLS를 지원하는지 체크
            video.src = videoSrc;
        }else if(Hls.isSupported()){                         // HLS를 지원하지 않는다면 hls.js를 지원
            hls.loadSource(videoSrc);                       //라이브 영상 파일 주소 불러오기
            hls.attachMedia(video);                         //비디오 태그에 넣기
            hls.on(Hls.Events.MANIFEST_PARSED,()=>{
                video.play();                               //라이브 시작
                $('.LiveBadge_live').removeClass('blind');  //라이브뱃지 보여주기
            })
            hls.on(Hls.Events.ERROR, function(data) {       //라이브 종료 감지
                liveEnd();                                  //종료 처리
            });
        }
    }else{
        liveEnd();
    }
```
### 2-2-4. ffemeg,FFfrobe로 라이브 영상 추출해 S3에 올리기
* 크론식을 사용해 1분마다 라이브를 감지해 라이브 시작 시간 또는 종료 시간에 맞춰 라이브 상태를 변경해줍니다.
* 용량에 따른 비용추가를 막기 위해 영상파일은 1분만 저장하게 하였고 현재 라이브 중이면서 비디오 파일이 없는 라이브만 mp4파일로 변환해 AWS S3에 저장합니다.
```java
@Scheduled(cron="0 */1 * * * *")
public void liveVideoSave() throws IOException{
      ...
      // ubuntu에 설치한 ffmpeg, ffprobe의 경로를 넣어서 사용한다
      FFmpeg ffmpeg = new FFmpeg(ffmpegUrl);
      FFprobe ffprobe = new FFprobe(ffprobeUrl);
      ...
     // 현재 라이브 중이면서 저장된 영상이 없는 라이브만 실행한다.
     for(int i =0;i<live.size();i++) {            
            String key = live.get(i).getSelStreamKey();
            String liveId = createVideoName(live.get(i).getLiveId());
            // 변환 설정
            FFmpegBuilder builder = new FFmpegBuilder()
                    .setInput(url+"/hls/"+key+"/index.m3u8") // 파일 경로
                    .overrideOutputFiles(true)                                  // 오버라이드
                    .addOutput(uploadFolder+uploadFolderPath+"/"+liveId+".mp4") // 저장경로
                    .setVideoCodec("libx264")                                   // 비디오코덱
                    .disableSubtitle()                                          // 서브타이틀 제거
                    .setAudioChannels(2)                                        // 오디오채널(1: 모노, 2:스테레오)
                    .addExtraArgs("-t", "00:01:00")                             // 인코딩할 시간 설정
                    //(-ss "00:00:00"으로 설정하면 녹화 처음부터 저장되고 -t를 설정하지 않으면 방송된 영상 전체 저장) 
                    .addExtraArgs("-c:a", "aac")                                // 오디오 코덱
                    .addExtraArgs("-b:a", "192k")                               // 오디오 음질값
                    .setVideoResolution(1280, 720)                              // 동영상 해상도
                    .setVideoBitRate(1464800)                                   // 비디오 비트레이트
                    .setStrict(FFmpegBuilder.Strict.EXPERIMENTAL)               // ffmpeg 빌터 실행 허용
                    .done();
            FFmpegExecutor executor = new FFmpegExecutor(ffmpeg,ffprobe);             
            executor.createJob(builder).run();
            ...
            //위치한 영상 주소를 File에 넣어 S3에 저장한다
            File file = new File(uploadFolderUrl+uploadFolderPath+liveVideoVo.getVideoName());
            awsS3Service.uploadFile(file, uploadFolderPath,liveId.substring(1)+".mp4");
            
        }
```

### 2-2-5. 라이브 종료 후 추출한 영상 보여주기
* 라이브 영상을 저장해 라이브 종료 후에도 계속 보여줄 수 있게 서비스를 제공합니다.
```html
<video class="VideoPlayer_video replayVideo" autoplay muted loop poster="https://s3.ap-northeast-2.amazonaws.com/S3버킷명/저장된 경로/파일명>
      <source src="https://s3.ap-northeast-2.amazonaws.com/S3버킷명/저장된 경로/파일명" type="video/mp4">
</video>
```
