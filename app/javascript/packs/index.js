
// ここから上は削除
// main.js

'use strict'
{

//   const teest = document.getElementById('until');
//   teest.addEventListener('click', () => {
//     console.log('テスト成功');
//   });
  // モーダル関係。
  // それぞれの地方ごとの県に共通のクラス名を付与しクリックイベントを実装
  // 各都道府県をHTMLから取得するためにNodeListとして取得しているため、このままではaddEventListenerが使えない
  // NodeListは要素の集合体（配列みたいなもの）
  // それを解決するためにスプレッド演算子[...]で展開し、forEachでそれぞれの要素（都道府県）にクリックイベントを付与
  
  // 北海道・東北
  const hokkaidotohoku = document.querySelectorAll('.hokkaido-tohoku');
  const close1 = document.getElementById('close1');
  const modal1 = document.getElementById('modal1');
  const mask1 = document.getElementById('mask1');
  
  // 表示のクリックイベント
  [...hokkaidotohoku].forEach(hokkaidotohoku=>{
    hokkaidotohoku.addEventListener('click',(e)=>{
      modal1.classList.remove('hidden');
      mask1.classList.remove('hidden');
    });
  });
    
  // 閉じるときのクリックイベント
  close1.addEventListener('click',function(){
    modal1.classList.add('hidden');
    mask1.classList.add('hidden');
    });
    
  // マスク（黒くなっている背景のクリックイベント）
  mask1.addEventListener('click',function(){
    modal1.classList.add('hidden');
    mask1.classList.add('hidden');
    });
  
  // 関東地方
  const kanto = document.querySelectorAll('.kanto');
  const close2 = document.getElementById('close2');
  const modal2 = document.getElementById('modal2');
  const mask2 = document.getElementById('mask2');
  
  // 表示のクリックイベント
  [...kanto].forEach(kanto=>{
    kanto.addEventListener('click',function(){
      modal2.classList.remove('hidden');
      mask2.classList.remove('hidden');
    });
  });
    
  // 閉じるときのクリックイベント
  close2.addEventListener('click',function(){
    modal2.classList.add('hidden');
    mask2.classList.add('hidden');
    });
    
  // マスク（黒くなっている背景のクリックイベント）
  mask2.addEventListener('click',function(){
    modal2.classList.add('hidden');
    mask2.classList.add('hidden');
    });
    
  // 中部地方 
  const chubu = document.querySelectorAll('.chubu');
  const close3 = document.getElementById('close3');
  const modal3 = document.getElementById('modal3');
  const mask3 = document.getElementById('mask3');
    
  // 表示のクリックイベント
  [...chubu].forEach(chubu=>{
    chubu.addEventListener('click',function(){
    modal3.classList.remove('hidden');
    mask3.classList.remove('hidden');
    });
  });
      
  // 閉じるときのクリックイベント
  close3.addEventListener('click' ,function(){
    modal3.classList.add('hidden');
    mask3.classList.add('hidden');
  });
      
  // マスク（黒くなっている背景のクリックイベント）
  mask3.addEventListener('click',function(){
    modal3.classList.add('hidden');
    mask3.classList.add('hidden');
  });
    
  // 近畿地方
  const kinki = document.querySelectorAll('.kinki');
  const close4 = document.getElementById('close4');
  const modal4 = document.getElementById('modal4');
  const mask4 = document.getElementById('mask4');
      
  // 表示のクリックイベント
  [...kinki].forEach(kinki=>{
    kinki.addEventListener('click',function(){
      modal4.classList.remove('hidden');
      mask4.classList.remove('hidden');
    });
  });
        
  // 閉じるときのクリックイベント
  close4.addEventListener('click' ,function(){
    modal4.classList.add('hidden');
    mask4.classList.add('hidden');
  });
        
  // マスク（黒くなっている背景のクリックイベント）
  mask4.addEventListener('click',function(){
    modal4.classList.add('hidden');
    mask4.classList.add('hidden');
  });
  
  // 中国地方
  const chugoku = document.querySelectorAll('.chugoku');
  const close5 = document.getElementById('close5');
  const modal5 = document.getElementById('modal5');
  const mask5 = document.getElementById('mask5');
      
  // 表示のクリックイベント
  [...chugoku].forEach(chugoku=>{
    chugoku.addEventListener('click',function(){
      modal5.classList.remove('hidden');
      mask5.classList.remove('hidden');
    });
  });
        
  // 閉じるときのクリックイベント
  close5.addEventListener('click' ,function(){
    modal5.classList.add('hidden');
    mask5.classList.add('hidden');
  });
        
  // マスク（黒くなっている背景のクリックイベント）
  mask5.addEventListener('click',function(){
    modal5.classList.add('hidden');
    mask5.classList.add('hidden');
  });
  
  // 四国地方
  const shikoku = document.querySelectorAll('.shikoku');
  const close6 = document.getElementById('close6');
  const modal6 = document.getElementById('modal6');
  const mask6 = document.getElementById('mask6');
      
  // 表示のクリックイベント
  [...shikoku].forEach(shikoku=>{
    shikoku.addEventListener('click',function(){
      modal6.classList.remove('hidden');
      mask6.classList.remove('hidden');
    });
  });
        
  // 閉じるときのクリックイベント
  close6.addEventListener('click' ,function(){
    modal6.classList.add('hidden');
    mask6.classList.add('hidden');
  });
        
  // マスク（黒くなっている背景のクリックイベント）
  mask6.addEventListener('click',function(){
    modal6.classList.add('hidden');
    mask6.classList.add('hidden');
  });

  // 九州・沖縄
  const kyusyuokinawa = document.querySelectorAll('.kyu-oki');
  const close7 = document.getElementById('close7');
  const modal7 = document.getElementById('modal7');
  const mask7 = document.getElementById('mask7');
      
  // 表示のクリックイベント
  [...kyusyuokinawa].forEach(kyusyuokinawa=>{
    kyusyuokinawa.addEventListener('click',function(){
      modal7.classList.remove('hidden');
      mask7.classList.remove('hidden');
    });
  });
        
  // 閉じるときのクリックイベント
  close7.addEventListener('click' ,function(){
    modal7.classList.add('hidden');
    mask7.classList.add('hidden');
  });
        
  // マスク（黒くなっている背景のクリックイベント）
  mask7.addEventListener('click',function(){
    modal7.classList.add('hidden');
    mask7.classList.add('hidden');
  });
  

  // サーチアイコンのクリックイベント
  // 要素の取得
  const search = document.getElementById('js-search-icon');
  const search_modal = document.getElementById('js-search-modal');
  const header = document.getElementById('js-header');
  const cross = document.getElementById('js-cross');
  const jpMap = document.getElementById('japan-map');
  const prefList = document.getElementById('js-pref-list')

  const pref = [
    '北海道',
    '青森',
    '秋田',
    '岩手',
    '山形',
    '宮城',
    '福島',
    '群馬',
    '栃木',
    '茨城',
    '埼玉',
    '千葉',
    '東京',
    '神奈川',
    '新潟',
    '富山',
    '石川',
    '福井',
    '長野',
    '岐阜',
    '山梨',
    '愛知',
    '静岡',
    '京都',
    '滋賀',
    '大阪',
    '奈良',
    '三重',
    '和歌山',
    '兵庫',
    '鳥取',
    '岡山',
    '島根',
    '広島',
    '山口',
    '香川',
    '愛媛',
    '徳島',
    '高知',
    '福岡',
    '佐賀',
    '長崎',
    '大分',
    '熊本',
    '宮崎',
    '鹿児島',
    '沖縄'
  ];

  // 県一覧を追加
  (function(){
    const prefFragment = document.createDocumentFragment();
    
    for (let prefI = 0, len=pref.length; prefI<len;prefI++){
      let $li = document.createElement('li');
      let prefLi = document.createTextNode(pref[prefI]);
      $li.appendChild(prefLi);
      prefFragment.appendChild($li);
      // idを付与
      $li.setAttribute('id', 'jsPref'+prefI);
      // クラスを付与
      $li.classList.add('searchPref');
    }
      prefList.appendChild(prefFragment);
  })();

  // 県一覧のクリックイベント（selectedクラスのつけ外しで灰色or水色にする）
  document.addEventListener('DOMContentLoaded' , function(){
    let searchPref = document.querySelectorAll('.searchPref');
    // console.log(searchPref);
    for (let i = 0;i<searchPref.length; i++){
      searchPref[i].addEventListener('click' , function(){
        this.classList.toggle('selected');
      },false);
    }
  },false);


  // モーダル内のリアルタイム絞り込み機能
  // let $lists = document.getElementsByClassName('searchPref');
  // console.log($lists);
  // let li = $lists[0].innerHTML.toLocaleUpperCase();
  // console.log(li);
  
    
    let searchInput = document.getElementById('search-input'); //モーダル内の検索フォームを取得
    searchInput.addEventListener('input' , function(){
    let filter = searchInput.value.toUpperCase(); //入力された文字を取得
    let $lists = document.getElementsByClassName('searchPref'); //モーダル内の各県（li）を取得
    // console.log(filter);
    for(let i = 0;i<$lists.length;i++){ //$lists.length は47
      let li = $lists[i].innerHTML; //i番目の県を取得
      if(li){
        if(li.toUpperCase().indexOf(filter) > -1){
          $lists[i].style.display = '';
        }else{
          $lists[i].style.display = 'none';
        }
      }
  };
});
  
  
    

  
  // モーダル関係はclassList.toggleで書き換えられそう？
  // アイコンをクリックしてモーダルを開く
  search.addEventListener('click',function(){
    // モーダルの表示
    search_modal.classList.remove('hidden');
    // トップ画面を隠す
    header.classList.add('disable');
    jpMap.classList.add('disable');
    
  });

  // ×をクリックしてモーダルを閉じる
  cross.addEventListener('click' , function(){
    search_modal.classList.add('hidden');
    header.classList.remove('disable');
    jpMap.classList.remove('disable');
  });

  // Web Share API
  const testBtn = document.getElementById('js-test');
  testBtn.addEventListener('click', async function share(){
    if (!navigator.share) {
      alert('ご利用のブラウザでは共有できません。');
      return;
    }
    try{
      await window.navigator.share({
        title:'うまく反映されない',
        text:'共有テスト',
        url:location.href,
      });
      alert('共有できました。');
    }catch(e){
      console.log(e.message);
    }
  });



}


// 複数モーダル
      // let area = document.querySelectorAll('.area');
      // // console.log(area);
      // const close = document.querySelectorAll('.close');
      // const modal = document.querySelectorAll('.modal');
      // const mask = document.querySelectorAll('.mask');
    
      // let modalCloseAction;
      // let dataModalOpen;
      // let targetModal;
    
      // for(let i = 0; i < dataModalOpen.length; i++){
      //   // モーダルを隠す処理
      //   modalCloseAction = function(e){
      //     targetModal = e.currentTarget.closest('.modal');
      //     targetModal.classList.add('hidden');
      //     mask.classList.add('hidden');
      //   };
    
      //  // マスク（黒くなっている部分をクリックでモーダルを隠す）
      //   const maskClose = function () { 
      //     mask[i],addEventListener('click',function(e){
      //       modalCloseAction(e);
      //     },false);
      //    };
      
      //   //  モーダルを表示
      //   const modalOpen = function(e){
      //     dataModalOpen = e.currentTarget.getAttribute('data-modal-open');
      //      for(let b = 0; b<modal.length; b++){
      //        if(modal[b].getAttribute('data-modal') === dataModalOpen){
      //          modal[b].classList.remove('hidden');
      //          maskClose();
      //          return false;
      //        }
      //      }
      //   };
    
      //   modalOpen[i].addEventListener('click',function(e){
      //     modalOpen(e);
      //   },false);
      // }
    
      //   // モーダルを隠す
      //   for(let c = 0; c<close.length; c++){
      //     close[c].addEventListener('click',function(e){
      //       modalCloseAction(e);
      //       return false;
      //     },false)
      //   }