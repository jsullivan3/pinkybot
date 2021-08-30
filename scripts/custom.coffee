# Description:
#   Personalizations and stuff.

exclamations = [
   "POIT!",
   "NARF!",
]

module.exports = (robot) ->
    robot.respond /[iI] love you/, (msg) ->
        msg.send "I love you too, #{msg.envelope.user.real_name}!"

    robot.respond /say bye/, (msg) ->
        msg.send "Goodbye, cruel world!"

    robot.listen(
        (message) ->
            messageCount = robot.brain.get('messageCount') * 1 or 0
            if Math.random() > 0.9
                messageCount = messageCount + 1
            if messageCount > 20
                messageCount = 0
                robot.brain.set 'messageCount', 0
                true
            else
                robot.brain.set 'messageCount', messageCount
                false
        (response) ->
            response.send response.random exclamations
    )
