$.validator.setDefaults({
    ignore: []
});

$("#new_employee").validate({
    //error place
    errorPlacement: function (error, element) {
        error.appendTo( element.parent("div").next("div") );
    },
//adding rule
    rules: {
        "employee[name]":{
            required: true,
            minlength: 3
        },
        "employee[surname]":{
            required: true,
            minlength: 3
        },
        "employee[email]":{
            required: true,
            email: true
        },
        "employee[phone_number]": {
            required: true,
            pattern: /[0-9]{9}\b/
        },
        "employee[password]": {
            required: true
        },
        "employee[confirmation]": {
            required: true,
            equalTo: "#employee_password"
        },
        "employee[position]":{
            required: true
        },
        "employee[salary]":{
            required: true,
            min: 2000.00
        },
        "employee[days_of_paid_leave]":{
            required: true,
            min: 0
        },
        "employee[date_of_employment]":{
            required: true
        },
        "employee[bonuses]":{
            required: true,
            min: 0.0
        }
    },
    //error messages
    messages: {
        "employee[name]":{
            required: "Należy podać imię.",
            minlength: "Imie nie może być krótsze niż 3 znaki."
        },
        "employee[surname]":{
            required: "Należy podać nazwisko.",
            minlength: "Nazwisko nie może być krótsze niż 3 znaki."
        },
        "employee[email]":{
            required: "Należy podać adres e-mail.",
            email: "Proszę podać adres e-mail w formacie nazwa@domena.pl"
        },
        "employee[phone_number]": {
            required: "Proszę podać numer telefonu",
            pattern: "Proszę podać poprawny 9 cyfrowy numer telefonu."
        },
        "employee[password]": {
            required: "Proszę podać hasło."
        },
        "employee[confirmation]": {
            required: "Proszę podać hasło ponownie.",
            equalTo: "Podane hasła różnią się."
        },
        "employee[position]":{
            required: "Proszę wybrać zajmowane stanowisko."
        },
        "employee[salary]":{
            required: "Proszę podać wynagrodzenie.",
            min: "Minimalna kwota wynagrodzenia to 2000.00"
        },
        "employee[days_of_paid_leave]":{
            required: "Proszę podać ilość płatnych dni wolnych.",
            min: "Minimalna ilość dni wolnych to 0."
        },
        "employee[date_of_employment]":{
            required: "Proszę podać datę zatrudnienia."
        },
        "employee[bonuses]":{
            required: "Proszę podać wysokość premii, jeśli brak to 0.0",
            min: "Minimalna wartość premii to 0.0"
        }
    }
});