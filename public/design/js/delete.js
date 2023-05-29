
$('.delete').click(function(e){

    e.preventDefault();

    var result = confirm("هل تريد الحذف ؟");

    if (result) {
        $(this).closest('form').submit();
    }  
    
});