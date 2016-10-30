$(document).ready(function () {
    $(this).on('click', ".button-list", function () {
        var name = $(this).data("name");
        alert (name);

        $.ajax({
            url: "/submit?" + params
        }).done(function(result) {
            console.log(result)
            // $( this ).addClass( "done" );
        }).catch(function(e) {
            console.log(e);
        });
    });
});