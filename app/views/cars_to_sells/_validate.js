$.validator.setDefaults({
    ignore: []
});

$("#new_cars_to_sell").validate({
    //error place
    errorPlacement: function (error, element) {
        error.appendTo( element.parent("div").next("div") );
    },
//adding rule
    rules: {
        "cars_to_sell[brand]":{
            required: true,
            minlength: 2
        },
        "cars_to_sell[model]":{
            required: true,
            minlength: 2
        },
        "cars_to_sell[price]":{
            required: true,
            min: 0
        },
        "cars_to_sell[additional_information]":{
            required: true
        }
    },
    //error messages
    messages: {
        "cars_to_sell[brand]":{
            required: "Należy podać markę.",
            minlength: "Marka nie może być krótsza niż 2 znaki"
        },
        "cars_to_sell[model]":{
            required: "Należy podać model.",
            minlength: "Nazwa modelu nie może być krótsza niż 3 znaki"
        },
        "cars_to_sell[price]":{
            required: "Należy podać cenę pojazdu.",
            min: "Cena nie może być niższa niż 0."
        },
        "cars_to_sell[additional_information]":{
            required: "Należy podać informacje dodatkowe takie jak wyposażenie, napęd itd.."
        }
    }
});