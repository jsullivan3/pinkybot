# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot vodka me - Grab me a vodka
#
# Author:
#  John Sullivan

vodkas = [
    "https://www.thespruceeats.com/thmb/VdVFs-62QBYWppoUwTdtK8rtw-0=/3849x2524/filters:no_upscale():max_bytes(150000):strip_icc()/vodka-martini-recipe-760983-8-5b48ffe1c9e77c001a664f6e.jpg",
    "https://hips.hearstapps.com/del.h-cdn.co/assets/15/34/1439920100-vodka-drinks-cucumber-mint.jpg",
    "https://assets.punchdrink.com/wp-content/uploads/2016/03/Article-Vodka-Cocktail-Recipe-Duke-Martini-London-Giuseppe-Gonzalez-Suffolk-Arms-Espresso-Martini-NYC.jpg",
    "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Fcdn-image.foodandwine.com%2Fsites%2Fdefault%2Ffiles%2Fclassic-vodka-gimlet-xl-recipe2017.jpg&w=1000&c=sc&poi=face&q=70",
    "https://cdn.liquor.com/wp-content/uploads/2016/12/22114757/vodka-gimlet-720x720-recipe.jpg"
]

module.exports = (robot) ->
  robot.hear /.*(vodka me).*/i, (msg) ->
    msg.send msg.random vodkas
