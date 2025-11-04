// Auto growing textareas

function autoGrowTextArea (element) {
    element.style.height = 'auto';
    element.style.height = (element.scrollHeight) + 'px';
}

const textArea = document.querySelector("textarea")
textArea.addEventListener('input', () => autoGrowTextArea(textArea));

autoGrowTextArea(textArea); 

