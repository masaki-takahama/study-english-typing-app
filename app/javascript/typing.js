function typing (){


  var users = document.getElementById('user');
  var userHash = JSON.parse(users.getAttribute('data-user-status'));

  let allText = [];
  let allMeaning = [];
  let allTagId = [];
  let allUserId = [];

  

    userHash.forEach(function(element){
      allText.push(element.text),//問題文
      allMeaning.push(element.meaning),
      allTagId.push(element.tag_id),
      allUserId.push(element.user_id)
    });

        console.log(allText);
        console.log(allMeaning);
        console.log(allTagId);
        console.log(allUserId);
      


  
  let Q_No = Math.floor( Math.random() * allText.length);//問題をランダムで出題する

  let Q_i = 0;//回答初期値・現在単語どこまで合っているか判定している文字番号
  let Q_l = allText[Q_No].length;//計算用の文字の長さ

  window.addEventListener("keydown", push_Keydown);
  
  function push_Keydown(event){
  let keyCode = event.key;
  if (Q_l == Q_l-Q_i){

    document.getElementById("start").innerHTML = allText[Q_No].substring(Q_i, Q_l); //問題を書き出す

    }


  if (allText[Q_No].charAt(Q_i) == keyCode) { //押したキーが合っていたら

    Q_i++; //判定する文章に１足す
    document.getElementById("start").innerHTML = allText[Q_No].substring(Q_i, Q_l); //問題を書き出す

    if (Q_l-Q_i === 0){ //全部正解したら
      new Audio('ok.mp3').play(); // 正解の音声再生;
  
      Q_No = Math.floor( Math.random() * allText.length);//問題をランダムで出題する
      Q_i = 0;//回答初期値・現在どこまで合っているか判定している文字番号
      Q_l = allText[Q_No].length;//計算用の文字の長さ


      document.getElementById("start").innerHTML = allText[Q_No].substring(Q_i, Q_l); //新たな問題を書き出す

    }
    else {
    new Audio('good.mp3').play(); // 音声再生;
  }
  }
  }

};

window.addEventListener('load', typing);