{
    "languageserver": {
        "ccls": {
            "command": "ccls",
            "filetypes": [
                "c",
                "cpp",
                "objc",
                "objcpp"
            ],
            "rootPatterns": [
                ".ccls",
                "compile_commands.json",
                ".vim/",
                ".git/",
                ".hg/"
            ],
            "initializationOptions": {
                "cache": {
                    "directory": "/tmp/ccls"
                }
            	}
        }
	},
	"languageserver": {
   	 "digestif": {
      "command": "digestif",
      "filetypes": ["tex", "plaintex", "context"]
    }
  },
   "languageserver": {
    "terraform": {
      "command": "terraform-lsp",
      "filetypes": ["terraform"],
      "initializationOptions": {}
    }
  },

}
