/**
 * Created by Voskanyan on 12/28/2015.
 */
$(document).ready(function() {
    var password = $("#signUpForm").find('input[name="password"]');
    var confirmPassword = $("#signUpForm").find('input[name="confirmPassword"]');
    password.keyup(confirmPasswords);
    confirmPassword.keyup(confirmPasswords);
});

function confirmPasswords() {
    var passwordElement = $("#signUpForm").find('input[name="password"]');
    var confirmPasswordElement = $("#signUpForm").find('input[name="confirmPassword"]');
    var password = passwordElement.val();
    var confirmPassword = confirmPasswordElement.val();
    if(password.length < 6) {
        passwordElement.css("background-color", "#FFA4A4");
        $("#passwordMessage").html("Password is too short");
        $("#signUpForm").find('button').prop('disabled', true);
    }
    else {
        passwordElement.css("background-color", "#FFFFFF");
        $("#passwordMessage").html("");
        $("#signUpForm").find('button').prop('disabled', false);
        if(password != confirmPassword) {
            confirmPasswordElement.css("background-color", "#FFA4A4");
            $("#passwordMessage").html("Passwords doesn't match");
            $("#signUpForm").find('button').prop('disabled', true);
        }
        else {
            confirmPasswordElement.css("background-color", "#FFFFFF");
            $("#passwordMessage").html("");
            $("#signUpForm").find('button').prop('disabled', false);
        }
    }

}