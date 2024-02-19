-- Inside my_custom_config.lua or similar file in the custom directory
local luasnip = require 'luasnip'

-- Disable snippets for specific file types
luasnip.snippets["markdown"] = nil
luasnip.snippets["text"] = nil
