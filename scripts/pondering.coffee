# Description:
#   Personalizations and stuff.

replies = [
   "I think so, Brain, but where are we going to find a duck and a hose at this hour?",
   "Uh... yeah, Brain, but where are we going to find rubber pants our size?",
   "I think so, but where will we find an open tattoo parlor at this time of night?",
]

module.exports = (robot) ->
    robot.hear /[Aa]re you pondering what I'm pondering/, (msg) ->
        msg.send msg.random replies
