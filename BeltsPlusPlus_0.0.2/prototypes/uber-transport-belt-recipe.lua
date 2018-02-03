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