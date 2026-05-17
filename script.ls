const password = document.getElementById("password");
const strengthBar = document.getElementById("strength-bar");
const strengthText = document.getElementById("strength-text");

password.addEventListener("input", () => {

    let pass = password.value;
    let score = 0;

    // Regex Checks
    if (pass.length >= 8) score++;
    if (/[A-Z]/.test(pass)) score++;
    if (/[a-z]/.test(pass)) score++;
    if (/[0-9]/.test(pass)) score++;
    if (/[^A-Za-z0-9]/.test(pass)) score++;

    // Strength Levels
    if (score === 1) {
        strengthBar.style.width = "20%";
        strengthBar.style.background = "red";
        strengthText.innerHTML = "Strength: Weak";
    }
    else if (score === 2 || score === 3) {
        strengthBar.style.width = "60%";
        strengthBar.style.background = "orange";
        strengthText.innerHTML = "Strength: Medium";
    }
    else if (score === 4) {
        strengthBar.style.width = "80%";
        strengthBar.style.background = "blue";
        strengthText.innerHTML = "Strength: Strong";
    }
    else if (score === 5) {
        strengthBar.style.width = "100%";
        strengthBar.style.background = "green";
        strengthText.innerHTML = "Strength: Very Strong";
    }
    else {
        strengthBar.style.width = "0%";
        strengthText.innerHTML = "Strength:";
    }

});