local iron = require("iron.core")

iron.setup {
  config = {
    -- If iron should expose `<plug>(...)` mappings for the plugins
    should_map_plug = false,
    -- Whether a repl should be discarded or not
    scratch_repl = true,
    -- Your repl definitions come here
    repl_definition = {
      sh = {
        command = {"bash"}
      }


    },
    -- repl_open_cmd = require('iron.view').curry.right(40),
    -- how the REPL window will be opened, the default is opening
    -- a float window of height 40 at the bottom.
    repl_open_cmd = 'vertical 80 split'
  },
  -- Iron doesn't set keymaps by default anymore. Set them here
  -- or use `should_map_plug = true` and map from you vim files
  keymaps = {
    send_motion = "<space>sc",
    visual_send = "<space>sc",
    send_file = "<space>sf",
    send_line = "<space>sl",
    send_mark = "<space>sm",
    mark_motion = "<space>mc",
    mark_visual = "<space>mc",
    remove_mark = "<space>md",
    cr = "<space>s<cr>",
    interrupt = "<space>s<space>",
    exit = "<space>sq",
    clear = "<space>cl",
  },
  -- If the highlight is on, you can change how it looks
  -- For the available options, check nvim_set_hl
  highlight = {
    italic = true
  }
}

--local iron = require('iron')

--iron.core.add_repl_definitions {
-- --  python = {
-- --    mycustom = {
-- --      command = {"mycmd"}
-- --    }
-- --  },
-- --  clojure = {
-- --    lein_connect = {
-- --      command = {"lein", "repl", ":connect"}
-- --    }
-- --  }
--    julia = {
--        julia = {
--            command = {"julia"}
--        },
--        julia_nix = {
--            command = {"nixGL", "julia"}
--        }
--    },

--    haskell = {
--        haskell = {
--            command = {"stack", "ghci"}
--        }
--    }
--}

--iron.core.set_config {
--  preferred = {
--    python = "ipython",
--    clojure = "lein",
--    julia = "julia_nix",
--    haskell = "haskell"
--  }
--}
