<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <title>기름parm</title>
    </head>

    <style>
        .search-container {
            display: flex;
            align-items: center;
        }

        .search-input {
            padding: 10px;
            border: 2px solid #CC6600;
            border-radius: 5px;
            outline: none;
            font-size: 16px;
            width: 300px;
        }

        .search-button {
            background-color: #CC6600;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            margin-left: 10px;
            cursor: pointer;
            font-size: 16px;
        }

        .search-button:hover {
            background-color: #FFE5CC;
        }
    </style>

    <body>
        <%@ include file="comm/main_header.jsp" %>

        <form action="">
            <div class="search-container" style="margin-top: 100px;">
                <input type="text" class="search-input" placeholder="입력하세요.">
                <button type="submit" class="search-button">검색</button>
            </div>
        </form>
    </body>

    </html>