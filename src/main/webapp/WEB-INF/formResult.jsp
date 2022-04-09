    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8" />
        <title>Dojo Page</title>
        <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    </head>
    <body>
    <div class="container w-25 border border-secondary p-3">
    <h1>Results:</h1>
         <p>In 
         <c:out value="${numberChosen}"></c:out> 
         years, you will live in
         <c:out value="${anyCity}"></c:out>
         with 
         <c:out value="${nameOfRealPerson}"></c:out>
         as your roommate, 
         <c:out value="${hobby}"></c:out>
         for a living. The next time you see a 
         <c:out value="${livingThing}"></c:out>, 
         you will have good luck. Also, 
         <c:out value="${sayNice}"></c:out>.</p>
    </div>
    </body>
    </html>