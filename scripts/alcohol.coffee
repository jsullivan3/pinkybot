# Description:
#   Needing a drink. Fast.
#
# Commands:
#   hubot alcohol - fetch a drink
#   hubot ALCOHOL - fetch three drinks
#   hubot ALCOHOL! - fetch a random number of drinks

module.exports = (robot) ->
  robot.respond /(alcohol|ALCOHOL)(!)?$/i, (msg) ->
    thebar = [
      "Beer",
      "Cider",
      "Sake",
      "Port",
      "Champagne",
      "Table wine",
      "Sangria",
      "Vermouth",
      "Sherry",
      "Absinthe",
      "Gin",
      "Rum",
      "Cava",
      "Vodka",
      "Tequila",
      "White wine",
      "Red wine",
      "Rosé wine",
      "Whisky",
      "Cognac"
    ]

    drinks = 1
    if msg.match[1] == 'alcohol'
    else
      if msg.match[2]
        drinks = Math.floor(Math.random() * 6) + 4
      else
        drinks = 3
    servings = ((msg.random thebar) for x in [1..drinks])
    msg.send "#{servings}"
