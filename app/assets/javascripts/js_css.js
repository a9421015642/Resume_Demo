function myfun() {

  var arraylength = document.getElementById("array_test").getAttribute("name");
  for (var i = 1; i <= arraylength; i++) {
    var array_title = document.getElementById("test_" + i).getAttribute("name");
    getTitleAtrribute(array_title + "_title", array_title + "_status");
  }
}

function getTitleAtrribute(title, status) {
  var TitleTag = document.getElementById(title).getAttribute("name");
  var StatusTag = document.getElementById(status).getAttribute("name");
  changeSwitch(TitleTag, StatusTag);
}

function changeSwitch(titleTag, StatusTag) {
  switch (StatusTag) {
  case "4":
    document.getElementById(titleTag + "_td4").style.backgroundColor = " #0000CD";
  case "3":
    document.getElementById(titleTag + "_td3").style.backgroundColor = " #0000CD";
  case "2":
    document.getElementById(titleTag + "_td2").style.backgroundColor = " #0000CD";
  case "1":
    document.getElementById(titleTag + "_td1").style.backgroundColor = " #0000CD";
    break;
  }
}