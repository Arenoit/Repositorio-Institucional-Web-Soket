(function(){
    const searchBar = document.querySelector(".wrapper-box .search input"),
    searchBtn = document.querySelector(".wrapper-box .search button"),
    usersList = document.querySelector(".wrapper-box .users-list");
    let socket;
    const connectWebSocket=()=>{
        socket=new WebSocket('ws://localhost:8080/');
        socket.onopen=() =>{
            console.log("Conexión exitosa");
            initSocket();
        };
        socket.onmessage=(e)=>{
            let data = JSON.parse(e.data);
            if(data&&data['msg']!==null&&data['msg']!==undefined&&data['msg']!==""){
                listData = `<div class='chat incoming'>
                    <img src='${document.querySelector("header img").src}' alt=''>
                    <div class='details'>
                        <p>${data['msg']}</p>
                    </div>
                </div>`;
                if(document.querySelector(".chat-box"))document.querySelector(".chat-box").insertAdjacentHTML("beforeend",listData);
            }
            if(data[0]&&data[0]['nth']!==undefined){
                loadNotify(data[0]);
                //Users List
                if(usersList&&searchBar.value==""&&data[0]['read']>0){
                    if(usersList.innerHTML=="No hay usuarios disponibles para chatear")usersList.innerHTML='';
                    if(!usersList.querySelector("#s-"+data[0]['cod']+"")){
                        printNotify(usersList,data[0]);
                    }
                    let globo = usersList.querySelector(".void-chat[id*='s-"+data[0]['cod']+"']");
                    let normal = usersList.querySelector("#s-"+data[0]['cod']+"");
                    let listData=`<div class="vineta"><p class="globo">${data[0]['read']}</p></div>${(data['sts']!=0)?'<i class="fas fa-circle"></i>':''}`;
                    if(globo){
                    globo.querySelector(".details p").innerHTML=data[0]['msg'];
                    if(globo.querySelector(".globo"))
                        if(globo.querySelector(".globo").innerHTML!=data[0]['read'])usersList.insertBefore(globo, usersList.firstChild);
                    if(!globo.querySelector(".globo")&&data[0]['read']>0)usersList.insertBefore(globo, usersList.firstChild);
                    globo.querySelector(".status-dot").innerHTML=listData;
                    globo.classList.remove();
                    }else if(normal&&data[0]['read']>0){
                    normal.querySelector(".details p").innerHTML=data[0]['msg'];
                    normal.querySelector(".status-dot").innerHTML=listData;
                    usersList.insertBefore(normal, usersList.firstChild);
                    }
                }
                if(usersList.querySelector("#s-"+data[0]['cod']+"")&&data[0]['read']==0)usersList.querySelector("#s-"+data[0]['cod']+"").remove();
            }else{
                voidNotify();
            }
        };
        /* socket.onerror=(error)=>{
            console.error('Error en la conexión:',error);
        }; */
        socket.onclose=()=>{
            console.log('Conexión cerrada');
            //Intentar reconectar después de un breve intervalo
            setTimeout(connectWebSocket,3000);
        };
    };
    connectWebSocket();
    function initSocket(){
        let outgoing = document.querySelector("input[name=outgoing_id]"),
        incoming = document.querySelector("input[name=incoming_id]");
        if(incoming)socket.send(JSON.stringify({"from":incoming.value,"to":outgoing.value,"msg":''}));//Chat room
        else {
            let xhr = new XMLHttpRequest(); //creating XML object
            xhr.open("POST","../database/notify",true);
            xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
            if(incoming)xhr.send("incoming="+incoming.value);
            else xhr.send("");
            xhr.onreadystatechange = function(){
                if(xhr.readyState === XMLHttpRequest.DONE && xhr.status =="200"){
                if(xhr.response!=""){
                    let data=xhr.response;
                    socket.send(JSON.stringify({"user":data}));//Chat room
                }
                }
            }
        }
    }
    if(searchBar){
        searchBtn.addEventListener('click',()=>{
            searchBar.classList.toggle("active");
            searchBar.focus();
            searchBtn.classList.toggle("active");
            searchBar.value="";
            if(!document.querySelector(".wrapper-box .search button[class=active]"))usersChat();
        });let aux=0;
        function printChats(data,vineta){
            listData = `<a ${(vineta==1)?`class="void-chat" id="s-${data['cod']}"`:`f-${data['cod']}`} href="./menssages?chat=${data['cod']}">
                <div class="content">
                    <img src="${data['image']}" alt="">
                    <div class="details">
                        <span>${data['usr']}</span>
                        <p>${(vineta==1)?data['msg']:data['eml']}</p>
                    </div>
                </div>
                <div class="status-dot">
                    ${(data['read']!=0&&vineta==1)?`<div class="vineta"><p class="globo">${data['read']}</p></div>`:''}
                    ${(data['sts']!=0)?'<i class="fas fa-circle"></i>':''}
                </div>
            </a>`;
            usersList.insertAdjacentHTML("beforeend",listData);
        }
        searchBar.addEventListener('keyup',()=>{
            let searchTerm = searchBar.value;
            if(searchTerm!=""){aux=0;
                //let's start Ajax
                let xhr = new XMLHttpRequest(); //creating XML object
                xhr.open('POST',"../database/searchmsg",true);
                xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                xhr.send("searchTerm="+searchTerm);
                xhr.onreadystatechange = function(){
                    if(xhr.readyState === XMLHttpRequest.DONE && xhr.status =="200"){
                        if(xhr.response!=""){usersList.innerHTML='';
                            let data = JSON.parse(xhr.response);
                            for(let i=0;i<data.length;i++){
                                printChats(data[i],0);
                            }
                        }
                    }
                }
            }
            usersChat();
        });
        usersChat();
        function usersChat(){
            let searchTerm = searchBar.value;
            if(searchTerm==""&&aux<1){aux++;
                //let's start Ajax
                let xhr = new XMLHttpRequest(); //creating XML object
                xhr.open("POST","../database/searchmsg",true);
                xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                xhr.send("searchTerm="+searchTerm);
                xhr.onreadystatechange = function() {
                    if(xhr.readyState === XMLHttpRequest.DONE && xhr.status =="200"){
                        if(xhr.response=="")usersList.innerHTML = "No hay usuarios disponibles para chatear";
                        else{
                            let data = JSON.parse(xhr.response);usersList.innerHTML = "";
                            for(let i=0;i<data.length;i++){
                                printChats(data[i],1);
                            }
                        }
                    }
                }
            }
        }
    }
    const body = document.querySelector("body"),
    form = document.querySelector(".typing-area"),
    chatBox = document.querySelector(".chat-box"),
    sendBtn = document.querySelector(".typing-area button");
    
    if(form){
        const chatOptions = document.querySelector(".chat-area header .options i"),
        ellipseOptions = chatOptions.parentElement.querySelector(".options-chat");
        document.addEventListener("click",(e)=>{
            let incoming = document.querySelector("input[name=incoming_id]").value;
            if(chatOptions.contains(e.target))ellipseOptions.classList.toggle("active");
            else ellipseOptions.setAttribute("class","options-chat");
            if(ellipseOptions.contains(e.target)){
                //let's start Ajax
                let xhr = new XMLHttpRequest(); //creating XML object
                xhr.open("POST","../database/msg",true);
                //we have send the form data throuh ajax to php
                xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                xhr.send("deletemsg=1&incoming="+incoming);
                chatBox.innerHTML="";
                xhr.onreadystatechange = function(){
                    if(xhr.response!=""){
                        let data = JSON.parse(xhr.response);
                        socket.send(JSON.stringify({"from":data[0]['from'],"to":data[0]['to'],"msg":""}));
                    }
                }
            }
        });
        scrollToBottom();
        chatBox.addEventListener("scroll",()=>{//detects mouse and cell changes to scroll
            chatBox.classList.add("active");
        });
        chatBox.addEventListener("touchmove",()=>{//detects cell changes to scroll
            chatBox.classList.add("active");
        });
        var windowFocused = 1;//PUT MESSAGES
        window.addEventListener('blur',()=>{windowFocused=0;});
        document.addEventListener('visibilitychange',()=>{windowFocused = 3;});
        window.addEventListener('focus',()=>{windowFocused = 3;});
        setInterval(()=>{
            if(!usersList&&windowFocused==3){
                //getMessage();
                windowFocused=1;
            }
        },1000);//this function will run frequently after 1s
        sendBtn.addEventListener('click',(e)=>{//POST MESSAGES
            e.preventDefault();
            let incoming = document.querySelector("input[name=incoming_id]").value,
            menssage = document.querySelector("input[name=menssage]");
            if(menssage.value!=""){
                //let's start Ajax
                let xhr = new XMLHttpRequest(); //creating XML object
                xhr.open("POST","../database/sendmsg",true);
                //we have send the form data throuh ajax to php
                xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                xhr.send("incoming="+incoming+"&menssage="+menssage.value);
                xhr.onreadystatechange = function() {
                    if(xhr.readyState === XMLHttpRequest.DONE && xhr.status =="200"){
                        if(xhr.response!=""){
                            let data = JSON.parse(xhr.response);
                            socket.send(JSON.stringify({"from":data[0]['from'],"to":data[0]['to'],"msg":data[0]['msg']}));
                            chatBox.classList.remove("active");
                            if(!chatBox.classList.contains("active")){//if active class no contains in chatBox the scroll to bottom
                                scrollToBottom();
                            }
                            listData = `<div class='chat outgoing'>
                                <div class='details'>
                                    <p>${data[0]['msg']}</p>
                                </div>
                            </div>`;
                            chatBox.insertAdjacentHTML("beforeend",listData);
                            menssage.value="";
                        }
                    }
                }
            }
        });
        //GET MESSAGES
        getMessage();
        function getMessage(){
            if(!usersList){
                var idmessage;
                let outgoing = document.querySelector("input[name=outgoing_id]").value,
                incoming = document.querySelector("input[name=incoming_id]").value;
                let xhr = new XMLHttpRequest(); //creating XML object
                xhr.open("POST","../database/msg",true);
                xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                xhr.send("incoming="+incoming+"&outgoing="+outgoing);
                xhr.onreadystatechange = function(){
                    if(xhr.readyState === XMLHttpRequest.DONE && xhr.status =="200"){
                        if(xhr.response!=""){
                            chatBox.innerHTML="";
                            let data = JSON.parse(xhr.response);
                            for(let i=1;i<data.length;i++){
                                listData = `<div class='chat ${(data[i]['image']=="")?"outgoing":"incoming"}'>
                                    ${(data[i]['image']!="")?`<img src='${data[i]['image']}' alt=''>`:""}
                                    <div class='details'>
                                        <p>${data[i]['msg']}</p>
                                    </div>
                                </div>`;
                                chatBox.insertAdjacentHTML("afterbegin",listData);
                            }aux=data[0]['image']-data[0]['msg']+6;
                            if(data[0]['msg']>0)chatBox.insertAdjacentHTML("afterbegin",`<button class="previous-messages" style="${(data[0]['msg']<6)?"display:none":""}">ver mensajes anteriores</button>`);
                            idmessage=(idmessage!="")?data[0]['image']:idmessage;
                            const buttonReveal=chatBox.querySelector(".previous-messages");
                            buttonReveal.addEventListener('click',()=>{
                                let xhr2 = new XMLHttpRequest(); //creating XML object
                                xhr2.open("POST","../database/allmsg",true);
                                xhr2.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                                xhr2.send("incoming="+incoming+"&menssage="+idmessage);
                                xhr2.onreadystatechange = function(){
                                    if(xhr2.readyState === XMLHttpRequest.DONE && xhr2.status =="200"){
                                        if(xhr2.response!=""){
                                            idmessage=idmessage-5;
                                            let data = JSON.parse(xhr2.response);
                                            for(let i=1;i<data.length;i++){
                                                listData = `<div class='chat ${(data[i]['image']=="")?"outgoing":"incoming"}'>
                                                    ${(data[i]['image']!="")?`<img src='${document.querySelector("header img").src}' alt=''>`:""}
                                                    <div class='details'>
                                                        <p>${data[i]['msg']}</p>
                                                    </div>
                                                </div>`;
                                                chatBox.insertAdjacentHTML("afterbegin",listData);
                                            }
                                            if(data[0]['msg']>0&&data.length>1)chatBox.insertBefore(buttonReveal,chatBox.firstChild);
                                            if(data[0]['msg']<=aux)buttonReveal.style.display="none";
                                        }else{
                                            chatBox.querySelector(".previous-messages").style.display="none";
                                        }
                                    }
                                }
                            });
                        }else chatBox.innerHTML="";
                    }
                }
            }
        }
    }
    function scrollToBottom(){
        chatBox.scrollTop=chatBox.scrollHeight;
    }
})();