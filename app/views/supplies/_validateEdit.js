$.validator.setDefaults({
    ignore: []
});

$("#edit_supply").validate({
    //error place
    errorPlacement: function (error, element) {
        error.appendTo( element.parent("div").next("div") );
    },
//adding rule
    rules: {
        "supply[supplier_id]":{
            required: true
        },
        "supply[status]":{
            required: true
        }
    },
    //error messages
    messages: {
        "supply[supplier_id]":{
            required: "Należy wybrać dostawcę."
        },
        "supply[status]":{
            required: "Należy wybrać status."
        }
    }
});

$.validator.setDefaults({
    ignore: []
});