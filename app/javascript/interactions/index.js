// interaction handlers for navbar burger menu
// See https://stackoverflow.com/questions/53539461/how-do-i-use-vanilla-javascript-to-write-a-toggle-function-i-wrote-in-jquery
// and https://stackoverflow.com/questions/56086445/domcontentloaded-not-firing-after-navigation-but-fires-on-page-reload-when-using

document.addEventListener("turbolinks:load", (event) => {
  const burgerMenu = document.getElementById("burger-menu");
  const targetId = burgerMenu.getAttribute("data-target");
  const targetMenu = document.getElementById(targetId);
  
  alert("domcontentloaded")
  burgerMenu.addEventListener("click", ()=>{
    targetMenu.classList.toggle("is-active");
  });  
});
