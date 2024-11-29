



let selectedpage = true;
let lastcoords = null;
let selectedtype = null;
$(document).ready(function () {
  $("#inputsearchclass").on("keyup", function () {
    var value = $(this).val().toLowerCase();
    $("#mainadminpanel div").filter(function () {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});




$(document).on("click", ".imgbutton", function () {
  $.post("https://codem-report/PlayDropSound", JSON.stringify({}));
  selectedtype = 'BUG'
  $('.generalimage').css('display', 'none');
  $('.selectext').css('display', 'none');
  $('.imgselect').css('display', 'none');
  $('.maintext').css('display', 'none');
  $('.maintext2').css('display', 'block');
  $('.bugreport').css('display', 'block');
  $('.playerid').css('display', 'none');
  
});

$(document).on("click", ".imgplayer", function () {
  $.post("https://codem-report/PlayDropSound", JSON.stringify({}));
  selectedtype = 'PLAYER';
  $('.playerid').css('display', 'block');
  $('.generalimage').css('display', 'none');
  $('.selectext').css('display', 'none');
  $('.imgselect').css('display', 'none');
  $('.maintext').css('display', 'none');
  $('.maintext2').css('display', 'none');
  $('.maintext3').css('display', 'block');
  $('.bugreport').css('display', 'block');
});
$(document).on("click", ".imgother", function () {
  $.post("https://codem-report/PlayDropSound", JSON.stringify({}));
  selectedtype = 'OTHER';
  $('.playerid').css('display', 'block');
  $('.generalimage').css('display', 'none');
  $('.selectext').css('display', 'none');
  $('.imgselect').css('display', 'none');
  $('.maintext').css('display', 'none');
  $('.maintext2').css('display', 'none');
  $('.maintext3').css('display', 'none');
  $('.maintext4').css('display', 'block');
  $('.bugreport').css('display', 'block');
});


$(document).on("click", ".closeimg", function () {
  $.post("https://codem-report/PlayDropSound", JSON.stringify({}));
  $('.container').fadeOut(500);
  $('.adminpanel').fadeOut(500);
  $.post("https://codem-report/closepage");
  $('.maintext2').css('display', 'none');
  $('.maintext4').css('display', 'none');
  $('.maintext3').css('display', 'none');
  $('.bugreport').css('display', 'none');
});
$(document).on("click", ".closeimgadmin", function () {
  $.post("https://codem-report/PlayDropSound", JSON.stringify({}));
  $('.adminpanel').fadeOut(500);
  $.post("https://codem-report/closepage");
});
$(document).on("click", ".screenshot", function () {
  $.post("https://codem-report/PlayDropSound", JSON.stringify({}));
  $('.imgreport').css('display', 'block')
});
$(document).on("click", ".icons", function () {
  $.post("https://codem-report/PlayDropSound", JSON.stringify({}));
  $('.imgreport').css('display', 'none')
  $('.container').fadeIn(500);
  $('.generalimage').css('display', 'block');
  $('.selectext').css('display', 'block');
  $('.imgselect').css('display', 'block');
  $('.maintext').css('display', 'block');
  $('.maintext2').css('display', 'none');
  $('.maintext3').css('display', 'none');
  $('.maintext4').css('display', 'none');
  $('.bugreport').css('display', 'none');
  $('.imgreport').css('display', 'none');
  $('.titleinputloc').val('');
  $('.titleinputid').val('');
  $('.titleinputdesc').val('');
  $('.titleinputtext').val('');
  $('.titleinputimg').val('');
  
});
$(document).on("click", ".icons2", function () {
  $.post("https://codem-report/PlayDropSound", JSON.stringify({}));
  $('.blocktype').css('display', 'block');
  $('.adminpanelgosterim').css('display', 'none');
  $.post("https://codem-report/refreshpage");
  $(".mainpagebackground .imgmain").attr('src', './adminpanel/Container.png');



});

$(document).on("click", ".sendbutton", function () {
  $.post("https://codem-report/PlayDropSound", JSON.stringify({}));

  let title = $('.titleinputtext').val();

  let desc = $('.titleinputdesc').val();
  let coords = lastcoords;
  let type = selectedtype;
  let img = $('.titleinputimg').val();
  let id = $('.titleinputid').val();
  if (title, desc !== '') {
    $.post("https://codem-report/datasave", JSON.stringify({
      title: title,
      desc: desc,
      coords: coords,
      type: type,
      img: img,
      id:id,
    }));

  }
  $('.container').fadeOut(500);
  $('.adminpanel').fadeOut(500);
  $.post("https://codem-report/closepage");

  $('.titleinputloc').val('');
  $('.titleinputid').val('');
  $('.titleinputdesc').val('');
  $('.titleinputtext').val('');
  $('.titleinputimg').val('');

});

$(document).on("click", "#datasave", function () {
  $.post("https://codem-report/PlayDropSound", JSON.stringify({}));
  let title = $('.titleinputtext').val();
  let desc = $('.titleinputdesc').val();
  let coords = lastcoords;
  let type = selectedtype;

  $.post("https://codem-report/datasave", JSON.stringify({
    title: title,
    desc: desc,
    coords: coords,
    type: type,
  }));
});

$(document).on("click", ".locimg", function () {
  $.post("https://codem-report/PlayDropSound", JSON.stringify({}));
  $.post('https://codem-report/coords', JSON.stringify({}), (coords) => {
    let formattedCoords = `vec3(${coords.x.toFixed(1)}, ${coords.y.toFixed(1)}, ${coords.z.toFixed(1)})`
    $('.titleinputloc').val(formattedCoords);
    lastcoords = formattedCoords;
  });
});
setTime();
setInterval(function () {
  setTime();
}, 60000)
window.addEventListener("message", function (event) {

  var item = event.data;


  switch (item.type) {

    case "SET_DATA":
     
      $('.container').fadeIn(500);
      $('.generalimage').css('display', 'block');
      $('.selectext').css('display', 'block');
      $('.imgselect').css('display', 'block');
      $('.maintext').css('display', 'block');
      $('.maintext2').css('display', 'none');
      $('.bugreport').css('display', 'none');
      $('.nametext').text(item.name)
      $('.titleinputtext').val('');
      $('.titleinputdesc').val('');
      $('.titleinputimg').val('');
      $('.titleinputloc').val('');
      break;
    case "GET_DATA":
      $('.container').fadeOut(500);
      $('.adminpanel').css('display', 'block');
      let text = "";
      for (i = 0; i < item.sql.length; i++) {

        if (item.sql[i].status === "Solved") {
          if (item.sql[i].type === "OTHER") {
            text += `
            <div class="deneme"  data-id="${item.sql[i].id}" data-status="${item.sql[i].status}"   data-desc="${item.sql[i].desc}" data-tip="${item.sql[i].type}" data-title="${item.sql[i].title}"  data-coords="${item.sql[i].coords}" data-img="${item.sql[i].image}" data-pid="${item.sql[i].pid}" >
    
            <img src="./adminpanel/otherticket.png" alt="">
            <span class="account">${item.sql[i].title}</span>
            <a class="name">${item.sql[i].name} </a>
            <span class="type">${item.sql[i].type} </span>
            <img id="denemeee" class="statusimg" src="./adminpanel/check.png" alt="" >
            <span class="status">${item.sql[i].status} </span>
            <span class="date">${item.sql[i].date} </span>
            </div>`
          } else if (item.sql[i].type === "PLAYER") {
            text += `
            <div class="deneme"  data-id="${item.sql[i].id}" data-status="${item.sql[i].status}"   data-desc="${item.sql[i].desc}" data-tip="${item.sql[i].type}" data-title="${item.sql[i].title}"  data-coords="${item.sql[i].coords}" data-img="${item.sql[i].image}"data-pid="${item.sql[i].pid}" >
    
            <img src="./adminpanel/playerticket.png" alt="">
            <span class="account">${item.sql[i].title}</span>
            <a class="name">${item.sql[i].name} </a>
            <span class="type">${item.sql[i].type} </span>
            <img id="denemeee" class="statusimg" src="./adminpanel/check.png" alt="" >
            <span class="status">${item.sql[i].status} </span>
            <span class="date">${item.sql[i].date} </span>
            </div>`
          } else {
            text += `
            <div class="deneme"  data-id="${item.sql[i].id}" data-status="${item.sql[i].status}"   data-desc="${item.sql[i].desc}" data-tip="${item.sql[i].type}" data-title="${item.sql[i].title}"  data-coords="${item.sql[i].coords}" data-img="${item.sql[i].image}" data-pid="${item.sql[i].pid}">
    
            <img src="./adminpanel/bugticket.png" alt="">
            <span class="account">${item.sql[i].title}</span>
            <a class="name">${item.sql[i].name} </a>
            <span class="type">${item.sql[i].type} </span>
            <img id="denemeee" class="statusimg" src="./adminpanel/check.png" alt="" >
            <span class="status">${item.sql[i].status} </span>
            <span class="date">${item.sql[i].date} </span>
            </div>`
          }


        } else if (item.sql[i].status === "Waiting") {
          if (item.sql[i].type === "PLAYER") {
            text += `
            <div class="deneme"  data-id="${item.sql[i].id}" data-status="${item.sql[i].status}"   data-desc="${item.sql[i].desc}" data-tip="${item.sql[i].type}" data-title="${item.sql[i].title}"  data-coords="${item.sql[i].coords}" data-img="${item.sql[i].image}"data-pid="${item.sql[i].pid}" >
    
            <img src="./adminpanel/playerticket.png" alt="">
            <span class="account">${item.sql[i].title}</span>
            <a class="name">${item.sql[i].name} </a>
            <span class="type">${item.sql[i].type} </span>
            <img id="denemeee" class="statusimg" src="./adminpanel/waiting.png" alt="" >
            <span class="status">${item.sql[i].status} </span>
            <span class="date">${item.sql[i].date} </span>
            </div>`
          } else if (item.sql[i].type === "BUG") {
            text += `
            <div class="deneme"  data-id="${item.sql[i].id}" data-status="${item.sql[i].status}"   data-desc="${item.sql[i].desc}" data-tip="${item.sql[i].type}" data-title="${item.sql[i].title}"  data-coords="${item.sql[i].coords}" data-img="${item.sql[i].image}" data-pid="${item.sql[i].pid}">
    
            <img src="./adminpanel/bugticket.png" alt="">
            <span class="account">${item.sql[i].title}</span>
            <a class="name">${item.sql[i].name} </a>
            <span class="type">${item.sql[i].type} </span>
            <img id="denemeee" class="statusimg" src="./adminpanel/waiting.png" alt="" >
            <span class="status">${item.sql[i].status} </span>
            <span class="date">${item.sql[i].date} </span>
            </div>`
          } else {
            text += `
            <div class="deneme"  data-id="${item.sql[i].id}" data-status="${item.sql[i].status}"   data-desc="${item.sql[i].desc}" data-tip="${item.sql[i].type}" data-title="${item.sql[i].title}"  data-coords="${item.sql[i].coords}" data-img="${item.sql[i].image}" data-pid="${item.sql[i].pid}">
    
            <img src="./adminpanel/otherticket.png" alt="">
            <span class="account">${item.sql[i].title}</span>
            <a class="name">${item.sql[i].name} </a>
            <span class="type">${item.sql[i].type} </span>
            <img id="denemeee" class="statusimg" src="./adminpanel/waiting.png" alt="" >
            <span class="status">${item.sql[i].status} </span>
            <span class="date">${item.sql[i].date} </span>
            </div>`
          }
        } else {
          if (item.sql[i].type === "BUG") {
            text += `
            <div class="deneme"  data-id="${item.sql[i].id}" data-status="${item.sql[i].status}"   data-desc="${item.sql[i].desc}" data-tip="${item.sql[i].type}" data-title="${item.sql[i].title}"  data-coords="${item.sql[i].coords}" data-img="${item.sql[i].image}" data-pid="${item.sql[i].pid}">
    
            <img src="./adminpanel/bugticket.png" alt="">
            <span class="account">${item.sql[i].title}</span>
            <a class="name">${item.sql[i].name} </a>
            <span class="type">${item.sql[i].type} </span>
            <img id="denemeee" class="statusimg" src="./adminpanel/deleted.png" alt="" >
            <span class="status">${item.sql[i].status} </span>
            <span class="date">${item.sql[i].date} </span>
            </div>`
          } else if (item.sql[i].type === "PLAYER") {
            text += `
            <div class="deneme"  data-id="${item.sql[i].id}" data-status="${item.sql[i].status}"   data-desc="${item.sql[i].desc}" data-tip="${item.sql[i].type}" data-title="${item.sql[i].title}"  data-coords="${item.sql[i].coords}" data-img="${item.sql[i].image}"data-pid="${item.sql[i].pid}" >
    
            <img src="./adminpanel/playerticket.png" alt="">
            <span class="account">${item.sql[i].title}</span>
            <a class="name">${item.sql[i].name} </a>
            <span class="type">${item.sql[i].type} </span>
            <img id="denemeee" class="statusimg" src="./adminpanel/deleted.png" alt="" >
            <span class="status">${item.sql[i].status} </span>
            <span class="date">${item.sql[i].date} </span>
            </div>`
          } else {
            text += `
            <div class="deneme"  data-id="${item.sql[i].id}" data-status="${item.sql[i].status}"   data-desc="${item.sql[i].desc}" data-tip="${item.sql[i].type}" data-title="${item.sql[i].title}"  data-coords="${item.sql[i].coords}" data-img="${item.sql[i].image}"data-pid="${item.sql[i].pid}" >
    
            <img src="./adminpanel/otherticket.png" alt="">
            <span class="account">${item.sql[i].title}</span>
            <a class="name">${item.sql[i].name} </a>
            <span class="type">${item.sql[i].type} </span>
            <img id="denemeee" class="statusimg" src="./adminpanel/deleted.png" alt="" >
            <span class="status">${item.sql[i].status} </span>
            <span class="date">${item.sql[i].date} </span>
            </div>`
          }
        }
        $('.mainadminpanel').html(text);
      }
      break;
  }
});

let dataattr = null;
let sqli = null;
$(document).on("click", ".deneme", function () {
  $.post("https://codem-report/PlayDropSound", JSON.stringify({}));
  let images = $(this).attr("data-img");


  let sqlid = $(this).attr("data-id");
  sqli = sqlid
  let description = $(this).attr("data-desc");
  let sqltipi = $(this).attr("data-tip");
  let sqltitle = $(this).attr("data-title");
  let sqlcoords = $(this).attr("data-coords");
  let pid = $(this).attr("data-pid");
  if(sqltipi == "BUG"){
   
    $('.maintext10').css('display', 'block')
    $('.maintext11').css('display', 'none')
    $('.maintext12').css('display', 'none')
    $('.playeridadmin').css('display', 'none');
  }else if(sqltipi == "PLAYER"){
    $('.maintext10').css('display', 'none')
    $('.playeridadmin').css('display', 'block');
    $('.maintext11').css('display', 'block')
    $('.maintext12').css('display', 'none')
    $('.titleinputidadmin').val(pid)
  }else{
    $('.maintext10').css('display', 'none')
    $('.maintext11').css('display', 'none')
    $('.playeridadmin').css('display', 'block');
    $('.maintext12').css('display', 'block')
    $('.titleinputidadmin').val(pid)
  }
  $(".titleinputdesc2").val(description);
  $(".titleinputtext2").val(sqltitle);
  $(".titleinputloc2").val(sqlcoords);
  if (images != 'codem') {
    $('.sqlimage').css('display', 'block')
    $('.sqlimage').css("background-image", `url(${images})`);
    $('.sqlimage').attr("data-image", `${images}`);

  } else {
    $('.sqlimage').css('display', 'none')
  }



  $('.blocktype').css('display', 'none');
  $('.adminpanelgosterim').css('display', 'block');
  $(".imgmain").attr('src', './adminpanel/adminedit.png');

});
$(document).on("click", ".admincheck", function () {
  $.post("https://codem-report/PlayDropSound", JSON.stringify({}));
  dataattr = true;

  $.post("https://codem-report/admincontrol", JSON.stringify({
    dataattr: dataattr,
    sqlid: sqli,
  }));
});
$(document).on("click", ".admindelete", function () {
  $.post("https://codem-report/PlayDropSound", JSON.stringify({}));
  dataattr = false;

  $.post("https://codem-report/admincontrol", JSON.stringify({
    dataattr: dataattr,
    sqlid: sqli,
  }));
});

$(document).on("click", ".sqlimage", function () {
  $.post("https://codem-report/PlayDropSound", JSON.stringify({}));
  let imgUrl = $(this).attr("data-image")
  let display = $(this).css("display")
  if (display != "none") {


    let el = document.createElement("img")
    el.style.borderRadius = "5px"
    el.setAttribute("src", imgUrl)
    let close = document.createElement("div")
    close.style.width = "14.5px"
    close.style.height = "14.5px"
    close.style.fontSize = "10px"
    close.style.position = "absolute"
    close.style.right = "0"
    close.style.top = "0"
    close.style.borderRadius = "5px"

    close.style.display = "flex"
    close.style.alignItems = "center"
    close.style.justifyContent = "center"
    close.style.backgroundColor = "red"
    close.style.color = "white"
    close.classList.add("close-image")
    close.innerText = "X"
    close.style.cursor = "pointer"


    $(".img-container-wrapper").html('')
    $(".img-container-wrapper").append(el)
    $(".img-container-wrapper").append(close)

  }

})


$(document).on("click", ".close-image", function () {
  $.post("https://codem-report/PlayDropSound", JSON.stringify({}));
  $(".img-container-wrapper").html('')
})




function setTime() {
  var currentDate = new Date();

  var day = currentDate.getDate()
  var month = currentDate.getMonth() + 1
  var year = currentDate.getFullYear()
  var hours = currentDate.getHours()
  var minutes = currentDate.getMinutes()

  if (day < 10) {
    day = "0" + day
  }

  if (month < 10) {
    month = "0" + month
  }

  if (hours < 10) {
    hours = "0" + hours
  }

  if (minutes < 10) {
    minutes = "0" + minutes
  }
  let saat = `<h2 class="caltext">${day + '.' + month + "." + year} <h2 class="calsaat">${hours + ":" + minutes} </h2></h2>`
  $(".saatmenu").html(saat)

}

