$.validator.setDefaults({
    ignore: []
});

$("#new_vacation_request").validate({
    //error place
    errorPlacement: function (error, element) {
        error.appendTo( element.parent("div").next("div") );
    },
//adding rule
    rules: {
        "vacation_request[employee_id]":{
            required: true
        },
        "vacation_request[start_date]":{
            required: true
        },
        "vacation_request[end_date]":{
            required: true
        },
        "vacation_request[status]":{
            required: true
        }
    },
    //error messages
    messages: {
        "vacation_request[employee_id]":{
            required: "Należy wybrać pracownika."
        },
        "vacation_request[start_date]":{
            required: "Należy podać datę rozpoczęcia urlopu."
        },
        "vacation_request[end_date]":{
            required: "Należy podać datę zakończenia urlopu."
        },
        "vacation_request[status]":{
            required: "Należy wybrać status."
        }
    }
});