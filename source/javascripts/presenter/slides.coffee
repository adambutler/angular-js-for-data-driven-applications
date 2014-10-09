window.keyPress = (e) ->
  unless $(e.target).is('input')
    $('#slides').toggleClass('hide') if e.keyCode is 32
    if $('#slides').hasClass('hide')
      $('#slides').blur()
    else
      $('#slides').focus()
    e.preventDefault()

$ ->
  $(document).on 'keypress', window.keyPress
    
