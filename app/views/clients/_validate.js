$("#new_client").validate({
  //error place
  errorPlacement: function (error, element) {
    error.insertBefore(element);
  },
//adding rule
  rules: {
  // username is required with max of 20 and min of 6
  "client[name]":{
    required: true,
    maxlength: 20,
    minlength: 6
  },
  "client[surname]":{
    required: true,
    maxlength: 20,
    minlength: 6
  },
  // email is required with format
  "client[email]": {
    required: true,
    email: true
  },
  // password is required
  "client[password]": {
    required: true
  },
  //password_confirmation is required and is the same with password
  "client[password_confirmation]": {
    required: true,
    equalTo: "#client_password"
  },
},
  //error messages
  messages: {
    "client[name]":{
      required: "Należy podać imię.",
      maxlength: "Imię może zawierać maksymalnie 20 znaków",
      minlength: "Imię nie może być krótsze niż 6 znaków"
    // },
    // email:{
    //   required: "Email is required",
    //   email: "Please enter a valid email address"
    // },
    // password: {
    //   required: "Password is required"
    // },
    // password_confirmation: {
    //   required: "Password confirmation is required",
    //   equalTo: "Password and password confirmation must be same"
     }
  }
});