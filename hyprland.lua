local active_border_color = {
  colors = { "rgba(c99a50cc)", "rgba(873329cc)", "rgba(e2b866cc)" },
  angle = 45,
}
local inactive_border_color = "rgba(4a38326e)"

hl.config({
  general = {
    gaps_in = 6,
    gaps_out = 10,
    border_size = 2,
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },

  decoration = {
    rounding = 8,
    rounding_power = 2,
    shadow = {
      enabled = true,
      range = 10,
      render_power = 3,
      color = "rgba(05020266)",
      color_inactive = "rgba(05020244)",
    },
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
    groupbar = {
      gradient_rounding = 8,
      gradient_round_only_edges = true,
    },
  },
})
