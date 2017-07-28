# Description:
#   Library Computer Access/Retrieval System
#

module.exports = (robot) ->
  robot.respond /(?=.*\btea\b)(?=.*\bearl gr(a|e)y\b).+/i, (res) ->
    res.send 'https://www.tetley.co.uk/images/librariesprovider6/default-album/tea-cup0ede35bfad0f648b8397ff0a000946e8-tmb-small.tmb-medium.png'
  robot.hear /(code of conduct|\bcoc\b)/i, (res) ->
    res.send 'Toronto Mesh Code of Conduct: https://tomesh.net/code-of-conduct/'
