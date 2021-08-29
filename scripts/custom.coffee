# Description:
#   Personalizations and stuff.

module.exports = (robot) ->
    robot.respond /[iI] love you/, (msg) ->
        msg.send "I love you too, #{msg.envelope.user.real_name}!"

    robot.respond /say bye/, (msg) ->
        msg.send "Goodbye, cruel world!"

    robot.hear /[Aa]re you thinking what I'm thinking/, (msg) ->
        msg.send "I think so, #{msg.envelope.user.real_name}, but at this time of night, where are we going to find rubber pants our size?"
