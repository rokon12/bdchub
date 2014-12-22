<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">

	$(document).ready(function() {
		$(email).focus();
	});

</script>

	<div class="col-md-6 col-md-offset-3">
		<form class="form-horizontal"
			action="${pageContext.request.contextPath}/doforgotpassword"
			method="post">
			<fieldset>

				<!-- Form Name -->
				<legend>Forgot Password</legend>

				<!-- Text input-->
				<div class="control-group">
					<label class="control-label" for="email">Enter your email</label>
					<div class="controls">
						<input id="email" name="email" placeholder=""
							class="input-xlarge" type="text">

					</div>
				</div>

				<div class="alert-danger">
					<c:if test="${param.error != null}">
						Account associated with this email not found. Create new account.
					</c:if>
									
				</div>

				<!-- Button -->
				<div class="control-group">
					<label class="control-label" for="submit"></label>
					<div class="controls">
						<button id="submit" name="submit" class="btn btn-primary">Submit</button>
					</div>
				</div>

			</fieldset>
		</form>
		<p />
		<p><a href="<c:url value='/newaccount' />">Create new account</a></p>
		<p><a href="<c:url value='/login' />">Login</a></p>
	</div>
