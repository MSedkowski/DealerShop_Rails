$("#new_warehouse").validate({
    //error place
    errorPlacement: function (error, element) {
        error.appendTo( element.parent("div").next("div") );
    },
//adding rule
    rules: {
        // username is required with max of 20 and min of 6
        "warehouse[element]":{
            required: true,
            minlength: 3
        },
        "warehouse[amount]":{
            required: true,
            number: true,
            min: 0
        }
    },
    //error messages
    messages: {
        "warehouse[element]":{
            required: "Należy podać nazwę elementu.",
            minlength: "Nazwa nie może być krótsza niż 3 znaki."
        },
        "warehouse[amount]":{
            required: "Należy podać liczbę.",
            number: "Niepoprawne znaki.",
            min: "Minimalna wartość to 0"

        }
    }
});
