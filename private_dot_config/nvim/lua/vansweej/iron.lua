local iron = require('iron')

iron.core.add_repl_definitions {
--  python = {
--    mycustom = {
--      command = {"mycmd"}
--    }
--  },
--  clojure = {
--    lein_connect = {
--      command = {"lein", "repl", ":connect"}
--    }
--  }
    julia = {
        julia = {
            command = {"julia"}
        },
        julia_nix = {
            command = {"nixGL", "julia"}
        }
    },

    haskell = {
        haskell = {
            command = {"stack", "ghci"}
        }
    }
}

iron.core.set_config {
  preferred = {
    python = "ipython",
    clojure = "lein",
    julia = "julia_nix",
    haskell = "haskell"
  }
}
