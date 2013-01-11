enchant()
game = new Game(320, 320)
game.preload 'images/tankbrigade.png'
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
  game.pushScene scene

game.start()
