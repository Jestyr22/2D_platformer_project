components {
  id: "player"
  component: "/game/player/player.script"
}
components {
  id: "player_hud"
  component: "/game/player/player_hud.gui"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"player_idle\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/assets/sprites/tilemap_characters.tilesource\"\n"
  "}\n"
  ""
}
embedded_components {
  id: "collisionobject"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_KINEMATIC\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"player\"\n"
  "mask: \"ground\"\n"
  "mask: \"enemy\"\n"
  "mask: \"end_flag\"\n"
  "mask: \"coin\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_SPHERE\n"
  "    position {\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 1\n"
  "    id: \"player_hitbox\"\n"
  "  }\n"
  "  data: 12.0\n"
  "}\n"
  ""
}
embedded_components {
  id: "camera"
  type: "camera"
  data: "aspect_ratio: 1.0\n"
  "fov: 0.7854\n"
  "near_z: 0.0\n"
  "far_z: 1000.0\n"
  "auto_aspect_ratio: 1\n"
  "orthographic_projection: 1\n"
  "orthographic_zoom: 3.0\n"
  ""
}
embedded_components {
  id: "sound_jump"
  type: "sound"
  data: "sound: \"/assets/audio/jump.ogg\"\n"
  ""
}
embedded_components {
  id: "sound_coin"
  type: "sound"
  data: "sound: \"/assets/audio/coin.ogg\"\n"
  ""
}
