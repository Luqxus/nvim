-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.ai.opencode-nvim" },
  { import = "astrocommunity.pack.kotlin" },
  { import = "astrocommunity.pack.dart" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.xml" },
  { import = "astrocommunity.pack.toml" },
  -- { import = "astrocommunity.completion.copilot-chat-nvim" },
  -- import/override with your plugins folder
}
