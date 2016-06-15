slack = require './services/slack/slackClient'
log = require '../common/services/log'
channelRetriever = require './services/slack/channelRetriever'
hodorer = require './services/slack/hodorer'
randomTime = require './services/randomTime'
isMessageForHodor = require './services/isMessageForHodor'

commenceHodoring = ->
  slack.on 'open', ->
    log.info "Hodor"
    hodor()

  slack.on 'message', (message) ->
    if isMessageForHodor message
      hodorer.hodor message.channel

  slack.on 'error', (err) ->
    log.error "Error", err

  slack.login()

hodor = ->
  channelId = channelRetriever.getRandom()
  hodorer.hodor channelId

  setTimeout ->
    hodor()
  , randomTime.generate()

exports = this
exports.commenceHodoring = commenceHodoring