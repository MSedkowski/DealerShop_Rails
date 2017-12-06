$("#new_client").validate({
  //error place
  errorPlacement: function (error, element) {
    error.appendTo( element.parent("div").next("div") );
  },
//adding rule
  rules: {
  // username is required with max of 20 and min of 6
  "client[name]":{
    required: true,
    minlength: 3
  },
  "client[surname]":{
    required: true,
    minlength: 3
  },
  // email is required with format
  "client[email]": {
    required: true,
    email: true
  },
  "client[phone_number]": {
    pattern: /[0-9]+$/
  },
  // password is required
  "client[password]": {
    required: true
  },
  //password_confirmation is required and is the same with password
  "client[confirmation]": {
    required: true,
    equalTo: "#client_password"
  }
},
  //error messages
  messages: {
    "client[name]":{
      required: "Należy podać imię.",
      minlength: "Imię nie może być krótsze niż 3 znaków"
    },
    "client[surname]":{
      required: "Należy podać nazwisko.",
      minlength: "Nazwisko nie może być krótsze niż 3 znaków"
    },
    "client[email]":{
       required: "Należy podać adres e-mail",
       email: "Proszę podać poprawny adres e-mail adres@domena.pl"
    },
    "client[phone_number]": {
      pattern: "Podaj numer telefonu w formacie 9 cyfrowym"
    },
    "client[password]": {
       required: "Proszę podać hasło"
    },
    "client[confirmation]": {
       required: "Proszę ponownie podać hasło",
       equalTo: "Podane hasła różnią się"
     }
  }
});