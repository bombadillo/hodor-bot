slack = require '../services/slack/slackClient'

module.exports = (message) ->
  isDm = message.channel.substr(0, 1) == 'D'
  hodorMentioned = message.text.match slack.activeUserId

  return isDm || hodorMentioned