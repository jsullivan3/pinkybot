exclamations = [
   "POIT!",
   "NARF!",
]

module.exports = (robot) ->
    robot.respond /(greet|say (hi|howdy|hello) to) (.*)/, (msg) ->
        msg.send "#{msg.match[3]} Howdy there!"

    robot.respond /([Gg]reetings|[Hh]owdy there|[Hh]i|[Hh]ello)(, future underling.)?/, (msg) ->
        if msg.match[2] == ", future underling."
            msg.reply msg.random exclamations
        else
            msg.reply "Why hello there!"
