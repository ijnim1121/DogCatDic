var coll=document.getElementsByClassName('collapsible');

for(let i=0; i<coll.length; i++){
    coll[i].addEventListener("click", function() {
        this.classList.toggle("active");
        var content=this.nextElementSibling;

        if (content.style.maxHeight){
            content.style.maxHeight=null;
        }else{
            content.style.maxHeight= content.scrollHeight+"px";
        }
    });
}

function getTime(){
    let today=new Date();
    hours=today.getHours();
    minutes=today.getMinutes();

    if(hours < 10){
        hours="0"+hours
    }

    if(minutes<10){
        minutes="0"+minutes
    }

    let time=hours+":"+minutes;
    return time;
}

function firstBotMessage(){
    let firstMessage="'시작'이라고 보내주시면 채팅이 시작됩니다."
    document.getElementById("botStarterMessage").innerHTML="<p class='botText'><span>"+firstMessage+'</span></p>';

    let time=getTime();

    $('#chat-timestamp').append(time);
    document.getElementById("userInput").scrollIntoView(false);

}

firstBotMessage();

function getHardResponse(userText){
    let botResponse=getBotResponse(userText);
    let botHTML= '<p class="botText"><span>'+botResponse+'</span></p>';
    $ ("#chatBox").append(botHTML);

    document.getElementById("chatBarBottom").scrollIntoView
}

function getResponse(){
    let userText=$("#textInput").val();

    if(userText==""){
        userText="텍스트를 입력해서 전송해주세요";
    }

    let userHTML='<p class="userText"><span>'+userText+'</span?</p>';

    $("#textInput").val("");
    $("#chatBox").append(userHTML);
    document.getElementById("chatBarBottom").scrollIntoView(true);

    setTimeout(() =>{
        getHardResponse(userText);
    }, 1000)
}

function buttonSendText(sampleText){
    let userHTML='<p class="botText"><span>'+sampleText+'</span></p>';

    $("textInput").val("");
    $("chatBox").append(userHTML);
    document.getElementById("chatBarBottom").scrollIntoView(true);
}

function sendButton(){
    getResponse();//버튼 만들면 동작
}
function heartButton(){
    buttonSendText("Heart clicked!")
}
$("textInput").keypress(function(e) {
    if (e.which == 13){// 엔터인지 위치 찾아보기 엔터!!
        getResponse();
    }
})