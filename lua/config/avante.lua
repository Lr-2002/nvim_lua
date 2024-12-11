require('avante_lib').load()
require('render-markdown').setup(
	{
		file_types = {'markdown', 'Avante'}
	}

)
require('avante').setup({
	provider = "qianwen",
	vendors = {
		  qianwen = {
		    __inherited_from = "openai",
		    api_key_name = "DASHSCOPE_API_KEY",
		    endpoint = "https://dashscope.aliyuncs.com/compatible-mode/v1",
		    model = "qwen-coder-plus-latest",
		  },


	},
	azure = {
	    endpoint = "https://api.tonggpt.mybigai.ac.cn/proxy", -- example: "https://<your-resource-name>.openai.azure.com"
	    deployment = "eastus/gpt-4o", -- Azure deployment name (e.g., "gpt-4o", "my-gpt-4o-deployment")
	    api_version = "2024-05-13",
	    timeout = 30000, -- Timeout in milliseconds
	    temperature = 0,
	    max_tokens = 4096,
	  },
	
        openai = {
	    endpoint = "https://api.tonggpt.mybigai.ac.cn/proxy/eastus",
	    model = "gpt-3.5-turbo-0125",
	    timeout = 30000, -- Timeout in milliseconds
	    temperature = 0,
	    max_tokens = 4096,
	  },



})

