# Description:
#   Personalizations and stuff.

module.exports = (robot) ->
    robot.respond /[iI] love you/, (msg) ->
        msg.send "I love you too, #{msg.envelope.user.real_name}!"

    robot.respond /say bye/, (msg) ->
        msg.send "Goodbye, cruel world!"
