slackClient = require './slackClient'

getRandom = ->
  channels = slackClient.dataStore.channels
  return getRandomChannelId(channels)

getRandomChannelId = (channels) ->
  max = Object.keys(channels).length - 1
  randomIndex = Math.round Math.random() * max
  count = 0
  for channel of channels
    if count == randomIndex
      if channels[channel].members
        if channels[channel].members.indexOf(slackClient.activeUserId)
          return channel
    count++
  
  getRandomChannelId channels
    

exports = this
exports.getRandom = getRandom