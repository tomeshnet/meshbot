# Description:
#   Library Computer Access/Retrieval System
#

module.exports = (robot) ->
  robot.respond /(?=.*\btea\b)(?=.*\bearl gr(a|e)y\b).+/i, (res) ->
    res.send 'https://www.tetley.co.uk/images/librariesprovider6/default-album/tea-cup0ede35bfad0f648b8397ff0a000946e8-tmb-small.tmb-medium.png'
