<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Pizza Page</h1>
<form method="POST">
    <label for="crust-size" >Crust Size</label>
    <select id="crust-size" name="crust-size">
        <option value="thin">Thin Crust</option>
        <option value="NoCrust">No Crust</option>
        <option value="biggestCrust">Biggest Crust</option>
    </select>

    <label for="sauce">Sauce</label>
    <select id="sauce" name="sauce">
        <option value="marinara">Marinara</option>
        <option value="Buffalo">Buffalo</option>
        <option value="mustard">Mustard</option>
    </select>

    <label for="size">Size</label>
    <select id="size" name="size">
        <option value="small">small</option>
        <option value="medium">medium</option>
        <option value="large">large</option>
    </select>

    <input type="checkbox" id="pepperoni" name="toppings" value="pepperoni">
    <label for="pepperoni">I want some PEP</label><br>
    <input type="checkbox" id="chicken" name="toppings" value="chicken">
    <label for="chicken"> I want some CHICKEN</label><br>
    <input type="checkbox" id="meatballs" name="toppings" value="meatballs">
    <label for="meatballs">I want some MEATBALLS</label><br>

    <label  for="address">Please input your address</label>
    <input id="address" name="address" type="text" />

    <button type="submit">Submit Ya PIZZA</button>
</form>
</body>
</html>
