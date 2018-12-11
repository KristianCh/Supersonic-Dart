components {
  id: "dart"
  component: "/game_objects/dart/dart.script"
  position {
    x: 0.0
    y: 0.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
embedded_components {
  id: "dart_sprite"
  type: "sprite"
  data: "tile_set: \"/resources/darts.atlas\"\n"
  "default_animation: \"dart_1\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "blend_mode: BLEND_MODE_ALPHA\n"
  ""
  position {
    x: 0.0
    y: 0.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
embedded_components {
  id: "fire_sprite"
  type: "sprite"
  data: "tile_set: \"/resources/darts.atlas\"\n"
  "default_animation: \"fire_1\"\n"
  "material: \"/resources/materials/fire.material\"\n"
  "blend_mode: BLEND_MODE_ALPHA\n"
  ""
  position {
    x: 0.0
    y: -29.0
    z: -1.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
