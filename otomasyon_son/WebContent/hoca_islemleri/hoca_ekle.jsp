<%@page import="java.util.ArrayList"%>
<%@page import="proses.database_proses"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../css/bootstrap.css" rel="stylesheet" media="screen">
<title>Hoca Kayıt</title>
</head>
<body>
	<div class="bs-docs-example">
		<div class="navbar">
			<div class="navbar-inner">
				<div class="container">
					<a class="btn btn-navbar" data-toggle="collapse"
						data-target=".navbar-responsive-collapse"> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
					</a>
					<div class="nav-collapse collapse navbar-responsive-collapse">
						<ul class="nav">
							<li><a href="../Login.jsp">Ana Sayfa</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<form class="form-horizontal" action="kayit_tamamla.jsp" method="post">
		<table>
			<tr>
				<td style="width: 40%; height: 50px;"></td>
			</tr>
			<tr>
				<td></td>
				<td>
					<fieldset>
						<legend style="color: #FFEBCD">Hoca Kayit</legend>
						<div class="control-group">
							<label class="control-label" style="color: #FFEBCD">Sicil
								No* </label>
							<div class="controls">
								<input type="text" name="ID" placeholder="Sicil Numarası">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" style="color: #FFEBCD">Adiniz*
							</label>
							<div class="controls">
								<input type="text" name="ad" placeholder="Adiniz">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" style="color: #FFEBCD">Soyad*
							</label>
							<div class="controls">
								<input type="text" name="soyad" placeholder="Soyad">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" style="color: #FFEBCD">Telefon*
							</label>
							<div class="controls">
								<input type="text" name="telefon" placeholder="Telefon">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" style="color: #FFEBCD">Parola*
							</label>
							<div class="controls">
								<input type="password" name="password" placeholder="Parola">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" style="color: #FFEBCD">Unvan*
							</label>
							<div class="controls">
								<select name="unvanID">
									<%
										ArrayList<Object> unvanlar = database_proses
												.veri_getir("select unvanAd from tUnvan");
										int unvanID = 1;
										for (Object unvan_ad : unvanlar) {
									%>
									<option value="<%=unvanID%>"><%=unvan_ad%></option>
									<%
										unvanID++;
										}
									%>
								</select>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" style="color: #FFEBCD">idariGorev*
							</label>
							<div class="controls">
								<select name="idariGorevID">
									<%
										ArrayList<Object> gorevler = database_proses
												.veri_getir("select idariGorevAdi from tidariGorev");
										int gorevID = 1;
										for (Object gorev_ad : gorevler) {
									%>
									<option value="<%=gorevID%>"><%=gorev_ad%></option>
									<%
										gorevID++;
										}
									%>
								</select>
							</div>
						</div>
						<div class="control-group">
							<div class="controls">
								<button type="submit" class="btn">Tamamla</button>
							</div>
						</div>
					</fieldset>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>