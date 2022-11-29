// accordion onclick
const section = document.querySelectorAll(".section");

section.forEach((section) => {
  section.addEventListener("click", (e) => {
    section.classList.toggle("active");
    // const subsec = document.querySelector('.subsec');
    const subsec = section.nextElementSibling;
    if (section.classList.contains("active")) {
      subsec.style.maxHeight = subsec.scrollHeight + "px";
    } else {
      subsec.style.maxHeight = 0;
    }
  });
});

// accordion onclick for menu
const title = document.querySelectorAll(".title");

const set = document.querySelectorAll(".set-container");

title.forEach((title) => {
  title.addEventListener("click", (e) => {
    title.classList.toggle("active");
    set.classList.toggle("active");

    // if(title.classList.contains("active")){
    //     set.style.height = auto;
    // }
    // else {
    //     set.style.height = 0;
    // }
  });
});

// using whole <a> tag to toggle checkbox

function toggleCheckbox(buttonId, checkboxName) {
  document.getElementById(buttonId).onclick = function () {
    var checkboxes = document.getElementsByName(checkboxName);
    for (var checkbox of checkboxes) {
      checkbox.checked = !checkbox.checked;
    }
  };
}

toggleCheckbox("test", "testcheck");
toggleCheckbox("apn", "apncheck");
toggleCheckbox("site", "sitecheck");

// expandable search bar

$(".fa-search").click(function () {
  $(".icon").toggleClass("active");
  $("input[type=text]").toggleClass("active");
});

// right div toggle popup / close any already opened divs

function togglePopup(popupid) {
  const popup = document.querySelectorAll(".popup");
  popup.forEach((popup) => {
    if (popup.classList.contains("active")) {
      popup.classList.toggle("active");
    }
  });

  document.getElementById(popupid).classList.toggle("active");
}

function closePopup(popupid) {
  document.getElementById(popupid).classList.toggle("active");
}

// search bar

function process() {
  var map =
    "https://gis.beverlyhills.org/VBHforCS/PublicwSearch/?mobileBreakPoint=5&Q=" +
    document.getElementById("search").value;
  var popup =
    "https://cs.beverlyhills.org/cs/summary.jsp?_ent=lso&_type=lso&_typeid=" +
    document.getElementById("search").value;
  self.frames["iframe_search"].location.href = popup;
  self.frames["iframe_map"].location.href = map;

  return false;
}
