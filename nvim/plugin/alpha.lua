local ok, alpha = pcall(require, "alpha")
if not ok then
  return
end

--[[ REFERENCE
-- https://github.com/goolord/alpha-nvim/discussions/16
-- https://github.com/emuel-vassallo/dotfiles/blob/main/.config/nvim/lua/plugins/configs/alpha.lua
--]]

local dashboard = require('alpha.themes.dashboard')

--[[
--local plugins_gen = io.popen('fd -d 2 . $HOME"/.local/share/nvim/site/pack/packer" | head -n -2 | wc -l | tr -d "\n" ')
local plugins = plugins_gen:read("*a")
plugins_gen:close()

local date_gen = io.popen('echo "$(date +%d)/$(date +%m)/$(date +%y)($(date +%a))$(date +%X)" | tr -d "\n"')
local date = date_gen:read("*a")
date_gen:close()

local pluginCount = {
	type = "text",
	val = "  " .. plugins .. " plugins in total",
	opts = {
		position = "center",
		hl = "String",
	},
}
]]

local function getGreeting(name)
	local tableTime = os.date("*t")
	local hour = tableTime.hour
	local greetingsTable = {
		[1] = "  Sleep well",
		[2] = "  Good morning",
		[3] = "  Good afternoon",
		[4] = "  Good evening",
		[5] = "望 Good night",
	}
	local greetingIndex = 1
	if hour == 23 or hour < 7 then
		greetingIndex = 1
	elseif hour < 12 then
		greetingIndex = 2
	elseif hour >= 12 and hour < 18 then
		greetingIndex = 3
	elseif hour >= 18 and hour < 21 then
		greetingIndex = 4
	elseif hour >= 21 then
		greetingIndex = 5
	end
	return greetingsTable[greetingIndex] .. ", " .. name
end

local userName = "Sayan"
local greeting = getGreeting(userName)

local headers = {
  ["kraken"] = {
    "                                   ",
    "                                   ",
    "                                   ",
    "   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ",
    "    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
    "          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
    "           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
    "          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
    "   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
    "  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
    " ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
    " ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
    "      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
    "       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
    "                                   ",
  },
  ["scenary"] =  {
    [[             o\             ]],
		[[   _________/__\__________  ]],
		[[  |                  - (  | ]],
		[[ ,'-.                 . `-| ]],
		[[(____".       ,-.    '   || ]],
		[[  |          /\,-\   ,-.  | ]],
		[[  |      ,-./     \ /'.-\ | ]],
		[[  |     /-.,\      /     \| ]],
		[[  |    /     \    ,-.     \ ]],
		[[  |___/_______\__/___\_____\]],
  }
}


dashboard.section.header.val = headers.scenary

dashboard.section.greetHeading = {
	type = "text",
	val = greeting,
	opts = {
		position = "center",
		hl = "String",
	},
}


dashboard.section.buttons.val = {
	-- dashboard.button("s", "   Restore", ":SessionManager load_last_session<CR>"),
  dashboard.button( "e", "   New file" , ":ene <BAR> startinsert <CR>"),
  dashboard.button( "t", "   Find text", ":Telescope live_grep <CR>"),
  dashboard.button("LDR ff", "   Find file", ":Telescope find_files<CR>"),
  -- dashboard.button("p", "   Projects", ":Telescope projects<CR>"),
  dashboard.button("LDR fo", "   MRU", ":Telescope oldfiles<CR>"),
  dashboard.button("LDR gg", "   Git", ":LazyGitCR>"),
  dashboard.button("LDR zs", "   Packer Sync", ":PackerSync<CR>"),
  dashboard.button("c", "   Edit Config", ":e ~/.config/nvim/init.lua<CR>"),
  dashboard.button("LDR q", "   Quit NVIM", ":qa<CR>"),
}

-- dashboard.section.custom_header = "Loaded",..plugins, "ok"
dashboard.section.footer.val = require'alpha.fortune'()

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
return alpha.setup(dashboard.config)

------------------------------------------------------ extensible version
-- local header = {
--   type = "text",
--   val =  {
--     [[             o\             ]],
--     [[   _________/__\__________  ]],
--     [[  |                  - (  | ]],
--     [[ ,'-.                 . `-| ]],
--     [[(____".       ,-.    '   || ]],
--     [[  |          /\,-\   ,-.  | ]],
--     [[  |      ,-./     \ /'.-\ | ]],
--     [[  |     /-.,\      /     \| ]],
--     [[  |    /     \    ,-.     \ ]],
--     [[  |___/_______\__/___\_____\]],
--   },
--   opts = {
-- 		position = "center",
-- 		hl = "AlphaAscii",
-- 	},
-- }
--
--
-- local footer = {
-- 	type = "text",
-- 	val = " I've " .. plugins .. " plugins, it launches instantly kek.",
-- 	opts = {
-- 		position = "left",
-- 		hl = "AlphaFooter",
-- 	},
-- }
--
--
-- local sections = {
--   header = header,
--   footer = footer
-- }
--
-- local opts = {
--   layout = {
--     { type = "padding", val = 1 },
--     sections.header,
--     { type = "padding", val = 1 },
--     sections.footer,
--   },
--   opts = {
--     margin = 44,
--     cursor = 0
--   },
-- }
--
-- return alpha.setup(opts)
