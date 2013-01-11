enchant()
game = new Game(320, 320)
game.preload 'images/tankbrigade.png'
game.onload = ->
  scene = new Scene()
  sprite = new Sprite(32, 32)
  sprite.frame = [0, 1, 0, 2, 0, 1, 0, 2,0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 2]
  sprite.image = game.assets['images/tankbrigade.png']
  scene.addChild sprite
  game.pushScene scene

game.start()
