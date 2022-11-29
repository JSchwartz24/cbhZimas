<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome JSP page</title>
</head>
<body>
	<h1>Welcome JSP home page !!!</h1>
	  	<form name="searchForm" action="testDisplay.jsp" method="POST">
	<table>
		<tr>
	       <td>
	       		    <input type="text" placeholder="Search By Address, APN, Permit # :" name="search" class="active" size=50">
                    <!--   searchTerm = search.value -->
                    
                    <div class="icon active"><i class="fa fa-search"></i></div>
	       </td>
	       
	    </tr>   
	</table>

						<input type="reset" value="Clear" name="clear" />
						<input type="submit" value="Submit Search" name="submit" />
					</form>
	<script type="text/javascript">
     document.getElementById("search").click();
  	</script>
	

</body>
</html>