-- Waveform Dark Theme for Neovim
-- Audio waveform inspired colorscheme with neon accents

return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        -- Waveform Dark color palette
        local colors = {
          -- Base colors (dark theme)
          bg0 = '#0a0a0a',    -- Deep charcoal (main background)
          bg1 = '#1a0a0a',    -- Oxide brown (slightly lighter)
          bg2 = '#2a1010',    -- Darker red tint (UI elements)
          bg3 = '#4a2020',    -- Muted charcoal (selection/highlight)
          bg4 = '#5a3030',    -- Inactive elements
          bg5 = '#6a4040',    -- Comments/subtle text
          
          -- Foreground colors
          fg0 = '#ff9999',    -- Soft neon pink (main text)
          fg1 = '#ffcccc',    -- Soft white (slightly dimmed)
          fg2 = '#cc9999',    -- Subdued text
          
          -- Accent colors (waveform neon palette)
          neon_magenta = '#ff00ff',  -- Primary neon magenta
          signal_red = '#ff3333',    -- Signal red
          warm_orange = '#ff6600',   -- Success/warm orange  
          amber = '#ffaa00',         -- Warning/amber
          pure_red = '#ff0000',      -- Error/pure red
          electric_purple = '#cc00ff', -- Info/electric purple
          hot_pink = '#ff00aa',      -- Hot pink accent
          rose = '#ff66cc',          -- Rose/cyan equivalent
          
          -- Special
          selection = '#4a2020',
          cursor_line = '#1a0a0a',
          visual = '#2a1010',
        }

        -- Reset highlighting
        vim.cmd('highlight clear')
        if vim.fn.exists('syntax_on') then
          vim.cmd('syntax reset')
        end
        
        vim.o.termguicolors = true
        vim.o.background = 'dark'
        vim.g.colors_name = 'waveform-dark'
        
        local hl = vim.api.nvim_set_hl
        
        -- Editor highlights
        hl(0, 'Normal', { fg = colors.fg0, bg = colors.bg0 })
        hl(0, 'NormalFloat', { fg = colors.fg0, bg = colors.bg1 })
        hl(0, 'FloatBorder', { fg = colors.neon_magenta, bg = colors.bg1 })
        hl(0, 'FloatTitle', { fg = colors.amber, bg = colors.bg1, bold = true })
        hl(0, 'Cursor', { fg = colors.bg0, bg = colors.neon_magenta })
        hl(0, 'CursorLine', { bg = colors.cursor_line })
        hl(0, 'CursorLineNr', { fg = colors.amber, bold = true })
        hl(0, 'LineNr', { fg = colors.fg2 })
        hl(0, 'Visual', { bg = colors.visual })
        hl(0, 'VisualNOS', { bg = colors.visual })
        hl(0, 'Search', { fg = colors.bg0, bg = colors.amber })
        hl(0, 'IncSearch', { fg = colors.bg0, bg = colors.neon_magenta })
        hl(0, 'MatchParen', { fg = colors.hot_pink, bold = true })
        
        -- Syntax highlighting
        hl(0, 'Comment', { fg = colors.bg5, italic = true })
        hl(0, 'Constant', { fg = colors.electric_purple })
        hl(0, 'String', { fg = colors.warm_orange })
        hl(0, 'Character', { fg = colors.warm_orange })
        hl(0, 'Number', { fg = colors.electric_purple })
        hl(0, 'Boolean', { fg = colors.electric_purple })
        hl(0, 'Float', { fg = colors.electric_purple })
        hl(0, 'Identifier', { fg = colors.fg0 })
        hl(0, 'Function', { fg = colors.rose })
        hl(0, 'Statement', { fg = colors.neon_magenta })
        hl(0, 'Conditional', { fg = colors.neon_magenta })
        hl(0, 'Repeat', { fg = colors.neon_magenta })
        hl(0, 'Label', { fg = colors.signal_red })
        hl(0, 'Operator', { fg = colors.fg1 })
        hl(0, 'Keyword', { fg = colors.neon_magenta })
        hl(0, 'Exception', { fg = colors.pure_red })
        hl(0, 'PreProc', { fg = colors.hot_pink })
        hl(0, 'Include', { fg = colors.hot_pink })
        hl(0, 'Define', { fg = colors.hot_pink })
        hl(0, 'Macro', { fg = colors.hot_pink })
        hl(0, 'PreCondit', { fg = colors.hot_pink })
        hl(0, 'Type', { fg = colors.signal_red })
        hl(0, 'StorageClass', { fg = colors.signal_red })
        hl(0, 'Structure', { fg = colors.signal_red })
        hl(0, 'Typedef', { fg = colors.signal_red })
        hl(0, 'Special', { fg = colors.amber })
        hl(0, 'SpecialChar', { fg = colors.amber })
        hl(0, 'Tag', { fg = colors.neon_magenta })
        hl(0, 'Delimiter', { fg = colors.fg1 })
        hl(0, 'SpecialComment', { fg = colors.bg5, italic = true, bold = true })
        hl(0, 'Debug', { fg = colors.pure_red })
        hl(0, 'Underlined', { underline = true })
        hl(0, 'Error', { fg = colors.pure_red, bold = true })
        hl(0, 'Todo', { fg = colors.amber, bold = true })
        
        -- UI elements
        hl(0, 'StatusLine', { fg = colors.fg0, bg = colors.bg2 })
        hl(0, 'StatusLineNC', { fg = colors.fg2, bg = colors.bg1 })
        hl(0, 'TabLine', { fg = colors.fg2, bg = colors.bg2 })
        hl(0, 'TabLineFill', { bg = colors.bg1 })
        hl(0, 'TabLineSel', { fg = colors.neon_magenta, bg = colors.bg0, bold = true })
        hl(0, 'Pmenu', { fg = colors.fg0, bg = colors.bg1 })
        hl(0, 'PmenuSel', { fg = colors.amber, bg = colors.bg3, bold = true })
        hl(0, 'PmenuSbar', { bg = colors.bg2 })
        hl(0, 'PmenuThumb', { bg = colors.signal_red })
        hl(0, 'WildMenu', { fg = colors.bg0, bg = colors.neon_magenta })
        hl(0, 'VertSplit', { fg = colors.bg3 })
        hl(0, 'WinSeparator', { fg = colors.bg3 })
        hl(0, 'Folded', { fg = colors.fg2, bg = colors.bg1 })
        hl(0, 'FoldColumn', { fg = colors.hot_pink, bg = colors.bg0 })
        hl(0, 'SignColumn', { fg = colors.signal_red, bg = colors.bg0 })
        hl(0, 'ColorColumn', { bg = colors.bg1 })
        
        -- Diff highlighting
        hl(0, 'DiffAdd', { fg = colors.warm_orange, bg = colors.bg1 })
        hl(0, 'DiffChange', { fg = colors.amber, bg = colors.bg1 })
        hl(0, 'DiffDelete', { fg = colors.pure_red, bg = colors.bg1 })
        hl(0, 'DiffText', { fg = colors.fg1, bg = colors.bg3, bold = true })
        
        -- Git signs
        hl(0, 'GitSignsAdd', { fg = colors.warm_orange })
        hl(0, 'GitSignsChange', { fg = colors.amber })
        hl(0, 'GitSignsDelete', { fg = colors.pure_red })
        
        -- Diagnostic highlights
        hl(0, 'DiagnosticError', { fg = colors.pure_red })
        hl(0, 'DiagnosticWarn', { fg = colors.amber })
        hl(0, 'DiagnosticInfo', { fg = colors.electric_purple })
        hl(0, 'DiagnosticHint', { fg = colors.hot_pink })
        hl(0, 'DiagnosticUnderlineError', { undercurl = true, sp = colors.pure_red })
        hl(0, 'DiagnosticUnderlineWarn', { undercurl = true, sp = colors.amber })
        hl(0, 'DiagnosticUnderlineInfo', { undercurl = true, sp = colors.electric_purple })
        hl(0, 'DiagnosticUnderlineHint', { undercurl = true, sp = colors.hot_pink })
        
        -- LSP highlights
        hl(0, 'LspReferenceText', { bg = colors.bg2 })
        hl(0, 'LspReferenceRead', { bg = colors.bg2 })
        hl(0, 'LspReferenceWrite', { bg = colors.bg2, underline = true })
        
        -- Treesitter highlights
        hl(0, '@variable', { fg = colors.fg0 })
        hl(0, '@variable.builtin', { fg = colors.electric_purple })
        hl(0, '@variable.parameter', { fg = colors.fg1 })
        hl(0, '@variable.member', { fg = colors.rose })
        hl(0, '@constant', { fg = colors.electric_purple })
        hl(0, '@constant.builtin', { fg = colors.electric_purple })
        hl(0, '@constant.macro', { fg = colors.amber })
        hl(0, '@module', { fg = colors.signal_red })
        hl(0, '@module.builtin', { fg = colors.signal_red })
        hl(0, '@label', { fg = colors.signal_red })
        hl(0, '@string', { fg = colors.warm_orange })
        hl(0, '@string.escape', { fg = colors.amber })
        hl(0, '@string.special', { fg = colors.amber })
        hl(0, '@string.regexp', { fg = colors.hot_pink })
        hl(0, '@character', { fg = colors.warm_orange })
        hl(0, '@character.special', { fg = colors.amber })
        hl(0, '@boolean', { fg = colors.electric_purple })
        hl(0, '@number', { fg = colors.electric_purple })
        hl(0, '@number.float', { fg = colors.electric_purple })
        hl(0, '@type', { fg = colors.signal_red })
        hl(0, '@type.builtin', { fg = colors.signal_red })
        hl(0, '@type.definition', { fg = colors.signal_red })
        hl(0, '@attribute', { fg = colors.hot_pink })
        hl(0, '@property', { fg = colors.rose })
        hl(0, '@function', { fg = colors.rose })
        hl(0, '@function.builtin', { fg = colors.rose })
        hl(0, '@function.call', { fg = colors.rose })
        hl(0, '@function.macro', { fg = colors.hot_pink })
        hl(0, '@function.method', { fg = colors.rose })
        hl(0, '@function.method.call', { fg = colors.rose })
        hl(0, '@constructor', { fg = colors.signal_red })
        hl(0, '@operator', { fg = colors.fg1 })
        hl(0, '@keyword', { fg = colors.neon_magenta })
        hl(0, '@keyword.coroutine', { fg = colors.neon_magenta })
        hl(0, '@keyword.function', { fg = colors.neon_magenta })
        hl(0, '@keyword.operator', { fg = colors.neon_magenta })
        hl(0, '@keyword.import', { fg = colors.hot_pink })
        hl(0, '@keyword.conditional', { fg = colors.neon_magenta })
        hl(0, '@keyword.repeat', { fg = colors.neon_magenta })
        hl(0, '@keyword.return', { fg = colors.neon_magenta })
        hl(0, '@keyword.exception', { fg = colors.pure_red })
        hl(0, '@comment', { fg = colors.bg5, italic = true })
        hl(0, '@comment.documentation', { fg = colors.bg5, italic = true })
        hl(0, '@punctuation', { fg = colors.fg1 })
        hl(0, '@punctuation.bracket', { fg = colors.fg1 })
        hl(0, '@punctuation.delimiter', { fg = colors.fg1 })
        hl(0, '@punctuation.special', { fg = colors.amber })
        hl(0, '@tag', { fg = colors.neon_magenta })
        hl(0, '@tag.attribute', { fg = colors.signal_red })
        hl(0, '@tag.delimiter', { fg = colors.fg1 })
        
        -- Telescope
        hl(0, 'TelescopeBorder', { fg = colors.neon_magenta })
        hl(0, 'TelescopePromptBorder', { fg = colors.signal_red })
        hl(0, 'TelescopeResultsBorder', { fg = colors.warm_orange })
        hl(0, 'TelescopePreviewBorder', { fg = colors.electric_purple })
        hl(0, 'TelescopeSelection', { fg = colors.amber, bg = colors.bg2, bold = true })
        hl(0, 'TelescopeMatching', { fg = colors.neon_magenta, bold = true })
        
        -- Neo-tree
        hl(0, 'NeoTreeNormal', { fg = colors.fg0, bg = colors.bg0 })
        hl(0, 'NeoTreeDirectoryName', { fg = colors.signal_red })
        hl(0, 'NeoTreeDirectoryIcon', { fg = colors.warm_orange })
        hl(0, 'NeoTreeFileName', { fg = colors.fg0 })
        hl(0, 'NeoTreeFileIcon', { fg = colors.fg1 })
        hl(0, 'NeoTreeIndentMarker', { fg = colors.bg3 })
        hl(0, 'NeoTreeRootName', { fg = colors.neon_magenta, bold = true })
        hl(0, 'NeoTreeGitModified', { fg = colors.amber })
        hl(0, 'NeoTreeGitAdded', { fg = colors.warm_orange })
        hl(0, 'NeoTreeGitDeleted', { fg = colors.pure_red })
        
        -- Terminal colors (matching theme palette)
        vim.g.terminal_color_0 = colors.bg1      -- Black (oxide brown)
        vim.g.terminal_color_1 = colors.signal_red  -- Red (signal red)
        vim.g.terminal_color_2 = colors.warm_orange -- Green (warm orange)
        vim.g.terminal_color_3 = colors.amber    -- Yellow (amber)
        vim.g.terminal_color_4 = colors.electric_purple -- Blue (electric purple)
        vim.g.terminal_color_5 = colors.hot_pink -- Magenta (hot pink)
        vim.g.terminal_color_6 = colors.rose     -- Cyan (rose)
        vim.g.terminal_color_7 = colors.fg1      -- White (soft white)
        vim.g.terminal_color_8 = colors.bg3      -- Bright Black (muted)
        vim.g.terminal_color_9 = '#ff6666'       -- Bright Red
        vim.g.terminal_color_10 = '#ff9933'      -- Bright Orange
        vim.g.terminal_color_11 = '#ffcc33'      -- Bright Amber
        vim.g.terminal_color_12 = '#dd66ff'      -- Bright Purple
        vim.g.terminal_color_13 = '#ff33cc'      -- Bright Magenta
        vim.g.terminal_color_14 = '#ff99dd'      -- Bright Rose
        vim.g.terminal_color_15 = '#ffffff'      -- Pure White
      end,
    },
  },
}