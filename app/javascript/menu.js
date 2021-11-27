$(function() {

  $('.menu-trigger').click(function () {
      $('.menu').slideToggle(300);
    }
    // function () {
    //   $('.menu').hide();
    // }
  );
});

// const menu = () => {
//   const menuTrigger = document.getElementsByClassName("menu-trigger");
//   const menu = document.getElementsByClassName("menu");

//   menuTrigger.addEventListener('click', () => {
//     if (menu.getAttribute("style") == "display:block;" ) {
//       menu.removeAttribute("style", "display:block;");
//     } else {
//       menu.setAttribute("style", "display:block;");
//     }
//   });
// };

// window.addEventListener('load', menu)