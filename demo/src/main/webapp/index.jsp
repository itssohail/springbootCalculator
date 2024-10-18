\<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <!DOCTYPE html>
 <html lang="en">
 <head>
     <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Spring Calculator</title>

     <!-- Bootstrap CSS -->
     <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

     <style>
         body {
             font-family: Arial, sans-serif;
             background-color: #f5f5f5;
             margin: 0;
             padding: 0;
         }
         h1 {
             color: #333;
             text-align: center;
             margin-top: 20px;
         }
         .calculator {
             background-color: #fff;
             padding: 20px;
             margin: 50px auto;
             width: 100%;
             max-width: 400px;
             border-radius: 10px;
             box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
         }
         .result {
             text-align: center;
             margin-top: 20px;
             font-size: 18px;
             color: #333;
         }
         .text-danger {
             color: red;
         }
     </style>
 </head>
 <body>

     <h1>Spring Calculator</h1>
     <div class="calculator">
         <form action="calculate" method="get">
             <div class="form-group">
                 <label for="num1">Enter the first number</label>
                 <input type="number" class="form-control" name="num1" id="num1" required>
             </div>

             <div class="form-group">
                 <label for="num2">Enter the second number</label>
                 <input type="number" class="form-control" name="num2" id="num2" required>
             </div>

             <div class="form-group">
                 <label for="operation">Select Operation</label>
                 <select name="operation" id="operation" class="form-control" required>
                     <option value="add">Add</option>
                     <option value="subtract">Subtract</option>
                     <option value="multiply">Multiply</option>
                     <option value="divide">Divide</option>
                 </select>
             </div>

             <button type="submit" class="btn btn-success btn-block">Calculate</button>
         </form>

         <!-- Display Result -->
         <div class="result">
             <p><strong>Result:</strong> <%= session.getAttribute("result") != null ? session.getAttribute("result") : "N/A" %> </p>
             <p class="text-danger"><strong>Error:</strong> <%= session.getAttribute("errorMessage") != null ? session.getAttribute("errorMessage") : "N/A" %> </p>
         </div>
     </div>

     <!-- Bootstrap JS and dependencies -->
     <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
     <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
     <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
 </body>
 </html>