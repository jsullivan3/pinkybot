# Description:
#   Retrieve Dilbert comics for entertainment but not profit
#
# Commands:
#   hubot dilbert me [YYYY-MM-DD] - retrieves Dilbert comic, defaults to today's

module.exports = (robot) ->
    robot.hear /dilbert me\.? ?(.*)?/i, (msg) ->
        url = 'https://dilbert.com'
        if msg.match[1]?
          comicDateRegexp = /\d\d\d\d-?\d\d-?\d\d/
          if not comicDateRegexp.exec(msg.match[1])?
            msg.send("I do not understand '#{msg.match[1]}' as a date.")
            return
          url = "#{url}/strip/#{msg.match[1]}"
        msg.http(url)
          .get() (err, res, body) ->
            if err
              msg.send "Sorry, I can't do that."
              return
            rx1 = /img-responsive.*>/
            rx2 = /\/\/[^"]*/
            img = rx2.exec(rx1.exec(body)).toString()
            msg.send("https:#{img}.png")
