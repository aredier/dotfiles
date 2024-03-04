local logo_table = {
  [[
███╗   ███╗   ██╗    █████╗      ██╗
████╗ ████║   ██║   ██╔══██╗     ██║
██╔████╔██║████████╗███████║     ██║
██║╚██╔╝██║██╔═██╔═╝██╔══██║██   ██║
██║ ╚═╝ ██║██████║  ██║  ██║╚█████╔╝
╚═╝     ╚═╝╚═════╝  ╚═╝  ╚═╝ ╚════╝ 
]],
  [[
 █████╗ ██╗     ██╗      ██████╗ ███╗   ██╗███████╗     ██╗   ██╗ 
██╔══██╗██║     ██║     ██╔═══██╗████╗  ██║██╔════╝     ╚██╗ ██╔╝ 
███████║██║     ██║     ██║   ██║██╔██╗ ██║███████╗█████╗╚████╔╝  
██╔══██║██║     ██║     ██║   ██║██║╚██╗██║╚════██║╚════╝ ╚██╔╝   
██║  ██║███████╗███████╗╚██████╔╝██║ ╚████║███████║        ██║    
╚═╝  ╚═╝╚══════╝╚══════╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝        ╚═╝    
                                                                  
 ██████╗  █████╗ ██╗███████╗███╗   ███╗███████╗███╗   ██╗████████╗
██╔════╝ ██╔══██╗██║██╔════╝████╗ ████║██╔════╝████╗  ██║╚══██╔══╝
██║  ███╗███████║██║█████╗  ██╔████╔██║█████╗  ██╔██╗ ██║   ██║   
██║   ██║██╔══██║██║██╔══╝  ██║╚██╔╝██║██╔══╝  ██║╚██╗██║   ██║   
╚██████╔╝██║  ██║██║███████╗██║ ╚═╝ ██║███████╗██║ ╚████║   ██║   
 ╚═════╝ ╚═╝  ╚═╝╚═╝╚══════╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝   ╚═╝   
  ]],
  [[
██╗  ██╗██╗███████╗███████╗
██║ ██╔╝██║██╔════╝██╔════╝
█████╔╝ ██║███████╗███████╗
██╔═██╗ ██║╚════██║╚════██║
██║  ██╗██║███████║███████║
╚═╝  ╚═╝╚═╝╚══════╝╚══════╝
]],
}

local logo = logo_table[1]

logo = string.rep("\n", 8) .. logo .. "\n\n"
return {
  "nvimdev/dashboard-nvim",
  opts = {
    config = {
      header = vim.split(logo, "\n"),
    },
  },
}
