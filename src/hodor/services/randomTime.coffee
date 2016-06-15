config = require '../../common/config/index'

generate = ->
  min = config.minHodor
  max = config.maxHodor
  time = Math.floor(Math.random() * (max - min + 1)) + min
  console.log time
  return time

exports = this
exports.generate = generate