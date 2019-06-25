<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<form:form cssClass="form" action="${pageContext.request.contextPath}/login" method="POST">
				<div class="form-group">
					<label for="username">Username</label> <input type="text"
						class="form-control" id="username" name="username" />
				</div>

				<div class="form-group">
					<label for="password">Password</label> <input type="password"
						class="form-control" id="password" name="password" />
				</div>

				<div>
					<input type="submit" class="btn btn-success" value="Login" />
				</div>
			</form:form>
		</div>
	</div>
</div>