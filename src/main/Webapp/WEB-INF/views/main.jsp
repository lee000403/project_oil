<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>기름parm</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>
    <%@ include file="comm/main_header.jsp" %>
    <% List<Map<String, Object>> result = (List<Map<String, Object>>) request.getAttribute("list"); %>
    <div>
        <% for (Map list_map : result) { %>
            <div>
            <%= list_map.get("area") %>
            <%= list_map.get("oil_price") %>
            </div>
        <% } %>
    </div>
</body>

</html>