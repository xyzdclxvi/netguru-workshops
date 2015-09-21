$(document).ready ->
  $('[data-toggle="tooltip"]').tooltip({html: true})
  
  $('.btn').hover ->
    $(this).removeClass 'info-attention'
    return
    
  (->
    if $('#notice').html() != ""
      $('#notice').show()
    if $('#error').html() != ""
      $('#error').show()
    return
  ).call this  
    
  (->
    actual_height = $('body').height()
    desired_height = $(window).height()
    console.log actual_height + ' ' + desired_height
    if actual_height > desired_height
      return
    $('.push-it-down').css 'margin-top', desired_height - actual_height + 100
    console.log actual_height + ' ' + desired_height
    return
  ).call this
  

  return

