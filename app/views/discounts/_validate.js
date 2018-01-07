$.validator.setDefaults({
    ignore: []
});

$("#new_discount").validate({
    //error place
    errorPlacement: function (error, element) {
        error.appendTo( element.parent("div").next("div") );
    },
//adding rule
    rules: {
        "discount[discount_name]":{
            required: true,
            minlength: 3
        },
        "discount[start_date]":{
            required: true
        },
        "discount[end_date]":{
            required: true
        },
        "discount[percentage_value]":{
            required: true,
            min: 1,
            max: 100
        }
    },
    //error messages
    messages: {
        "discount[discount_name]":{
            required: "Należy podać nazwę zniżki.",
            minlength: "Nazwa zniżki nie może być krótsza niż 2 znaki"
        },
        "discount[start_date]":{
            required: "Należy podać początek obowiązywania zniżki."
        },
        "discount[end_date]":{
            required: "Należy podać koniec obowiązywania zniżki."
        },
        "discount[percentage_value]":{
            required: "Należy podać procentową wartość zniżki.",
            min: "Minimalna wartość to 1%.",
            max: "Maksymalna wartość zniżki to 100%."
        }
    }
});