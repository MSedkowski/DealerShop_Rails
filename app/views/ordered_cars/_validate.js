$.validator.setDefaults({
    ignore: []
});

$("#new_ordered_car").validate({
    //error place
    errorPlacement: function (error, element) {
        error.appendTo( element.parent("div").next("div") );
    },
//adding rule
    rules: {
        "ordered_car[car_id]":{
            required: true
        },
        "ordered_car[client_id]":{
            required: true
        },
        "ordered_car[status]":{
            required: true
        }
    },
    //error messages
    messages: {
        "ordered_car[car_id]":{
            required: "Należy wybrać auto."
        },
        "ordered_car[client_id]":{
            required: "Należy wybrać klienta."
        },
        "ordered_car[status]":{
            required: "Należy wybrać status."
        }
    }
});