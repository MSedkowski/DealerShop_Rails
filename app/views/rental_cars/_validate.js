$.validator.setDefaults({
    ignore: []
});

$("#new_rental_car").validate({
    //error place
    errorPlacement: function (error, element) {
        error.appendTo( element.parent("div").next("div") );
    },
//adding rule
    rules: {
        "rental_car[brand]":{
            required: true,
            minlength: 3
        },
        "rental_car[model]":{
            required: true,
            minlength: 2
        },
        "rental_car[additional_information]":{
            required: true
        }
    },
    //error messages
    messages: {
        "rental_car[brand]":{
            required: "Należy podać markę.",
            minlength: "Marka nie może być krótsza niż 3 znaki"
        },
        "rental_car[model]":{
            required: "Należy podać model.",
            minlength: "Nazwa modelu nie może być krótsza niż 2 znaki"
        },
        "rental_car[additional_information]":{
            required: "Należy podać informację dodatkowe. Ilość miejsc, wyposażenie itd."
        }
    }
});