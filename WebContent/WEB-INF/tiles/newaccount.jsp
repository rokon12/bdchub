<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<div class="col-md-6 col-md-offset-3">
	<sf:form method="post" class="form-horizontal"
		action="${pageContext.request.contextPath}/createaccount"
		commandName="user">
		<fieldset>

			<!-- Form Name -->
			<div class="form-group">
				<h1>Create User</h1>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="control-label" for="fullname">Full Name</label>
				<sf:input id="fullname" path="fullname" name="fullname"
					placeholder="enter full name" class="form-control" type="text" />
				<sf:errors path="fullname" cssClass="alert-danger"></sf:errors>
			</div>


			<!-- Text input-->
			<div class="form-group">
				<label class="control-label" for="name">Username</label>
					<sf:input id="username" path="username" name="username"
						placeholder="enter name" class="form-control" type="text" />
					<sf:errors path="username" cssClass="alert-danger"></sf:errors>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="control-label" for="email">Email</label>
					<sf:input id="email" path="email" name="email"
						placeholder="enter valid email" class="form-control" type="text" />
					<sf:errors path="email" cssClass="alert-danger"></sf:errors>
			</div>

			<!-- Password input-->
			<div class="form-group">
				<label class="control-label" for="password">Password</label>
				<div class="controls">
					<sf:input id="password" path="password" name="password"
						class="form-control" type="password" />
					<sf:errors path="password" cssClass="alert-danger"></sf:errors>

				</div>
			</div>

			<!-- Confirm Password input-->
			<div class="form-group">
				<label class="control-label" for="confirmpassword">Confirm
					Password</label>
				<div class="controls">
					<input id="confirmpassword" name="confirmpassword"
						class="form-control" type="password" />
				</div>
			</div>

			<!-- Button -->
			<div class="form-group">
				<label class="control-label" for="submit"></label>
					<button id="submit" name="submit" class="btn btn-primary">Create
						User</button>
			</div>

		</fieldset>
	</sf:form>
</div>

<script>
	var password1 = document.getElementById('password');
	var password2 = document.getElementById('confirmpassword');

	var checkPasswordValidity = function() {
		if (password1.value != password2.value) {
			password1
					.setCustomValidity("<fmt:message key='UnmatchedPasswords.user.password' />");
		} else {
			password1.setCustomValidity('');
		}
	};

	password1.addEventListener('change', checkPasswordValidity, false);
	password2.addEventListener('change', checkPasswordValidity, false);

	var form = document.getElementById('user');
	form.addEventListener('submit', function() {
		checkPasswordValidity();
		if (!this.checkValidity()) {
			event.preventDefault();
			//Implement you own means of displaying error messages to the user here.
			password1.focus();
		}
	}, false);
</script>
