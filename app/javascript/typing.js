function typing (){
  
  
  var phrases = document.getElementById('phrase');
  var phraseHash = JSON.parse(phrases.getAttribute('data-phrase-status'));
  
  let allText = [];
  let allMeaning = [];
  let allTagId = [];
  let allUserId = [];
  
  
  phraseHash.forEach(function(element){
    allText.push(element.text),//問題文
    allMeaning.push(element.meaning),
    allTagId.push(element.tag_id),
    allUserId.push(element.user_id)
  });
  
  // let Q_No = Math.floor( Math.random() * allText.length);//問題をランダムで出題する
  Q_No = 0;
  
  let Q_i = 0;//回答初期値・現在単語どこまで合っているか判定している文字番号
  let Q_l = allText[Q_No].length;//計算用の文字の長さ
  
  const Q_text = document.getElementById("start");
  const Q_meaning = document.getElementById("mean");
  const wrapImage = document.getElementById("wrapImage");
  const topimage = document.getElementById("image1");
  const gamebutton = document.getElementById("gamebutton");
  const buttonback = document.getElementById("buttonback");

   gamebutton.addEventListener('click', function(){
     if (this.innerHTML == "QUIT THE GAME"){
       this.innerHTML = "START THE GAME";
       buttonback.setAttribute("style", "background-color:#7ae1f3;")
      }else{
        this.innerHTML = "QUIT THE GAME";
        buttonback.setAttribute("style", "background-color:#fd6c6c;")
        window.addEventListener("keydown", push_Keydown);
        Q_text.innerHTML = "Press the key to start the game.";
        Q_meaning.innerHTML = "キーを押すと始まるよ";
     }
  });
  
  


  function push_Keydown(event){
    let keyCode = event.key;
    if (Q_l == Q_l-Q_i){
            topimage.style.display = 'none';   
            Q_text.innerHTML = allText[Q_No].substring(Q_i, Q_l); //問題を書き出す
            Q_meaning.innerHTML = allMeaning[Q_No]; //日本語訳を表示
            wrapImage.children[Q_No].style.display = 'block';


            /* 単語の読み上げ */

            var speak = new SpeechSynthesisUtterance();
            speak.text = allText[Q_No];
            speak.lang = 'en-US';
            speak.rate = 0.8;
            speak.pitch = 1;
            speechSynthesis.speak(speak);

            /* 単語の読み上げ終わり */
    }


  if (allText[Q_No].charAt(Q_i) == keyCode) { //押したキーが合っていたら

    Q_i++; //判定する文章に１足す
    Q_text.innerHTML = allText[Q_No].substring(Q_i, Q_l); //問題を書き出す
    
    if (Q_l-Q_i === 0){ //全部正解したら
      new Audio('assets/ok.mp3').play(); // 正解の音声再生;
      wrapImage.children[Q_No].style.display = 'none'; //今、表示している画像を消す
  
      // Q_No = Math.floor( Math.random() * allText.length);//問題をランダムで出題する
      Q_No++;//次の問題を出題する
      if (Q_No == allText.length){
        Q_No = 0;
      }
      Q_i = 0;//回答初期値・現在どこまで合っているか判定している文字番号
      Q_l = allText[Q_No].length;//計算用の文字の長さ

      Q_text.innerHTML = allText[Q_No].substring(Q_i, Q_l); //新たな問題を書き出す

    }
    else {
    new Audio('assets/good.mp3').play(); // 音声再生;
  }
  }
  }

};

window.addEventListener('load', typing);