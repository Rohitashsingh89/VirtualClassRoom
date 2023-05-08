<%@ page import="java.util.Base64" %>
<%@ page import="com.entities.Videos" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Image</title>
</head>
<body>
<h1 style="color:red" align="center">DISPLAY IMAGE DETAIL</h1>

<div align="center">

<form action="DisplayServlet" method="post">
   Enter Image Id :
   <input type="number" name="imageId">
   <input type="submit" value="Display Image">
</form>

</div>

<hr>

<div align="center">
     <table border="5px" style="width:600px">
          <tr>
              <th>Image Id </th>
              <th>Image</th>
          </tr>
         

			<%
			    List<Videos> imageList = (List<Videos>) request.getAttribute("data");
			    for (Videos imageEntity : imageList) {
			        byte[] imageData = imageEntity.getData();
			        String base64Image = Base64.getEncoder().encodeToString(imageData);
			%>
			<tr>
				<td>
			    <img src="data:image/jpeg;base64,<%= base64Image %>" alt="Image" style="width:300px;height:250px">				
				</td>
			</tr>
			<%
			    }
			%>
          
          
     </table>
</div>

</body>
</html>