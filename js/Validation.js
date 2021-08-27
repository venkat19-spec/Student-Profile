function validation(){
	const form = document.getElementById('form');
	const fullname = document.getElementById('fullname');
	const username = document.getElementById('username');
	const email = document.getElementById('email');
	const phoneno = document.getElementById('phoneno');
	const pass1 = document.getElementById('pass1');
	const pass2 = document.getElementById('pass2');

	document.getElementById("btn").addEventListener('click', e => {
		e.preventDefault();
		checkInputs();
		checkRadioButtons();
	});

	function checkInputs() {
		// trim to remove the whitespaces
		const fullnameValue = fullname.value.trim();
		const usernameValue = username.value.trim();
		const emailValue = email.value.trim();
		const phonenoValue = phoneno.value.trim();
		const passwordValue = pass1.value.trim();
		const password2Value = pass2.value.trim();

		if(fullnameValue === '') {
			setErrorFor(fullname, '*Fullname cannot be blank');
		} else if (!isFullName(fullnameValue)) {
			setErrorFor(fullname, '*Not a valid name');
		}else {
			setSuccessFor(fullname);
		}
		
		if(usernameValue === '') {
			setErrorFor(username, '*College ID cannot be blank');
		} else if (!isUserName(usernameValue)) {
			setErrorFor(username, '*Not a valid College ID');
		}else {
			setSuccessFor(username);
		}
		
		if(emailValue === '') {
			setErrorFor(email, '*Email cannot be blank');
		} else if (!isEmail(emailValue)) {
			setErrorFor(email, '*Not a Valid Email');
		} else {
			setSuccessFor(email);
		}

		if(phonenoValue === '') {
			setErrorFor(phoneno, '*Phone Number cannot be blank');
		} else if (!isPhoneNo(phonenoValue)) {
			setErrorFor(phoneno, '*Not a Valid Phone Number');
		}else {
			setSuccessFor(phoneno);
		}
		
		if(passwordValue === '') {
			setErrorFor(pass1, '*Password cannot be blank');
		} else {
			setSuccessFor(pass1);
		}
		
		if(password2Value === '') {
			setErrorFor(pass2, '*Confirm Password cannot be blank');
		} else if(passwordValue !== password2Value) {
			setErrorFor(pass2, '*Passwords do not match!');
		} else{
			setSuccessFor(pass2);
		}
	}
	/*===========TEST FUNCTIONS FOR INPUT BOXES============*/
	function setErrorFor(input, message) {
		const classControl = input.parentElement;
		const small = classControl.querySelector('small');
		classControl.className = 'input-box failure';
		small.innerText = message;
	}

	function setSuccessFor(input) {
		const classControl = input.parentElement;
		classControl.className = 'input-box success';
	}
	
	function isFullName(fullname) {
		return /^([a-zA-Z'-.]+ [a-zA-Z'-.]+)$/.test(fullname);
	}	
	function isUserName(username) {
		return /^(CB\.EN\.U4CSE1[0-9][0-9][0-9][0-9]|CB\.EN\.U4ECE1[0-9][0-9][0-9][0-9]|CB\.EN\.U4MEC1[0-9][0-9][0-9][0-9]|CB\.EN\.U4EEE1[0-9][0-9][0-9][0-9]|CB\.EN\.U4CHE1[0-9][0-9][0-9][0-9]|CB\.EN\.U4AERO1[0-9][0-9][0-9][0-9]|[1-9][1-9][1-9][1-9]|WA[1-10])$/.test(username);
	}
	function isEmail(email) {
		return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(email);
	}
	function isPhoneNo(phoneno) {
		return /^[6-9]\d{9}$/.test(phoneno);
	}

	/*==============END==================*/
	function checkRadioButtons() {
		var getSelectedValue = document.querySelector('input[name="gender"]:checked');
		if (getSelectedValue !== null) {
			setSuccess(messages, "Gender is checked!");
		} else if (getSelectedValue === null) {
			setError(messages, "**Gender is not checked!");
		}
	}
	/*===========TEST FUNCTIONS FOR RADIO BUTTONS============*/
	function setError(input, message) {
		const classControl = input.parentElement;
		const small = classControl.querySelector('small');
		classControl.className = 'gender-details failure';
		small.innerText = message;
	}
	function setSuccess(input, message) {
		const classControl = input.parentElement;
		const small = classControl.querySelector('small');
		classControl.className = 'gender-details success';
		small.innerText = message;
	}
} 