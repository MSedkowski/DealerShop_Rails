$.validator.setDefaults({
    ignore: []
});

$("#new_renting").validate({
    //error place
    errorPlacement: function (error, element) {
        error.appendTo( element.parent("div").next("div") );
    },
//adding rule
    rules: {
        "renting[rental_car_id]":{
            required: true
        },
        "renting[start_date]":{
            required: true
        },
        "renting[end_date]":{
            required: true
        },
        "renting[client_id]":{
            required: true
        }
    },
    //error messages
    messages: {
        "renting[rental_car_id]":{
            required: "Należy wybrać auto."
        },
        "renting[start_date]":{
            required: "Należy podać datę rozpoczęcia."
        },
        "renting[end_date]":{
            required: "Należy podać datę zakończenia."
        },
        "renting[client_id]":{
            required: "Należy wybrać klienta."
        }
    }
});