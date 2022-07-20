<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<sec:authentication var="user" property="principal"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="_csrf" content="${_csrf.token}"/>
    <meta name="_csrf_header" content="${_csrf.headerName}"/>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="/img/logo/logo_header_icon.png">
    <title>오늘의쇼핑</title>
    <link rel="stylesheet" type="text/css" href="/css/video.css" >
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/hls.js@latest"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
    <script type="text/javascript" src="/js/live.js" ></script>   
    <script type="text/javascript" src="/js/common.js" ></script>  
    <script type="text/javascript" src="/js/live_common.js" ></script>  
    <script>
        const nick   = "${nick}"; //비회원 유저도 들어와서 볼 수 있게 하기 위해 sec 사용 안하고 받아온 값으로 설정
        const stream = "${live.liveSellerVo.selStreamKey}".trim();
        const roomId = "${live.liveSellerVo.selChatKey}";
        const status = '${liveStatus}';
        const liveId = '${live.liveId}';
        const url = '${url}';
	</script>
</head>
<body>
    <div class="videoLayout_wrap videoLayout_pc">
        <div class="videoLayout_inner">
            <div style="height: 100%;">
                <div class="eg-flick-viewport">
                    <div class="eg-flick-camera">
                    <div class="FlickingContainer_content eg-flick-panel">
                        <div class="FlickingContainer_inner">
                            <header class="LiveHeader_wrap">
                                <h1 class="LiveHeader_logo">
							        <a href="/" class="logo_link">
							            <i class="header_icon logo_icon"></i>
							            <span class="blind">오늘의쇼핑</span>
							        </a>
                                </h1>
                                <div class="ToolBox_wrap">
                                    <button class="video_save">영상저장</button>
                                    <div class="SoundButton_wrap"> 
                                        <button type="button" class="SoundButton">
                                            <i class="SoundButton_icon header_icon header_icons"></i>
                                            <span class="blind">음소거</span>
                                        </button>
                                    </div>
                                    <div>
                                       <button type="button" class="CloseButton">
                                            <i class="CloseButton_icon header_icon header_icons"></i>
                                            <span class="blind">닫기</span>
                                        </button>
                                    </div>
                                </div>
                                <div class="LiveHeader_title">
                                    <div class="LiveHeader_img_area" >
                                        <img class="LiveHeader_image" width="38" height="38" src="https://s3.ap-northeast-2.amazonaws.com/onlshop.shop${live.liveSellerVo.getSelUploadPath()}/${live.liveSellerVo.getSelFileId()}">
                                        <span class="LiveBadge_live blind">LIVE</span>
                                    </div>           
                                    <div class="LiveHeader_text_area">
                                        <h2 class="LiveHeader_text">${live.liveTitle}</h2>
                                        <div class="LiveHeader_item_box">
                                            <span class="LiveHeader_nickname">${live.liveSellerVo.getSelName()}</span>
                                            <span class="LiveHeader_live">
                                                <i class="LiveHeader_view_icon"></i>
                                                <span class="LiveHeader_view_count"></span>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </header>
                            <div class="NoticeContent_area blind"></div>
                            <div class="NoticeContent_box blind">
                                <div class="NoticeContent_text">라이브가 종료되었습니다.</div>    
                                <div class="NoticeContent_btn_home"> 다른 라이브 보기</div>                            
                            </div>
                            <div class="LiveVideoPlayer_wrap">
                                <div class="video_container">
                                    <video id="video"  muted disablepictureinpicture="true" controlslist="nodownload" width="100%" height="100%" preload="auto" poster="https://s3.ap-northeast-2.amazonaws.com/onlshop.shop${live.uploadPath}/${live.fileId}"></video>  
                                </div>
                            </div>
                            <div class="Comments_wrap" id="Comments_wrap">
                                <div class="Comments_inner">
                                    <div class="Comments_animation_area"></div>
                                    <div class="Comments_animation_area bottom_ani"></div>
                                </div>
                            </div>
                            
                            <div class="TagItem_wrap" >
                                <div class="TagItem_current">
                                    <a class="TagItem_link">
                                        <div class="TagItem_thumbnail">
                                            <img class="TagItem_image" width="64" height="64" draggable="false" src="https://s3.ap-northeast-2.amazonaws.com/onlshop.shop${live.livePdVo.getPsUploadPath()}/${live.livePdVo.getPsFileId()}">
                                        </div>
                                        <div class="TagItem_title">
                                            ${live.livePdVo.getPsTitle()}
                                        </div>
                                        <span class="TagItem_price">
                                            <%-- <span class="TagItem_rate">${sale.psDiscount}%</span> --%>
                                            <strong><fmt:formatNumber value="${live.livePdVo.getPsPrice()}" pattern="#,###" /></strong>원
                                        </span>
                                    </a>
                                </div>
                            </div>
                            <section class="ItemModal_section" style="display: none;">
                                <div class="ItemModal_content ItemModal_content_iframe">
                                    <div class="ModelTitle_wrap">
                                        <h3 class="ModelTitle_title">${live.livePdVo.getPsTitle()}</h3>
                                        <button type="button" class="ModelTitle_btn">
                                            <i class="ModelTitle_icon"></i>
                                        </button>
                                    </div>
                                    <iframe class="TagItemIframe_iframe" src="/live/item?pd=${live.psIndex}"></iframe>
                                </div>
                            </section>
                            <button type="button" class="CommentBtn_wrap" aria-hidden="false">
                                <span class="CommentBtn_inner">
                                    <i class="header_icon CommentBtn_icon"></i>
                                    <!-- <span class="blind">댓글쓰기</span> -->
                                </span>
                            </button>
                            <div class="CommentWrite_wrap">
                                <textarea class="CommentWrite_text" id="wa_textarea" placeholder="실시간 채팅에 참여하세요" cols="1" ></textarea>
                                <button type="submit" class="CommentWrite_btn" id="send_btn" disabled>전송</button>
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>