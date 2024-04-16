local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>"},
    ["<leader>dc"] = {"<cmd> DapContinue <CR>"},
    ["<leader>dn"] = {"<cmd> DapStepOver <CR>"},
    ["<leader>di"] = {"<cmd> DapStepInto <CR>"},
    ["<leader>do"] = {"<cmd> DapStepOut <CR>"},
    ["<leader>dr"] = {"<cmd> DapToggleRepl <CR>"},
    ["<leader>dt"] = {"<cmd> DapTerminate <CR>"},
    ["<leader>dus"] = {
      function ()
        local dapui = require("dapui")
        dapui.setup()
        dapui.toggle()
      end,
      "Open Dap UI"
    }
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require('dap-python').test_method()
      end
    }
  }
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require('dap-go').debug_test()
      end,
      "Debug go test"
    },
    ["<leader>dgl"] = {
      function()
        require('dap-go').debug_last()
      end,
      "Debug last go test"
    }
  }
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags"
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags"
    }
  }
}

return M


