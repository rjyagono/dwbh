#
#$(document).ready ->
#
#  $(document).bind "ajaxSuccess", "form.client_form", (event, xhr, settings) ->
#    $client_form = $(event.data)
#    $error_container = $("#error_explanation", $client_form)
#    $error_container_ul = $("ul", $error_container)
#    $("<p>").html(xhr.responseJSON.email + " saved.").appendTo $client_form
#    if $("li", $error_container_ul).length
#      $("li", $error_container_ul).remove()
#      $error_container.hide()
#
#  $(document).bind "ajaxError", "form.client_form", (event, jqxhr, settings, exception) ->
#    $client_form = $(event.data)
#    $error_container = $("#error_explanation", $client_form)
#    $error_container_ul = $("ul", $error_container)
#    $error_container.show()  if $error_container.is(":hidden")
#    $.each jqxhr.responseJSON, (index, message) ->
#      $("<li>").html(message).appendTo $error_container_ul
