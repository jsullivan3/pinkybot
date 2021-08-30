module.exports = (robot) ->
    robot.respond /(greet|say (hi|howdy|hello) to) (.*)/, (msg) ->
        msg.send "#{msg.match[3]} - Howdy there!"

    robot.respond /([Hh]owdy there|[Hh]i|[Hh]ello)/, (msg) ->
        msg.reply "Why hello there!"
