# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->

  $(document).bind "ajaxSuccess", "form.client_form", (event, xhr) ->
    $client_form = $(event.data)
    console.log($client_form);
    $error_container = $("#error_explanation", $client_form)
    $error_container_ul = $("ul", $error_container)
    $("<p class=\"text-center alert alert-success no-decoration\">").html("Thank you for submitting, will contact you accordingly.").appendTo $client_form
    if $("li", $error_container_ul).length
      $("li", $error_container_ul).remove()
      $error_container.hide()
      $error_container.find("li").remove();

  $(document).bind "ajaxError", "form.client_form", (event, jqxhr, settings, exception) ->
    $client_form = $(event.data)
    $error_container = $("#error_explanation", $client_form)
    $error_container_ul = $("ul", $error_container)
    $error_container.find("li").remove();
    $error_container.show() if $error_container.is(":hidden")
    $data = JSON.parse(jqxhr.responseText);
    $.each $data, (index, message) ->
      $("<li>").html(message).appendTo $error_container_ul