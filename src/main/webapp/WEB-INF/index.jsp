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
    <h1>Send an Omikuji!</h1>
        <form action="/submit" method="post" class="d-flex flex-column gap-3 justify-content-center align-content-center">
  <div class="form-group">
    <label for="number">Select a number from 5 to 25:</label>
    <input name="anyNumber" type="number"></input>
  </div>
  <div class="form-group">
    <label for="city">Enter any city:</label>
    <input name="anyCity" type="text"></input>
  </div>
  <div class="form-group">
    <label for="realperson">Enter the name of any real person:</label>
    <input name="nameOfRealPerson" type="text"></input>
  </div>
    <div class="form-group">
    <label for="career">Enter a professional endeavor or hobby:</label>
    <input name="hobby" type="text"></input>
  </div>
   <div class="form-group">
    <label for="thing">Enter any type of living thing:</label>
    <input name="livingThing" type="text"></input>
  </div>
   <div class="form-group">
    <label for="exampleFormControlTextarea1">Say something nice to someone</label>
    <textarea name="sayNice" class="form-control" rows="3"></textarea>
  </div>
  <button class="btn btn-primary">Submit</button>
</form>
    </div>
    </body>
    </html>