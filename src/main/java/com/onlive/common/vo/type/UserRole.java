package com.onlive.common.vo.type;

import java.util.Arrays;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum UserRole {
    GUEST("ROLE_GUEST","10","손님"),
    MEMBER("ROLE_MEMBER","11","정회원"), 
    EMPLOYEE("ROLE_EMPLOYEE","12","기업회원"),
    ADMIN("ROLE_ADMIN","13","관리자"), 
    UNKNOWN("UNKNOWN","",""),
    STOP("ROLE_STOP","99","블럭계정");
    
    @Getter
    private final String role;
    @Getter
    private final String key;
    @Getter
    private final String title;
    
    public static UserRole fromRole(String key) {      
        return Arrays.stream(UserRole.values()).filter(t -> t.getKey().equals(key)).findFirst()
                .orElse(UNKNOWN);
    }
}
