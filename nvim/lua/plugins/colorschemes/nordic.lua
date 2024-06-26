return vim.b.colorscheme ~= "nordic" and {} or {
  'AlexvZyl/nordic.nvim',
  config = function()
    require 'nordic' .setup {
      -- This callback can be used to override the colors used in the palette.
      on_palette = function(palette)
        -- print(vim.inspect(palette))
        -- return palette
        return palette
      end,
      -- Enable bold keywords.
      bold_keywords = true,
      -- Enable italic comments.
      italic_comments = true,
      -- Enable general editor background transparency.
      transparent_bg = false,
      -- Enable brighter float border.color
      bright_border = false,
      -- Reduce the overall amount of blue in the theme (diverges from base Nord).
      reduced_blue = true,
      -- Swap the dark background with the normal one.
      swap_backgrounds = false,
      -- Override the styling of any highlight group.
      -- Cursorline options.  Also includes visual/selection.
      cursorline = {
        -- Bold font in cursorline.
        bold = false,
        -- Bold cursorline number.
        bold_number = true,
        -- Avialable styles: 'dark','light'.
        theme = 'dark',
        -- Blending the cursorline bg with the buffer bg.
        blend = 0.85,
      },
      noice = {
        -- Available styles: `classic`, `flat`.
        style = 'flat',
      },
      telescope = {
        -- Available styles: `classic`, `flat`.
        style = 'flat',
      },
      leap = {
        -- Dims the backdrop when using leap.
        dim_backdrop = false,
      },
      ts_context = {
        -- Enables dark background for treesitter-context window
        dark_background = true,
      },
      override = {},
    }
    vim.cmd.colorscheme("nordic")
  end
}

