$(function() {
    function buildHTML(contact){
    var html = `<div class="product_contacts__view__contents__name">
                  <i class="fa fa-user" aria-hidden="true"></i> 山田寿夫 様
                </div>
                <div class="product_contacts__view__contents__message">
                  <i class="fa fa-question-circle-o" aria-hidden="true"></i> ${contact.content}
                </div>`
    return html;
  }
  $('#new_contact').on('submit', function(e){
    e.preventDefault();
    //フォームが送信された時のイベントを止める
    var formData = new FormData(this);
    var form_url = $(this).attr('action')
    console.log(this);
    console.log(formData);
    //sendボタンから送られてきた情報を取得するため
    //thisは#new_contactに関連するフォームの情報を取得している
    $.ajax({
      url: form_url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    //上記はjsonのリクエストで送る値
    .done(function(data) {
      // data.forEach(function(newContent){
      console.log(data);
      var html = buildHTML(data);
      console.log(data);
      $('.product_contacts__view__contents').append(html)
      // $('.product_contacts__view__footer__form__btn').val('')
    })
    .fail(function() {
      alert('通信に失敗しました');
    });
  });
});
