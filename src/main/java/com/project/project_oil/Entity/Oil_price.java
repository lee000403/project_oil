package com.project.project_oil.Entity;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Oil_price {
    private String area_unique;

    private String oil_price;

    private Date date_oil;

    private String oil_unique;
}
