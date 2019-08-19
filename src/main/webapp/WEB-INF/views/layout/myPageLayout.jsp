<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<div id="container">
		<div id="header">
			<tiles:insertAttribute name="header" />
		</div>
		<div class="myPage">
			<div class="headerBg">
				<h2>MY SUHBUWAY</h2>
			</div>
			<div class="wrapper">
				<div id="sub">
					<tiles:insertAttribute name="sub" />
				</div>
				<div class="contBox">
					<div class="container" id="myPageContent">
						<tiles:insertAttribute name="myPageContent" />
					</div>
				</div>
			</div>
		</div>
		<div id="footer">
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
</body>
</html>


