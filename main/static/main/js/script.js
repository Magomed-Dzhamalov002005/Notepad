
// Auto growing textareas

function autoGrowTextArea (element) {
    element.style.height = 'auto';
    element.style.height = (element.scrollHeight) + 'px';
}

const textArea = document.querySelector("textarea")
textArea.addEventListener('input', () => autoGrowTextArea(textArea));

autoGrowTextArea(textArea); 


let task_delete = document.getElementById("task-delete");

task_delete.addEventListener("click", function(event){
    let delete_task = confirm("You're deleting a note. Continue?");
    delete_task ? 1 : event.preventDefault();
});