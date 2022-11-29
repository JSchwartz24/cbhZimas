<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="cbhzis.CSList" %>
<%@page import="java.util.HashMap" %>
<%@page import="cbhzis.AddressVo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome JSP page</title>
</head>
<body>
	<h1>Welcome JSP home page !!!</h1>
	<%  String priorSearch=(String)request.getSession().getAttribute("search");
		System.out.println(" selected currentSearch is:"+priorSearch);
	%>
	  	<form name="searchForm" action="testDisplay.jsp" method="POST">
	<table>
		<tr>
	       <td>
	       		    <input type="text" placeholder="Search By Address, APN, Permit # :" 
	       		    name="search" class="active" size=50 value="" >
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

<%

String searchContent = request.getParameter("search");
System.out.println("searchContent : "+searchContent);
session.setAttribute("search", searchContent);
String home = "=== Home ===";
System.out.println(home);
System.out.println("testDisplay.jsp's searchContent : "+searchContent);

CSList list = new CSList();
HashMap<String, AddressVo> hmap = (HashMap)list.getMap(searchContent);
System.out.println("map="+hmap);
AddressVo addr = hmap.get(searchContent); //  4350007012  4330033009
System.out.println("addr="+addr);

%>
<br>testDisplay.jsp: The end user entered the search content : <%=searchContent %> 
<br>testDisplay.jsp: The end user entered the prior search content : <%=priorSearch %>
<br>testDisplay.jsp: returned LandId value : <%=addr.getLandId() %>

<br> <%=home %>
<br>Site Address/Legal: <%=addr.getAddress() %>
<br>AIN/APN: <%=addr.getApn() %>
<br>Land ID: <%=addr.getLandId() %>
<br>Associated Permit Number: <%=addr.getPermitNo() %>

 
</body>
</html>