$(document).ready(function () {
    var name = "";
    $(this).on('click', ".button-list", function () {
        var name = $(this).data("name");
        alert (name);

        $.ajax({
            url: "/submit?name = " + name
        }).success(function(result) {
            console.log(result)
            // $( this ).addClass( "done" );
        }).catch(function(e) {
            console.log(e);
        });
    });
    alert (name);
    $(this).on('click', ".button-list-page2", function () {
        var name_group = $(this).data("name");
        alert (name_group);

        $.ajax({
            url: "/submit?name_group = " + name_group
        }).success(function(result) {
            console.log(result)
            // $( this ).addClass( "done" );
        }).catch(function(e) {
            console.log(e);
        });
    });
});