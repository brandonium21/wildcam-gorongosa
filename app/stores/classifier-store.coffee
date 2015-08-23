Reflux = require 'reflux'

module.exports = Reflux.createStore
  listenables: [
    require '../actions/classifier-actions'
    require '../actions/task-actions'
  ]

  data:
    showingSummary: false
    shownTutorial: false
    tutorialIsOpen: false
    choiceInProgress: false

  getInitialState: ->
    @data

  onDisplayTutorial: ->
    @data.tutorialIsOpen = true
    @trigger @data

  onCloseTutorial: ->
    @data.tutorialIsOpen = false
    @data.shownTutorial = true
    @trigger @data

  onFinishClassification: ->
    @data.showingSummary = true
    @trigger @data

  onMoveToNextSubject: ->
    @data.showingSummary = false
    @trigger @data
