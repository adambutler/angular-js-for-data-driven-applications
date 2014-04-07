window.keyPress = (e) ->
  $('#slides').toggleClass('hide') if e.keyCode is 32

$ ->
  $(document).on 'keypress', window.keyPress
    
