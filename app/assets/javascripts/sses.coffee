# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $progress = $('#sses #progress')
  eventSource = new EventSource '/sses/stream'
  eventSource.addEventListener 'progress', (event) ->
    $progress.text event.data
  eventSource.addEventListener 'done', (event) =>
    $progress.text event.data
    this.close()
