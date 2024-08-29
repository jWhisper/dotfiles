return {
	-- Details: https://github.com/Robitx/gp.nvim
	"robitx/gp.nvim",
	event = "VeryLazy",
	config = function()
		local os = require("os")
		local conf = {
			providers = {
				openai = {
					disable = true,
					endpoint = "https://api.openai.com/v1/chat/completions",
					secret = os.getenv("OPENAI_API_KEY"),
				},
				kimi = {
					disable = false,
					endpoint = "https://api.moonshot.cn/v1/chat/completions",
					secret = os.getenv("KIMI_API_KEY"),
				},
			},
			agents = {
				{
					provider = "openai",
					name = "ChatGPT4o",
					chat = true,
					command = false,
					-- string with model name or table with model name and parameters
					model = { model = "gpt-4o", temperature = 1.1, top_p = 1 },
					-- system prompt (use this to specify the persona/role of the AI)
					system_prompt = require("gp.defaults").chat_system_prompt,
				},
				{
					provider = "openai",
					name = "ChatGPT4o-mini",
					chat = true,
					command = false,
					-- string with model name or table with model name and parameters
					model = { model = "gpt-4o-mini", temperature = 1.1, top_p = 1 },
					-- system prompt (use this to specify the persona/role of the AI)
					system_prompt = require("gp.defaults").chat_system_prompt,
				},
				{
					provider = "kimi",
					name = "moonshot-v1-8k",
					chat = true,
					command = false,
					-- string with model name or table with model name and parameters
					model = { model = "moonshot-v1-8k", temperature = 0.8, top_p = 1 },
					-- system prompt (use this to specify the persona/role of the AI)
					system_prompt = require("gp.defaults").chat_system_prompt,
				},
			},
		}
		require("gp").setup(conf)
	end,
}
