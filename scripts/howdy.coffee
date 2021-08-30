module.exports = (robot) ->
    robot.respond /(greet|say (hi|howdy|hello) to) (.*)/, (msg) ->
        msg.send "Howdy there, #{msg.match[3]}!"

    robot.respond /([Hh]owdy there|[Hh]i|[Hh]ello)/, (msg) ->
        msg.reply "Why hello there!"
