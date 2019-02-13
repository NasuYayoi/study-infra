$(document).on('turbolinks:load', function() {

    //.menuの中のp要素がクリックされたら
  $('.menu p').click(function(){

    //クリックされた.menuの中のp要素に隣接するul要素が開いたり閉じたりする。
    $(this).next('ul').slideToggle();

  });
});
