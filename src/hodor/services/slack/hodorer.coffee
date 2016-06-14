slackClient = require './slackClient'

hodor = (channelId) ->
  slackClient.sendMessage 'Hodor', channelId

exports = this
exports.hodor = hodor