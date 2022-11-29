// accordion onclick
const section = document.querySelectorAll('.section');

section.forEach(section => {
    section.addEventListener("click", e => {
        section.classList.toggle("active");
        // const subsec = document.querySelector('.subsec');
        const subsec = section.nextElementSibling;
        if(section.classList.contains("active")){
            subsec.style.maxHeight = subsec.scrollHeight + "px";
        }
        else {
            subsec.style.maxHeight = 0;
        }
    })
})

// using whole <a> tag to toggle checkbox

function toggleCheckbox(buttonId, checkboxName){
    document.getElementById(buttonId).onclick = function() {
        var checkboxes = document.getElementsByName(checkboxName);
        for (var checkbox of checkboxes) {
            checkbox.checked = !checkbox.checked;
        }
    }
}

toggleCheckbox('test', 'testcheck');
toggleCheckbox('apn', 'apncheck');
toggleCheckbox('site', 'sitecheck');

// expandable search bar

$(".fa-search").click(function(){
    $(".icon").toggleClass("active");
     $("input[type=text]").toggleClass("active");
})

// right div toggle popup / close any already opened divs

function togglePopup(popupid){
    
    const popup = document.querySelectorAll('.popup');
    popup.forEach(popup => {
        if(popup.classList.contains("active")){
            popup.classList.toggle("active");
        }  
    })
    
    document.getElementById(popupid).classList.toggle("active");
}

function closePopup(popupid){
    document.getElementById(popupid).classList.toggle("active");
}

