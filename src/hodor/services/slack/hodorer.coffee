slackClient = require './slackClient'

hodor = (channelId) ->
  slackClient.sendMessage('Hodor', channelId)
    .catch (err) ->
      console.log err

exports = this
exports.hodor = hodor