slack = require '../services/slack/slackClient'

module.exports = (message) ->
  if !message.text
    return false
    
  isDm = message.channel.substr(0, 1) == 'D'
  hodorMentioned = message.text.match slack.activeUserId

  return isDm || hodorMentioned