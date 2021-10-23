function validationmultistepform() {
	//Introduction Variables
	const fullname = document.getElementById('fullname');
	const username = document.getElementById('username');
	const birthday = document.getElementById('birthday');
	const admcampus = document.getElementById('campusname');
	const classadv = document.getElementById('advisorname');
	const jnyr = document.getElementById('joiningyear');
	const bloodgrp = document.getElementById('bloodgroup');
	const examstate = document.getElementById('examstate');
	const mothertongue = document.getElementById('mothertongue');
	const permaddress = document.getElementById('permaddress');

	//Education Variables


	//Parent Variables
	
    document.getElementById("submit-btn").addEventListener('click', e => {
		e.preventDefault();
		checkInputs();
	});

	function checkInputs() {
		// trim to remove the whitespaces - intro
		const fullnameValue = fullname.value.trim();
        const usernameValue = username.value.trim();
		const birthdayValue = birthday.value.trim();
		const admcampusValue = admcampus.value.trim();
		const classadvValue = classadv.value.trim();
		const jnyrValue = jnyr.value.trim();
		const bloodgrpValue = bloodgrp.value.trim();
		const examstateValue = examstate.value;
		const mothertongueValue = mothertongue.value.trim();
		const permaddressValue = permaddress.value.trim();

		// trim to remove the whitespaces - education


		// trim to remove the whitespaces - parents

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

		if(admcampusValue == '') {
			setErrorFor(admcampus, '*Campus cannot be blank');
		}else{
			setSuccessFor(admcampus, admcampusValue);
		}

		if(classadvValue == '') {
			setErrorFor(classadv, '*Advisor Name cannot be blank');
		}else{
			setSuccessFor(classadv, classadvValue);
		}

		if(jnyrValue == '') {
			setErrorFor(joiningyear, '*Joining Year cannot be blank');
		} else if (!isJoiningYear(jnyrValue)) {
			setErrorFor(joiningyear, '*Not a valid Joining Year');
		}else {
			setSuccessFor(joiningyear, jnyrValue);
		}

		if(bloodgrpValue == '') {
			setErrorFor(bloodgroup, '*Bloodgroup cannot be blank');
		} else if (!isBloodGroup(bloodgrpValue)) {
			setErrorFor(bloodgroup, '*Not a valid Blood Group');
		}else {
			setSuccessFor(bloodgroup, bloodgrpValue);
		}

		if(examstateValue == '') {
			setErrorFor(examstate, '*Exam State cannot be blank');
		} else if (!isExamState(examstateValue)) {
			setErrorFor(examstate, '*Not a valid Exam State');
		}else {
			setSuccessFor(examstate, examstateValue);
		}

		if(mothertongueValue == '') {
			setErrorFor(mothertongue, '*Mother Tongue cannot be blank');
		} else if (!isMotherTongue(mothertongueValue)) {
			setErrorFor(mothertongue, '*Not a valid Mother Tongue');
		}else {
			setSuccessFor(mothertongue, mothertongueValue);
		}

		if(permaddressValue == '') {
			setErrorFor(permaddress, '*Permanent Address cannot be blank');
		}else{
			setSuccessFor(permaddress, permaddressValue);
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

	function isJoiningYear(joiningyear) {
		return /^(19|20)\d{2}$/.test(joiningyear);
	}

	function isBloodGroup(bloodgroup) {
		return /^(A|B|AB|O)[+-]$/i.test(bloodgroup);
	}

	function isExamState(examstate) {
		return /^(Tamil Nadu|Kerala|Karnataka|Andhra Pradesh)$/.test(examstate);
	}

	function isMotherTongue(mothertongue) {
		return /^(Tamil|Malayalam|Kannada|Telugu|Hindi|English)$/.test(mothertongue);
	}
}