local conf = {
	-- required openai api key
	openai_api_key = os.getenv("OPENAI_API_KEY"),
	-- prefix for all commands
	cmd_prefix = "Gp",
	-- example hook functions
	hooks = {

		CustomChatNew = function(plugin, params)
			local chat_model = { model = "gpt-4", temperature = 0.7, top_p = 1 }
			local chat_system_prompt = "You are a general AI assisstant"
			plugin.cmd.ChatNew(params, chat_model, chat_system_prompt)
		end, 

		InspectPlugin = function(plugin, params)
			print(string.format("Plugin structure:\n%s", vim.inspect(plugin)))
			print(string.format("Command params:\n%s", vim.inspect(params)))
			-- print(string.format("Command params:\n%s", vim.inspect(plugin.config.cmd_prefix)))
		end,

		-- -- example of making :%GpChatNew a dedicated command which
		-- -- opens new chat with the entire current buffer as a context
		BufferChatNew = function(plugin, _)
		    -- call GpChatNew command in range mode on whole buffer
		    vim.api.nvim_command("%" .. plugin.config.cmd_prefix .. "ChatNew")
		end,

		ModelPrint = function(plugin, _)
			print(string.format("Model: %s", vim.inspect(plugin.config.chat_model.model)))
			print(string.format("Temperature: %s", vim.inspect(plugin.config.chat_model.temperature)))
			print(string.format("Top_p: %s", vim.inspect(plugin.config.chat_model.temperature)))
			print(string.format("Prompt: %s", vim.inspect(plugin.config.chat_system_prompt)))
		end,

		ModelGeneral = function(plugin, _)
			-- Update the model and system prompt for the command model
			plugin.config.chat_model = { model = "gpt-3.5-turbo-16k", temperature = 0.7, top_p = 1 } 
			plugin.config.chat_system_prompt = "You are a general AI assistant." 
		end,

		ModelCode = function(plugin, _)
			-- Update the model and system prompt for the command model
			plugin.config.chat_model = { model = "gpt-3.5-turbo-16k", temperature = 0.3, top_p = 0.3 } 
			plugin.config.chat_system_prompt = "You are an AI that strictly generates just the formated final code." 
		end,

		ModelEquations = function(plugin, _)
			-- Update the model and system prompt for the command model
			plugin.config.chat_model = { model = "gpt-3.5-turbo-16k", temperature = 0.3, top_p = 0.3 } 
			plugin.config.chat_system_prompt = "You are an AI that strictly generates LaTeX equations that start with \\begin{equation} and end with \\end{equation}" 
		end,

	},

	-- directory for storing chat files
	chat_dir = vim.fn.stdpath('data'):gsub("/$", "") .. "/gp/chats",
	-- chat model (string with model name or table with model name and parameters)
	chat_model = { model = "gpt-3.5-turbo-16k", temperature = 0.7, top_p = 1 },
	-- chat model system prompt
	chat_system_prompt = "You are a general AI assistant.",
	-- chat user prompt prefix
	chat_user_prefix = "🗨:",
	-- chat assistant prompt prefix
	chat_assistant_prefix = "🤖:",
	-- chat topic generation prompt
	chat_topic_gen_prompt = "Summarize the topic of our conversation above"
		.. " in two or three words. Respond only with those words.",
	-- chat topic model (string with model name or table with model name and parameters)
	chat_topic_gen_model = "gpt-3.5-turbo-16k",
	-- explicitly confirm deletion of a chat file
	chat_confirm_delete = true,
	-- conceal model parameters in chat
	chat_conceal_model_params = true,
	-- local shortcuts bound to the chat buffer
	-- (be careful to choose something which will work across specified modes)
	chat_shortcut_respond = { modes = { "n", "i", "v", "x" }, shortcut = "<C-g><C-g>" },
	chat_shortcut_delete = { modes = { "n", "i", "v", "x" }, shortcut = "<C-g>d" },

	-- command prompt prefix for asking user for input
	command_prompt_prefix = "🤖 ~ ",
	-- command model (string with model name or table with model name and parameters)
	command_model = { model = "gpt-3.5-turbo-16k", temperature = 0.7, top_p = 1 },
	-- command system prompt
	command_system_prompt = "You are an AI that strictly generates just the formated final code.",

	-- templates
	template_selection = "I have the following code from {{filename}}:\n\n```{{filetype}}\n{{selection}}\n```\n\n{{command}}",
	template_rewrite = "I have the following code from {{filename}}:\n\n```{{filetype}}\n{{selection}}\n```\n\n{{command}}"
		.. "\n\nRespond just with the formated final code. !!And please: No ``` code ``` blocks.",
	template_command = "{{command}}",
}

-- call setup on your config
require("gp").setup(conf)
