# Description:
#   Library Computer Access/Retrieval System
#

module.exports = (robot) ->
  robot.respond /(?=.*\btea\b)(?=.*\bearl gr(a|e)y\b).+/i, (res) ->
    res.send 'https://i.imgur.com/Yb0XPHI.jpg'
  robot.hear /(code of conduct|\bcoc\b)/i, (res) ->
    res.send 'Toronto Mesh Code of Conduct: https://tomesh.net/code-of-conduct/'
