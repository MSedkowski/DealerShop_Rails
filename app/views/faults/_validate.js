$("#new_fault").validate({
    //error place
    errorPlacement: function (error, element) {
        error.appendTo( element.parent("div").next("div") );
    },
//adding rule
    rules: {
        // username is required with max of 20 and min of 6
        "fault[name]":{
            required: true,
            minlength: 3
        },
        "fault[price]":{
            required: true,
            min: 1
        }
    },
    //error messages
    messages: {
        "fault[name]":{
            required: "Należy podać nazwę usługi.",
            minlength: "Nazwa nie może być krótsza niż 3 znaków"
        },
        "fault[price]":{
            required: "Należy podać cenę.",
            min: "Minimalna wartość to 1"
        }
    }
});
