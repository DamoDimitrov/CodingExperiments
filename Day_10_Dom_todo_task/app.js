const inputText = document.getElementById("inputText");
const button = document.getElementById("submitButton");
const todoList = document.getElementById("todoList");

if(button) {
    button.addEventListener("click", () => {
        if(inputText.value !== "") {
            const textValue = document.createElement("div");
            textValue.textContent = inputText.value;
            inputText.value = "";

            const li = document.createElement("li");
            li.setAttribute("class", "tasks");
            const removeButton = document.createElement("button");
            removeButton.addEventListener("click", function(e) {
                this.parentNode.remove();
            });

            const checkBox = document.createElement("input");
            checkBox.setAttribute("type", "checkbox");
            removeButton.textContent = "remove";

            li.appendChild(checkBox);
            li.appendChild(textValue);
            li.appendChild(removeButton);

            todoList.appendChild(li);
        }});
}