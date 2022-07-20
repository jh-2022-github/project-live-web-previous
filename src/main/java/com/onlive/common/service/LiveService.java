package com.onlive.common.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.onlive.common.mapper.LiveMapper;
import com.onlive.common.vo.LiveVo;
import com.onlive.common.vo.PdPostVo;
import com.onlive.common.vo.SellerVo;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class LiveService {
    private final LiveMapper liveMapper;
    
    //현재 라이브중인 라이브리스트 불러오기
    public List<LiveVo> liveListHome() {
        return liveMapper.liveListHome();
    }
    public List<LiveVo> trailerListHome() {
        return liveMapper.trailerListHome();
    }
    public List<LiveVo> toptenListHome() {
        return liveMapper.toptenListHome();
    }
    //라이브 정보
    public LiveVo getLiveInfo(LiveVo liveVo) {
        return liveMapper.getLiveInfo(liveVo);
    }
    //라이브 리플레이 정보
    public LiveVo getReplayInfo(LiveVo replayVo) {
        return liveMapper.getReplayInfo(replayVo);
    }   
    //현재 내 위치(지역)에서 라이브 중인 라이브리스트 불러오기
    public List<LiveVo> hometownLiveList(String location) {
        return liveMapper.hometownLiveList(location);
    }
    //설정한 카테고리의 진행중인 라이브와 종료된 라이브 불러오기
    public List<LiveVo> categoryLiveList(String category) {
        return liveMapper.categoryLiveList(category);
    }
    //쇼핑 검색
    public List<LiveVo> searchLiveList(String category) {
        return liveMapper.searchLiveList(category);
    }
    //라이브 시간 확인
    public boolean liveTimeCheck(LiveVo liveVo) throws ParseException {
        LocalDateTime  nowDate = LocalDateTime .now();  //시간포함
        DateTimeFormatter dateFormat1 = DateTimeFormatter.ofPattern("yy-MM-dd hh:mm:ss");
        SimpleDateFormat dateFormat2 = new SimpleDateFormat ("yy-MM-dd hh:mm:ss");
        String stringDay = nowDate.format(dateFormat1);

        Date today = dateFormat2.parse(stringDay);
        Date startDate = dateFormat2.parse(liveVo.getLiveStartDay()+" "+liveVo.getLiveStartTime()+":00");
        Date endDate = dateFormat2.parse(liveVo.getLiveStartDay()+" "+liveVo.getLiveEndTime()+":00");

        int start = today.compareTo(startDate);
        int end = today.compareTo(endDate);
        
        if(start>0 && end<0) {
            return true;
        }else {
            return false;
        }
    }
    //현재 라이브 중인 라이브 상태 변경
    public void updateLiveStatus() {
        liveMapper.updateLiveStatus();
    }
    
    //현재 라이브 중이면서 영상 id 없는 라이브 정보 가져오기
    public List<LiveVo.LiveVideoVo> getLiveStreamInfo() {
        return liveMapper.getLiveStreamInfo();
    }
    @Transactional(rollbackFor = Exception.class, propagation = Propagation.REQUIRES_NEW)
    public void setLiveVideoInfo(List<LiveVo.LiveVideoVo> live) {
        liveMapper.updateLiveVideoId(live);
        liveMapper.setLiveVideoInfo(live);
    }
    public void setLiveView(LiveVo liveChatvo) {
        liveMapper.setLiveView(liveChatvo);
    }
//    //판매자 라이브 정보
//    public SellerVo getSellerLiveInfo(LiveVo liveVo){
//        return liveMapper.getSellerLiveInfo(liveVo);
//    }    
//    //라이브 상품 정보
//    public PdPostVo getSaleLiveInfo(LiveVo liveVo){
//        return liveMapper.getSaleLiveInfo(liveVo);
//    }

}
