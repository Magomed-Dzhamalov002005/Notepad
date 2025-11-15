let user_delete = document.getElementById("user-delete");

user_delete.addEventListener("click", function(event){
    let user_choise = confirm("Are you sure?");
    user_choise ? 1 : event.preventDefault();
});