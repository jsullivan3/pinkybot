# Description:
#   Poems and whimsical retorts
#
# Commands:
#   hubot read me a poem - reads a random poem from the hit game Interstate 76

poetry = [ """
Looking out the window of your room onto a wet rainy day
Main street under a slate gray afternoon sky
The light on your face is soft and dim under the lace curtain
And the streets are empty
In the distance, there is a flash and a rumble
Clouds sail the sky like giant wooden ships
On a blackened evergreen sea
Capped with foam
""",
        """
I'm a storm torrent across a slate-gray sea
I rush in billowed reflections a fast, fast dark sky over an Edinburgh's meadow's wet
I bolt white high through snowfall cold
I am lightning in the night
I sprint like fire across a match head
And leap across lakes of dream-stuff
Over ancient walls
Past armies fast as fast is
Faster than quicksilver can fall into the sun
I, bounding, prance unstoppable to you
My all
My everything dream
""",
        """
It's a high pitched sound
Hot rubber eternally pressing against a blackened pavement
A wheel is forever
A car is infinity times four
""",
        """
From where I lie
The oceans are deep and dry
Empty
The sky is black smoke bearing winter's frozen gifts
It will snow in this land for a thousand years
And I will sleep under it...forever
""",
        """
My dream
It takes place in the white room, in back
The plaster walls echo sounds
The brown wood floor is cold and solid beneath my brown, bare feet
This place was a nursery before
Now it is empty
Save for the hollow sound of my voice
""",
        """
This window above the Charles
Wire embedded in cold frames the world
Across white space to the frozen shore
I see through curls and eddies of falling snow
The once green field
And a birthday on the grass
A party for three in the Boston sun
All now covered with snow
""",
        """
Copley brought me to a monument
Quiet before the crunch of solitary footfall through ice
An obelisk stands in the winter city
Its relief tells of a death and justification
The precipitation of war
And my own memories
""",
        """
I'm silver smooth
Bathed ten times a second in an aerosol fire
Five thousand degrees in here
I course with electricity from my feet to my tongue
Where I vomit a torque-delivering spark
""",
        """
It's nicked at the edges
And leans backwards, almost reclining
Grass grows in tufts near where it enters the earth
Its words are worn with time
And its stained face is drawn long with wear
""",
        """
It's malleable, my design
Things just bolt on here and there
Real clean scraped face
A new gasket fitted and...
Tightened and...
I'm done.
""",
        """
She's my girl
Pearl white, slick and sexy
Never complains, always faithful
She cuts the air like a charging buffalo
In her arms, it's quiet
Her engine whispers to me:
"It's gonna be just fine"
""",
        """
They twist like quad-coiled vipers
Feeding on combustion's waste
Black as ink and hot as Hades they join below
Eternally in shadow, unless of course, I roll
They belt a rumbling and vibrate fear
Into the bones of my foe
""",
        """
It's not a happy place, between the dusk and the dawn
Deep below the well-lit and open spaces
I wait under the under
For them to come and rip me asunder
Tearing my core until morning
""",
        """
Glass, flat and forever
It stretches out and never stops
Unless it finds the hills whose lines rise to mountain peaks
Far as far can be
""",
        """
There is a breeze out here
That filters through the scrub
Over hills and down through long dry riverbeds
Across the Texas blacktop
It cools the skin and brings the most subtle song in the world
To the ears of those who listen
"""
]

module.exports = (robot) ->
    robot.respond /(read me)|(how a?bout) a poem/, (msg) ->
        msg.send msg.random poetry
