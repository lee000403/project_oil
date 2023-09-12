package com.project.project_oil.Entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor( access = AccessLevel.PROTECTED) // 기본 생성자 생성
@AllArgsConstructor // 전체 필드에 대한 생성자 생성 및 @Builder를 사용할 수 있게 된다.
@Builder
@Entity
public class Comunity {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int write_number;

    @Column(nullable = false)
    private String title;
    
    @Column(nullable = false)
    private String body;

    @Column(nullable = false)
    private String nickname;

    @Column(nullable = false)
    private Date time;

    @Column(nullable = false)
    private String area_unique;
}

