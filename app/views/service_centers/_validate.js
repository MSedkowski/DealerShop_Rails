$.validator.setDefaults({
    ignore: []
});

$("#new_service_center").validate({
    //error place
    errorPlacement: function (error, element) {
        error.appendTo( element.parent("div").next("div") );
    },
//adding rule
    rules: {
        "service_center[brand]":{
            required: true,
            minlength: 3
        },
        "service_center[model]":{
            required: true,
            minlength: 3
        },
        "service_center[license_plate]":{
            required: true
        },
        "service_center[status]":{
            required: true
        },
        "service_center[client_id]":{
            required: true
        },
        "service_center[employee_id]":{
            required: true
        }
    },
    //error messages
    messages: {
        "service_center[brand]":{
            required: "Należy podać markę.",
            minlength: "Marka nie może być krótsza niż 3 znaki"
        },
        "service_center[model]":{
            required: "Należy podać model.",
            minlength: "Nazwa modelu nie może być krótsza niż 3 znaki"
        },
        "service_center[license_plate]":{
            required: "Należy wybrać numer rejestracyjny pojazdu."
        },
        "service_center[status]":{
            required: "Należy wybrać status zlecenia."
        },
        "service_center[client_id]":{
            required: "Należy wybrać klienta."
        },
        "service_center[employee_id]":{
            required: "Należy przypisać pracownika."
        }
    }
});