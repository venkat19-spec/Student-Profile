function validationmultistepform() {
	const fullname = document.getElementById('fullname');
	const username = document.getElementById('username');
	const birthday = document.getElementById('birthday');
	/*DOCUMENT ELEMENT VALUES*/
	const birthcertificate = document.getElementById('birthcertificate');
	const aadharcard = document.getElementById('aadharcard');
	
	/*DOCUMENT BUTTONS*/
	const custombutton1 = document.getElementById('custom-btn-birth');
	const custombutton2 = document.getElementById('custom-btn-aad');
	

    document.getElementById("submit-btn").addEventListener('click', e => {
		e.preventDefault();
		checkInputs();
		checkBirthDate();
		checkAadharCard();
	});

	function checkInputs() {
		// trim to remove the whitespaces
		const fullnameValue = fullname.value.trim();
        const usernameValue = username.value.trim();
		const birthdayValue = birthday.value.trim();

		if(fullnameValue == '') {
			setErrorFor(fullname, '*Fullname cannot be blank');
		} else if (!isFullName(fullnameValue)) {
			setErrorFor(fullname, '*Not a valid name');
		}else {
			setSuccessFor(fullname);
		}

        if(usernameValue == '') {
			setErrorFor(username, '*College ID cannot be blank');
		} else if (!isUserName(usernameValue)) {
			setErrorFor(username, '*Not a valid College ID');
		}else {
			setSuccessFor(username);
		}

		if(birthdayValue == '') {
			setErrorFor(birthday, '*Select a valid birthday');
		}else{
			setSuccessFor(birthday, birthdayValue);
		}
		
	}

	function checkBirthDate() {
		custombutton1.addEventListener("click", function() {
			birthcertificate.click();
		});

		birthcertificate.addEventListener("change", function() {
	
			if(birthcertificate.value) {
				setSuccess(birthcertificate, 'File Uploaded:' + birthcertificate.value.match(/[\/\\]([\w\d\s\.\-\(\)]+)$/)[1]);
			}else{
				setError(birthcertificate, '*No file has been uploaded');
			}
			
		});

	}

	function checkAadharCard() {
		custombutton2.addEventListener("click", function() {
			aadharcard.click();
		});

		aadharcard.addEventListener("change", function() {
	
			if(aadharcard.value) {
				setSuccess(aadharcard, 'File Uploaded:' + aadharcard.value.match(/[\/\\]([\w\d\s\.\-\(\)]+)$/)[1]);
			}else{
				setError(aadharcard, '*No file has been uploaded');
			}
			
		});

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

	function setSuccess(input,message) {
		const classControl = input.parentElement;
		const small = classControl.querySelector('small');
		classControl.className = 'document-box success';
		small.innerText = message;
	}

	function setError(input,message) {
		const classControl = input.parentElement;
		const small = classControl.querySelector('small');
		classControl.className = 'document-box failure';
		small.innerText = message;
	}
	
	function isFullName(fullname) {
		return /^([a-zA-Z'-.]+ [a-zA-Z'-.]+)$/.test(fullname);
	}	
    function isUserName(username) {
		return /^(CB\.EN\.U4CSE1[0-9][0-9][0-9][0-9]|CB\.EN\.U4ECE1[0-9][0-9][0-9][0-9]|CB\.EN\.U4MEC1[0-9][0-9][0-9][0-9]|CB\.EN\.U4EEE1[0-9][0-9][0-9][0-9]|CB\.EN\.U4CHE1[0-9][0-9][0-9][0-9]|CB\.EN\.U4AERO1[0-9][0-9][0-9][0-9]|[1-9][1-9][1-9][1-9]|WA[1-10])$/.test(username);
	}
}