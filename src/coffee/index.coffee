app =
  initialize: ->
    @bind()

  bind: ->
    document.addEventListener 'deviceready', @deviceready, false

  deviceready: ->
    app.report 'deviceready'

  report: (id) ->
    console.log 'Report: ' + id
    document.querySelector('#' + id + ' .pending').className += ' hide'
    completeElem = document.querySelector('#' + id + ' .complete')
    completeElem.className = completeElem.className.split('hide').join('')
