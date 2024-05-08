const sidebar = document.querySelector(".sidebar"),
sidebarBtn = document.querySelector(".sidebarBtn"),
userOptions = document.querySelector("nav .profile-details")
subOptions = userOptions.querySelector(".user-options"),

notifications = document.querySelector(".notifications"),
notify = notifications.querySelector(".notify"),
notifyOptions = notifications.querySelector(".notify-options"),
usersList = document.querySelector(".wrapper-box .users-list"),
searchBar = document.querySelector(".wrapper-box .search input");
let incoming = document.querySelector("input[name=incoming_id]");
function voidNotify(){
  if(!notifyOptions.querySelector("a"))notifyOptions.querySelector(".unmessage").innerHTML="No hay mensajes";
  if(usersList){
    if(!usersList.querySelector("a")&&(usersList.innerHTML!="No hay usuarios disponibles para chatear"&&searchBar.value==""))usersList.innerHTML="No hay usuarios disponibles para chatear";
  }
}
function printNotify(container,data){
  listData = `<a class='' id="${(container==usersList)?'s-':'n-'}${data['cod']}" href="./menssages?chat=${data['cod']}">
  <div class="content">
      <img src="${data['image']}" alt="">
      <div class="details">
          <span>${data['usr']}</span>
          <p>${(container==usersList)?data['usr']:'Nuevo mensaje'}</p>
      </div>
  </div>
  <div class="status-dot">
      ${(data['read']!=0)?`<div class="vineta"><p class="globo">${data['read']}</p></div>`:''}
  </div>
  </a>`;
  container.insertAdjacentHTML("afterbegin",listData);
}
function loadNotify(data){
  let notification=notifyOptions.querySelectorAll(".notify-options > a");
  notify.innerHTML=data['nth'];
  if(notification.length<3&&!notifyOptions.querySelector("#n-"+data['cod']+"")){
    if(data['read']>0)printNotify(notifyOptions,data);
  }
  notifies=notifyOptions.querySelectorAll("a");
  if(notifies[2])notifies[2].remove();
  if(!document.querySelector(".notify-options div a")&&notification.length>1)
    notifyOptions.insertAdjacentHTML("beforeend",`<div><a id="pulse" href="./menssages" style="padding:5px">Ver más</a></div>`);
  let globo=notifyOptions.querySelector("#n-"+data['cod']+"");
  if(globo)notifyOptions.insertBefore(globo,notifyOptions.firstChild);
  let listData=`<div class="vineta"><p class="globo">${data['read']}</p></div>`;
  if(notifyOptions.querySelector("#n-"+data['cod']+"")&&data['read']==0)notifyOptions.querySelector("#n-"+data['cod']+"").remove();
  if(notifyOptions.querySelector("#n-"+data['cod']+""))globo.querySelector(".status-dot").innerHTML=listData;
  if(data['nth']>0)notifyOptions.querySelector(".unmessage").innerHTML="";
}
(function(){
  sidebarBtn.addEventListener("click",()=>{
    sidebar.classList.toggle("active");
    if(sidebar.classList.contains("active"))sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
    else sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
  });
  document.addEventListener("click",(e)=>{
    if(subOptions.contains(e.target))subOptions.setAttribute("class","user-options active");
    else if(userOptions.contains(e.target))subOptions.classList.toggle("active");
    else subOptions.setAttribute("class","user-options");

    if(notifications.contains(e.target))notifyOptions.classList.toggle("active");
    else notifyOptions.setAttribute("class","notify-options");
  });
  //Agregar event listener para detectar cuando la ventana pierde foco
  let windowFocused = 1;
  window.addEventListener('blur',()=>{windowFocused=0;});
  document.addEventListener('visibilitychange',()=>{windowFocused = 3;});
  window.addEventListener('focus',()=>{windowFocused = 3;});
  var nCount=0;
  function notifyBell(){
    const idInterval=setInterval(()=>{
      if(nCount<50){
          nCount=nCount+50;
          if(nCount==50){
            let xhr = new XMLHttpRequest(); //creating XML object
            xhr.open("POST","../database/allnotify",true);
            xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
            xhr.send("");
            xhr.onreadystatechange = function(){
              if(xhr.readyState === XMLHttpRequest.DONE && xhr.status =="200"){
                if(xhr.response!=""){
                  let data=JSON.parse(xhr.response);
                  for(let i=0;i<data.length;i++) {
                    loadNotify(data[i]);
                  }
                }else{
                  voidNotify();
                }
              }
            }
          }
      }else if(nCount>99){
          nCount=0;
          clearInterval(idInterval);
      }
    },50);
  }
  notifyBell();
  var temporizador;
  //Timer reset function
  function inactivity(){
      clearTimeout(temporizador);
      temporizador = setTimeout(function(){
        //Activated when the user is inactive
        if(windowFocused==1)window.location.href="../session/meeting?exit=1";//Here you can take the actions you want when inactivity is detected
      },300000);//5 minutes to milliseconds
  }
  //Add event listeners to track user activity
  document.addEventListener("mousemove",inactivity);
  document.addEventListener("keypress",inactivity);
  document.addEventListener("click",inactivity);
  document.addEventListener("scroll",inactivity);
  inactivity();//Start timer
})();