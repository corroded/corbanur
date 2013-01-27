enchant()

Ranger = Class.create(Sprite,

  initialize: ->

    # Call superclass constructor
    Sprite.apply this, [32, 36]
    @image = Game.instance.assets['images/ranger_f.png']
    @animationDuration = 0
    @addEventListener Event.ENTER_FRAME, @updateAnimation

  updateAnimation: (evt) ->
    @animationDuration += evt.elapsed * 0.001
    if @animationDuration >= 0.25
      @frame = (@frame + 1) % 3
      @animationDuration -= 0.25
)

game = new Game(320, 320)
game.preload 'images/tankbrigade.png', 'images/ranger_f.png'
game.onload = ->
  scene = new Scene()
  map = new Map(33,33)
  map.image = game.assets['images/tankbrigade.png']

  mainMap = [
    [4, 4, 4, 4, 4, 4, 4, 4],
    [4, 4, 4, 4, 4, 4, 4, 4],
    [5, 4, 4, 4, 4, 5, 5, 4],
    [5, 4, 4, 4, 4, 5, 5, 4],
    [5, 4, 6, 6, 4, 5, 5, 4],
    [4, 4, 6, 6, 4, 4, 4, 4],
    [4, 4, 6, 6, 4, 4, 4, 4],
    [4, 4, 4, 4, 4, 4, 4, 4]
  ]
  map.loadData mainMap
  scene.addChild map

  ranger = new Ranger()

  scene.addChild ranger

  game.pushScene scene

game.start()
