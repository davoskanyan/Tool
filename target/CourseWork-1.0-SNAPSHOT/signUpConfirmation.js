$().ready(function() {
    $("#signUpForm").validate({
        rules: {
            firstName: "required",
            lastName: "required",
            login: {
                required: true,
                minlength: 6
            },
            password: {
                required: true,
                minlength: 6
            },
            confirmPassword: {
                required: true,
                minlength: 6,
                equalTo: "#password"
            }
        },
        messages: {
            firstName: "Please enter your first name",
            lastName: "Please enter your last name",
            login: {
                required: "Please enter a username",
                minlength: "Your username must consist of at least 6 characters"
            },
            password: {
                required: "Please provide a password",
                minlength: "Your password must be at least 6 characters long"
            },
            confirmPassword: {
                required: "Please provide a password",
                minlength: "Your password must be at least 6 characters long",
                equalTo: "Please enter the same password as above"
            }
        }
    });
});