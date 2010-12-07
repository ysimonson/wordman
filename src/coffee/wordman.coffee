# 1's indicate a wall, 0's indicate a free space
MAP = [
    0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,
    0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0,
    0, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1, 1, 0, 1, 0,
    0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0,
    0, 1, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0,
    0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0,
    0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0,
    0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 
    1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1,
    0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 
    1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1,
    0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 
    0, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0,
    0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0,
    0, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1, 1, 0, 1, 0,
    0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0,
    0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 1, 0,
    0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0,
    0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0,
    0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0,
    0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0
]

#From http://www.homespellingwords.com/5th-grade-spelling-lists-1.htm
WORDS = ['KNEAD', 'NUMB', 'CHRISTMAS', 'KNITTING', 'TOMB', 'KNEW', 'FASTEN',
         'AGHAST', 'LISTENING', 'CLIMBER', 'HUSTLE', 'KNOW', 'MISTLETOE',
         'BOMB', 'GHOST', 'SPAGHETTI', 'WHISTLING', 'KNAPSACK', 'PLUMBING',
         'KNEELING', 'SUCCUMB', 'ALTHOUGH', 'HONEYCOMB']

#Probability of a letter exiting the ghost house.
PROBABILITY_EXIT = 0.1

#Probability of a ChaseFollowLetter moving in the right direction (as opposed
#to a random direction).
PROBABILITY_WISE_MOVE = 0.50

#Time (in ms) for a sprite to switch between two states - e.g. the time for
#wordman to open/close its mouth.
BLINK_TIME = 100

#Time (in ms) for a defered task to execute.
DEFER_TIME = 3000

#Array of all the possible directions.
ALL_DIRECTIONS = ['left', 'backward', 'right', 'forward']

#Mapping of keyboard codes to directions.
KEY_MAP = {
    37: 'left',
    38: 'backward',
    39: 'right',
    40: 'forward'
}

#x, y deltas for the directions.
DELTAS = {
    'left': [-1, 0],
    'backward': [0, -1],
    'right': [1, 0],
    'forward': [0, 1]
}

#Angles associated with the directions.
THETAS = {
    'left': Math.PI,
    'backward': 3.0 / 2.0 * Math.PI,
    'right': 0,
    'forward': Math.PI / 2.0
}

#Mapping of directions that are clockwise to their keys.
CLOCKWISE = {
    'left': 'backward',
    'backward': 'right',
    'right': 'forward',
    'forward': 'left'
}

#Size of a map block (in px).
BLOCK_SIZE = 20

#Font properties for normal text.
NORMAL_FONT_PROPS = font: BLOCK_SIZE + 'px monospace', textBaseline: 'top', textAlign: 'center'

#Font properties for the scoreboard text.
POINTS_FONT_PROPS = font: parseInt(BLOCK_SIZE / 2) + 'px monospace', textAlign: 'left'

#Font properties for point display on game over.
GAME_OVER_POINTS_FONT_PROPS = font: parseInt(BLOCK_SIZE / 2) + 'px monospace'

#Number of points provided for hitting a target letter
POINTS_GOOD = 5

#Number of points provided for hitting a non-target letter
POINTS_BAD = -1

#Instance of the WordManGame.
game = null

#Returns a new [x, y] with the given direction applied. By default the
#position is only moved by one value, unless multiplier is specified.
applyDirection = (x, y, direction, multiplier) ->
    if multiplier is undefined then multiplier = 1
    deltas = DELTAS[direction]
    [x + deltas[0] * multiplier, y + deltas[1] * multiplier]
    
#Gets the direction when the input direction is rotated clockwise by numTimes.
rotate = (direction, numTimes) ->
    if numTimes is undefined then numTimes = 1
    
    for i in [0...numTimes]
        direction = CLOCKWISE[direction]
        
    direction
    
#Chooses a random item from an array.
chooseFrom = (array) -> array[parseInt(Math.random() * array.length)]

#Executes a callback after a delayed period of time.
defer = (callback) -> setTimeout callback, DEFER_TIME
    
#Reloads the page after a delayed period of time.
deferReload = -> defer => window.location.reload()

#Represents something that can be drawn on the screen.
class Entity
    #Creates a new entity. blockX and blockY specify the discrete location of
    #the entity in the board. direction indicates the entity's direction.
    constructor: (@blockX, @blockY, @direction) ->
        @x = @blockX * BLOCK_SIZE
        @y = @blockY * BLOCK_SIZE
        @tweening = true
        @dead = false
        @blink = false
        
        #Timer to repeatedly move the entity
        setInterval =>
           @move()
        , @movementTime
        
        #Time to repeatedly change the entity's blink state
        setInterval =>
            @blink = !@blink
        , BLINK_TIME
        
    #Returns whether a given direction is blocked for the entity.
    isDirectionBlocked: (direction) ->
        if direction is undefined then direction = @direction
        game.isWalled applyDirection(@blockX, @blockY, direction)...
        
    #Returns whether the current entity direction is blocked.
    isBlocked: ->
        @isDirectionBlocked @direction
        
    #Returns an array of directions that are not blocked.
    allowedDirections: ->
        for direction in ALL_DIRECTIONS when not @isDirectionBlocked direction
            direction
            
    #Gets reversed direction of the current one.
    reversed: ->
        rotate @direction, 2
        
    #Timer callback that periodically moves the entity.
    move: ->
        #Quit if the entity is dead
        if @dead then return
        
        #Determine if we have reached the next discrete position if the entity is
        #currently tweening.
        if @tweening
            [futureBlockX, futureBlockY] = applyDirection @blockX, @blockY, @direction
        
            if @x == futureBlockX * BLOCK_SIZE and @y == futureBlockY * BLOCK_SIZE
                if futureBlockX < 0
                    futureBlockX = 21
                else if futureBlockX > 20
                    futureBlockX = -1
                
                @blockX = futureBlockX
                @blockY = futureBlockY
                @x = futureBlockX * BLOCK_SIZE
                @tweening = false
        
        #Get the new direction (if any).
        if not @tweening
            @onDirectionDecision()
        else if @shouldReverse()
            [blockX, blockY] = applyDirection @blockX, @blockY, @direction
            @direction = @reversed()
        
        #Apply the positional changes.
        if @tweening or not @isDirectionBlocked(@direction) or @blockX == 0 or @blockX == 20
            [@x, @y] = applyDirection @x, @y, @direction
            @tweening = true
    
    #Renders the entity.
    render: (canvas) ->
        #If the entity is not dead, then call the entity's specific render method
        if not @dead then return @renderLiving canvas
        
        #If the entity is dead, don't draw anything on blinking.
        if @blink then return
        
        #Get the center x and y of the discrete position.
        cx = @x + BLOCK_SIZE / 2
        cy = @y + BLOCK_SIZE / 2
        r = 4
        
        #Draw a small explosion representing death.
        canvas.strokeWeight(1).strokeStyle('white')
        canvas.line(cx - r, cy - r, cx + r, cy + r)
        canvas.line(cx, cy - r, cx, cy + r)
        canvas.line(cx + r, cy - r, cx - r, cy + r)
        canvas.line(cx - r, cy, cx + r, cy)
        
    #Entity-specific method that is called when the entity has the option of
    #changing direction.
    onDirectionDecision: ->
        
    #Entity-specific method that is called when the entity is living and needs
    #to be rendered.
    renderLiving: ->
        
    #Entity-specific method that is called while the entity is tweening,
    #giving it the option to reverse course mid-tween.
    shouldReverse: -> false
    
class WordMan extends Entity
    #Time (in ms) for wordman to move
    movementTime: 10
    
    constructor: (blockX, blockY, direction) ->
        super blockX, blockY, direction
        @futureDirection = null
        
    onDirectionDecision: ->
        #Change course to the enqueued new position if it exists.
        if @futureDirection and not @isDirectionBlocked @futureDirection
            @direction = @futureDirection
            @futureDirection = null
        
    renderLiving: (canvas) ->
        #Draw wordman!
        canvas.fillStyle('yellow').ellipse @x + 1, @y + 1, BLOCK_SIZE - 2, BLOCK_SIZE - 2
        
        #Determine how far in the mouth should be.
        inset = if @blink then 0 else 7
        
        #Create a polygon representing wordman's mouth.
        points =
            if @direction == 'backward'
                [@x + inset, @y + 1, @x + BLOCK_SIZE - inset, @y + 1]
            else if @direction == 'right'
                [@x + BLOCK_SIZE - 1, @y + inset, @x + BLOCK_SIZE - 1, @y + BLOCK_SIZE - inset]
            else if @direction == 'forward'
                [@x + inset, @y + BLOCK_SIZE - 1, @x + BLOCK_SIZE - inset, @y + BLOCK_SIZE - 1]
            else if @direction == 'left'
                [@x + 1, @y + inset, @x + 1, @y + BLOCK_SIZE - inset]
                
        #Render the mouth.
        points = points.concat [@x + BLOCK_SIZE / 2, @y + BLOCK_SIZE / 2]
        canvas.noStroke().fillStyle('black').polygon points...
        
    shouldReverse: ->
        #If the enqueued direction is the reverse of this one, then return true.
        if @futureDirection and @futureDirection == @reversed() and not @isDirectionBlocked @futureDirection
            @futureDirection = null
            return true
        
        false
        
class Letter extends Entity
    #Time (in ms) for a letter to move.
    movementTime: 12
    
    constructor: (blockX, blockY, @letter) ->
        super blockX, blockY, chooseFrom ['left', 'right']
        @respawning = true
        @hitLast = false
        
    #Determines a direction while the letter is in the ghost house.
    getSpawnDirection: ->
        if not @isDirectionBlocked('backward') and Math.random() < PROBABILITY_EXIT
            @respawning = false
            'backward'
        else if not @isBlocked()
            @direction
        else
            chooseFrom @allowedDirections()
            
    onDirectionDecision: ->
        @direction = if @respawning then @getSpawnDirection() else @getDirection()
        
    renderLiving: (canvas) ->
        #If wordman is too close to this letter, register it as a hit.
        wordman = game.wordman
        xComp = (@x + BLOCK_SIZE / 2) - (wordman.x + BLOCK_SIZE / 2)
        yComp = (@y + BLOCK_SIZE / 2) - (wordman.y + BLOCK_SIZE / 2)
        if Math.sqrt(xComp * xComp + yComp * yComp) < BLOCK_SIZE / 2 then game.hit this
        
        #Render the letter.
        canvas.fillStyle('white').text @letter, @x + BLOCK_SIZE / 2, @y
        
    getDirection: ->
    
#A not-so-smart letter    
class StupidLetter extends Letter
    getDirection: ->
        #Go in a random direction. Try to avoid reversing directions.
        reversed = @reversed()
        chooseFrom((dir for dir in @allowedDirections() when dir != reversed)) or reversed

#A letter that chases wordman if it's the wrong one to catch, and runs away if
#it is supposed to be caught.
class ChaseFollowLetter extends Letter
    getDirection: ->
        #Figure out the allowed directions, and remove the reverse direction.
        allowed = @allowedDirections()
        reversed = @reversed()
        allowedWithoutReverse = (dir for dir in allowed when dir != reversed)
        
        #Go in a random direction sometimes.
        if Math.random() > PROBABILITY_WISE_MOVE
            return chooseFrom(allowedWithoutReverse) or reversed
        
        wordman = game.wordman
        bearing = []
        
        #Figure out the bearing toward wordman.
        if wordman.blockX < @blockX
            bearing.push 'left'
        else if wordman.blockX > @blockX
            bearing.push 'right'
        if wordman.blockY < @blockY
            bearing.push 'backward'
        else if wordman.blockY > @blockY
            bearing.push 'forward'
        
        #Use the bearing information to either move toward or away from wordman.
        if @letter == game.targetLetter()
            awayDirections = (dir for dir in allowedWithoutReverse when dir not of bearing)
            if awayDirections.length > 0 then return chooseFrom awayDirections
        else
            towardDirections = (dir for dir in allowedWithoutReverse when dir of bearing)
            if towardDirections.length > 0 then return chooseFrom towardDirections
        
        #Choose one of those directions.
        return chooseFrom allowed

#Contains game state information and exposes rules for gameplay.
class WordManGame
    constructor: (canvas) ->
        @elements = [@wordman = new WordMan(10, 15, 'left')]
        @word = chooseFrom WORDS
        @fullscreenText = null
        @points = 0
        
        for i in [0...@word.length]
            letter = @word[i]
            @elements.push new @letterType 10, 9, letter
        
        @targetIndex = 0
        
    #Gets the character that is currently targeted.
    targetLetter: ->
        @word[@targetIndex]
    
    #Determines if the discrete position (x, y) is blocked off.
    isWalled: (x, y) ->
        MAP[x + y * 21] == 1
        
    #Renders the game.
    render: (canvas) ->
        #Render an endgame screen if necessary.
        if @fullscreenText != null
            canvas.clear().text @fullscreenText, canvas.width / 2, canvas.height / 2
            canvas.fontProps(GAME_OVER_POINTS_FONT_PROPS).text('Points: ' + @points, canvas.width / 2, canvas.height / 2 + 24)
            return
        
        #Fill in the blocks.
        canvas.fill().fillStyle('blue')
        for x in [0..21]
            for y in [0..21]
                if @isWalled(x, y) then canvas.rectangle(x * BLOCK_SIZE, y * BLOCK_SIZE, BLOCK_SIZE, BLOCK_SIZE)
        
        #Render each individual element.
        for element in @elements
            element.render canvas
            
        #Render the target word and current score.
        canvas.text @word, canvas.width / 2, 430
        canvas.fontProps(POINTS_FONT_PROPS).text('Points: ' + @points, 10, 440).fontProps(NORMAL_FONT_PROPS)
    
    hit: (letter) ->
        #Ignore the hit call if wordman is already dead.
        if wordman.dead then return
        
        #We got the right letter!
        if letter.letter == @targetLetter()
            #Kill the letter.
            @onHitTargetLetter letter
            letter.dead = true
            @targetIndex += 1
            
            #Display a win screen if the game is over, otherwise remove the letter.
            if @targetIndex >= @word.length
                @win()
            else
                defer => @elements = (elem for elem in @elements when elem != letter)
        #We got hit by the wrong letter :(
        else
            @onHitWordMan()
    
    #Sets the win screen and defers a page refresh.
    win: ->
        @fullscreenText = "You win!"
        deferReload()
        
    #Sets the loss screen and defers a page refresh.
    lose: ->
        @fullscreenText = "You lose!"
        deferReload()
        
    #Called when a targeted letter is hit.
    onHitTargetLetter: (letter) ->
        
    #Called when a non-targeted letter hits wordman.
    onHitWordMan: ->
        
class DeathMatchWordManGame extends WordManGame
    letterType: ChaseFollowLetter
    
    onHitTargetLetter: (letter) ->
        @points += POINTS_GOOD
    
    onHitWordMan: ->
        #End the game if the wrong letter hit us.
        @wordman.dead = true
        defer => @lose()
        
class PointsWordManGame extends WordManGame
    letterType: ChaseFollowLetter
    timeToHit: 1000
    
    onHitTargetLetter: (letter) ->
        #Increase the score if we got the right letter.
        @points += POINTS_GOOD
    
    onHitWordMan: ->
        #Decrease the score if we got the wrong letter, but set a flag so we
        #don't get repeatedly penalized for a hit.
        
        time = new Date().getTime()
        
        if time - (@lastHit or 0) > @timeToHit
            @lastHit = time
            @points += POINTS_BAD
            
window.run = ->
    canvas = new Canvas($('#wordman')[0])
    canvas.background('black').framerate(30)
    canvas.fill().fontProps(NORMAL_FONT_PROPS)
    
    game = new DeathMatchWordManGame canvas

    #Listen for key presses and move wordman accordingly.
    $(document).keydown (e) ->
        code = e.keyCode || e.which
        
        if KEY_MAP[code] != undefined
            game.wordman.futureDirection = KEY_MAP[code]

    canvas.run ->
        game.render canvas