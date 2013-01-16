enchant()
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

  sprite = new Sprite(32,36)
  sprite.image = game.assets['images/ranger_f.png']
  sprite.frame = 3

  scene.addChild sprite

  game.addEventListener 'enterframe', ->
    if sprite.frame == 3 and sprite.frame <= 5
      sprite.frame += 1
    else
      sprite.frame = 3

  game.pushScene scene

game.start()
