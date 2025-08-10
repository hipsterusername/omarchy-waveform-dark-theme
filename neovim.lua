-- Waveform Theme for Neovim
-- Using a dark, fiery colorscheme

return {
  -- Using vim-illuminate for highlight effects (optional but thematic)
  { "RRethy/vim-illuminate" },
  
  -- Main colorscheme: using 'torte' built-in or a fire-themed plugin
  { 
    "LazyVim/LazyVim", 
    opts = { 
      colorscheme = "torte"  -- Built-in dark theme with purple/red tones
      -- Alternative fire-themed options if plugins installed:
      -- colorscheme = "gruvbox" 
      -- colorscheme = "onedark"
    } 
  },
}