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
            "rootpatterns": [                 
                ".ccls",                      
                "compile_commands.json",
                ".vim/",                      
                ".git/",                      
                ".hg/"                        
            ],                                
            "initializationoptions": {        
                "cache": {                    
                    "directory": "/tmp/ccls"
                }                             
                }                             
        },                                    
   "digestif": {                              
      "command": "digestif",                  
      "filetypes": ["tex", "plaintex", "context"]
    },
    "terraform": {
      "command": "terraform-lsp",
      "filetypes": ["terraform"],             
      "initializationoptions": {}             
    }                                         
  }                                           
                                              
}                           
