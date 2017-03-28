# Description:
#   Library Computer Access/Retrieval System
#

module.exports = (robot) ->
  robot.respond /(?=.*\btea\b)(?=.*\bearl gray\b).+/i, (res) ->
    res.send 'http://overtheteacups.com/wp-content/uploads/2012/02/tea-earl-grey.jpg'
