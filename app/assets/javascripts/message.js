$(function(){
  function buildHTML(message){
    var html = `<p>
                  <strong>
                    <a href=/users/${message.user_id}>${message.user_name}</a>
                    ：
                  </strong>
                  ${message.text}
                </p>`
    return html; 
  }

  $('#new_comment').on('submit', function(e){
    e.preventDefault();
    console.log("OK")
    var formData  = new FormData(this);
    var url = $(this).attr('action')  
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })

    .done(function(data){
      var html = buildHTML(data);
      var html = buildHTML(data);
      $('.comments').append(html);
      $('.comment_edit_box').val('');
      $('.submit').prop('disabled', false);
      $('.comments').animate({scrollTop: $('.comments')[0].scrollHeight}, 'fast');
    })
    .fail(function(){
      alert('error');
    })
  })   
})