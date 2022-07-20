package com.onlive.common.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.onlive.common.vo.LiveVo;
import com.onlive.common.vo.PdPostVo;
import com.onlive.common.vo.SellerVo;

@Mapper
public interface LiveMapper {
    public List<LiveVo> liveListHome();
    public List<LiveVo> trailerListHome();
    public List<LiveVo> toptenListHome();
    
    public LiveVo getLiveInfo(LiveVo liveVo);
    public LiveVo getReplayInfo(LiveVo replayVo);
    
    public List<LiveVo> hometownLiveList(String location);
    public List<LiveVo> categoryLiveList(String category);
    public List<LiveVo> searchLiveList(String query);
    
    public void updateLiveStatus();
    public List<LiveVo.LiveVideoVo> getLiveStreamInfo();
    
    public void updateLiveVideoId(List<LiveVo.LiveVideoVo> live);
    public void setLiveVideoInfo(List<LiveVo.LiveVideoVo> live);
    public void setLiveView(LiveVo live);
}
