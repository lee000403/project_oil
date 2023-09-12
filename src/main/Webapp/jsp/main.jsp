<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>기름값 홈페이지</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>
    <div>
        <nav class="navbar navbar-expand-md navbar-light bg-white fixed-top">
            <div class="container-fluid">
                <a href="" class="navbar-brand img-fluid">
                    <img src="../images/palm-oil.png" alt="메인 로고" style="width: 70px;">
                </a>
                <div class="collapse navbar-collapse justify-content-end font-weight-bold" style="font-size: 20px;">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="#">커뮤니티</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">판매가격</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">주유소 추천</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
    <h1 th:text="${name}"></h1>
</body>

</html>