# Description:
#   Respond to a robot roll call
#
# Commands:
#   hubot roll call

module.exports = (robot) ->
    robot.hear /roll\s*call/, (msg) ->
        msg.send("POIT!  Pinky reporting for duty!  NARF!")
