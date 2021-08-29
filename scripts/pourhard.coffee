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
#   hubot pour hard - Grab me a specific beer
#
# Author:
#  John Sullivan

nitros = [
    "https://www.premiergourmet.com/media/catalog/product/cache/1/image/300x261/9df78eab33525d08d6e5fb8d27136e95/m/i/milk_stout_nitro_bottle_and_glass_795556920.png"
    "https://i.ytimg.com/vi/dY-ti2-bBG0/hqdefault.jpg"
    "http://archive.boston.com/lifestyle/food/blogs/99bottles/milk%20stout%20nitro%20005.jpg"
    "https://i.pinimg.com/originals/25/ac/b8/25acb809605474e5159d80901efcfcee.jpg"
    "https://ewscripps.brightspotcdn.com/dims4/default/4ea7cda/2147483647/strip/true/crop/640x360+0+33/resize/1280x720!/quality/90/?url=https%3A%2F%2Fmediaassets.thedenverchannel.com%2Fphoto%2F2017%2F06%2F21%2Fleft%20hand%20milk%20stout%20nitro_1498065114798_61558441_ver1.0_640_480.jpg"
    "http://thebeerrunkingsport.com/wp-content/uploads/2017/06/a782b012_MilkStoutNitro1.jpeg"
    "http://www.lefthandbrewing.com/wp/wp-content/uploads/2013/11/Nitro-3-way-pour.jpg"
]

module.exports = (robot) ->
  robot.hear /.*(pour hard).*/i, (msg) ->
    msg.send msg.random nitros
