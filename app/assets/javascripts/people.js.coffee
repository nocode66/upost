# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready ->
  $("#person_country_id").change ->
    subcategory_url = "/cities/" + $(this).val()
    subcategory_select = $("#person_city_id")
    $.ajax
      type:'POST'
      dataType: 'text'
      url: subcategory_url
      success: (data) ->
        subcategory_select.html "<option selected=selected>Select City</option>" + data
        return
    return
  return