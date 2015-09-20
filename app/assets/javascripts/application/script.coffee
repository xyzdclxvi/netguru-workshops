$(document).ready ->
  $('[data-toggle="tooltip"]').tooltip({html: true})
  
  $('.btn').hover ->
    $(this).removeClass 'info-attention'
    return

  return

