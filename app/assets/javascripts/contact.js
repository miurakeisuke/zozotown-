$(function() {
  function buildHTML(contact){
    var html = `<div class="product_contacts__view__contents__name">
                  <i class="fa fa-user" aria-hidden="true"></i> ${contact.name} 様
                </div>
                <div class="product_contacts__view__contents__message">
                  <i class="fa fa-question-circle-o" aria-hidden="true"></i> ${contact.content}
                </div>`
    return html;
  }
  $('#new_contact').on('submit', function(e){
    e.preventDefault();
    var formData = new FormData(this);
    var form_url = $(this).attr('action')
    $.ajax({
      url: form_url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data) {
      var html = buildHTML(data);
      $('.product_contacts__view__contents').append(html)
      $("#new_contact")[0].reset();
      $(".product_contacts__view__footer__form__btn").prop('disabled', false);
    })
    .fail(function() {
      alert('通信に失敗しました');
    });
  });
});

$(function(){
  $('.product_contacts__view__footer__form__btn').on('click',function(){
    $('.product_contacts__view__footer__contact').hide();
  })
});

$(function(){
  $('#contact_event').on('click',function(){
    $('.product_contacts__view').fadeIn("slow");
  })
});
