$(document).ready ->
  $('[data-toggle="tooltip"]').tooltip({html: true})
  
  $('.btn').hover ->
    $(this).removeClass 'info-attention'
    return
    
  (->
    actual_height = $('body').height()
    desired_height = $(window).height()
    if actual_height > desired_height
      return
    $('.push-it-down').css 'margin-top', desired_height - actual_height + 40
    return
  ).call this

  return

