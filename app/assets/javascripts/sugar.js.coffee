$.extend window.Sugar,

  Configuration: {}

  stopwords: [
    'i', 'a', 'about', 'an', 'and', 'are', 'as', 'at', 'by', 'for', 'from', 'has', 'have',
    'how', 'in', 'is', 'it', 'la', 'my', 'of', 'on', 'or', 'that', 'the',
    'this', 'to', 'was', 'what', 'when', 'where', 'who', 'will', 'with', 'the'
  ]

  init: ->
    this.Application = new Sugar.Views.Application()

  extend: (extension) ->
    $.extend(Sugar, extension)

  log: ->
    if this.Configuration.debug && console?
      if arguments.length == 1
        console.log arguments[0]
      else
        console.log arguments

  authToken: (elem) ->
    if elem
      $(elem).find("input[name='authenticity_token']").val()
    else
      $("input[name='authenticity_token']").val()
