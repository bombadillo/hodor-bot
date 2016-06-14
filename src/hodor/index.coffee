slack = require './services/slack/slackClient'
log = require '../common/services/log'
channelRetriever = require './services/slack/channelRetriever'
hodorer = require './services/slack/hodorer'

commenceHodoring = ->
  slack.on 'open', ->
    log.info "Hodor"
    setInterval ->
      channelId = channelRetriever.getRandom()
      console.log channelId
      hodorer.hodor channelId
    , 600000

  slack.on 'message', (message) ->
    console.log message
    hodorer.hodor message.channel

  slack.on 'error', (err) ->
    log.error "Error", err

  slack.login()

exports = this
exports.commenceHodoring = commenceHodoring