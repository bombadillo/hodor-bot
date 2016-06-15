config = require '../../common/config/index'

generate = ->
  min = config.minHodor
  max = config.maxHodor
  time = Math.floor(Math.random() * (max - min + 1)) + min
  return time

exports = this
exports.generate = generate