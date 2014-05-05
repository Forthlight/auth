$(document).ready(function(){
    set_terms_path();

    $("#user_role").change(function() {
        set_terms_path();
    });
    
    function set_terms_path(){
        if($("#user_role").val() == "research"){
            $("#terms-conditions").attr("href", "/resources/terms_and_conditions_research.pdf");
        }
        else if($("#user_role").val() == "business"){
            $("#terms-conditions").attr("href", "/resources/terms_and_conditions_business.pdf");
        }
        else{
            $("#terms-conditions").attr("href", "/resources/terms_and_conditions_regular.pdf");
        }
    }
});
