 data:extend({{
    type = "transport-belt",
    name = "uber-transport-belt",
    icon = "__BeltsPlusPlus__/graphics/uber.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.3, result = "express-transport-belt"},
    max_health = 170,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 50
      }
    },
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/express-transport-belt.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 3
    },
    animation_speed_coefficient = 32,
    animations =
    {
      filename = "__base__/graphics/entity/express-transport-belt/express-transport-belt.png",
      priority = "extra-high",
      width = 40,
      height = 40,
      frame_count = 32,
      direction_count = 12,
      hr_version =
      {
        filename = "__base__/graphics/entity/express-transport-belt/hr-express-transport-belt.png",
        priority = "extra-high",
        width = 80,
        height = 80,
        frame_count = 32,
        line_length = 16,
        direction_count = 12,
        scale = 0.5
      }
    },
    belt_horizontal = express_belt_horizontal, -- specified in transport-belt-pictures.lua
    belt_vertical = express_belt_vertical,
    ending_top = express_belt_ending_top,
    ending_bottom = express_belt_ending_bottom,
    ending_side = express_belt_ending_side,
    starting_top = express_belt_starting_top,
    starting_bottom = express_belt_starting_bottom,
    starting_side = express_belt_starting_side,
    ending_patch = ending_patch_prototype,
    fast_replaceable_group = "transport-belt",
    speed = 0.1500,
    connector_frame_sprites = transport_belt_connector_frame_sprites,
    circuit_wire_connection_points = circuit_connector_definitions["belt"].points,
    circuit_connector_sprites = circuit_connector_definitions["belt"].sprites,
    circuit_wire_max_distance = transport_belt_circuit_wire_max_distance
  }})
  
  data:extend({{
    type = "item",
    name = "uber-transport-belt",
    icon = "__base__/graphics/icons/boiler.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    order = "b[steam-power]-a[boiler-2]",
    place_result = "uber-transport-belt",
    stack_size = 50,
  }})
  data:extend({{
    type = "recipe",
    name = "uber-transport-belt",
    normal =
    {
      enabled = "true",
      ingredients =
      {
        {"express-transport-belt", 100},
      },
      result = "uber-transport-belt",
    },
    expensive =
    {
      enabled = "false",
      ingredients =
      {
        {"express-transport-belt", 200},
      },
      result = "uber-transport-belt",
    }
    }})