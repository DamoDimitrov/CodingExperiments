/Opening and closing the menu/ 

const button = document.querySelector(".left-side i");
button.addEventListener("click", () => {
    const menu = document.querySelector(".main-section-menu-wrapper");
    if(menu.className !== "main-section-menu-wrapper active") {
        menu.classList.add("active");
    } else {
        menu.classList.remove("active");
    }
});

/Hover over menu links/ 

const links = document.querySelectorAll(".main-section-menu-sections-list-items");

links.forEach(link => {
    link.addEventListener("mouseover", () => {
    link.classList.add("hover");
})});

links.forEach(link => {
    link.addEventListener("mouseout", () => {
    link.classList.remove("hover");
})});
