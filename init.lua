vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require 'lazy-bootstrap'
require 'lazy-plugins'

require 'options'
require 'keymaps'

require 'telescope-setup'
require 'treesitter-setup'
require 'lsp-setup'
require 'cmp-setup'

require('sonarlint').setup({
  server = {
    cmd = {
      'sonarlint-language-server',
      -- Ensure that sonarlint-language-server uses stdio channel
      '-stdio',
      '-analyzers',
      -- paths to the analyzers you need, using those for python and java in this example
      vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarjs.jar"),
      vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarphp.jar"),
      vim.fn.expand("$MASON/share/sonarlint-analyzers/sonargo.jar"),
      vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarlintomnisharp.jar"),
    }
  },
  filetypes = {
    'javascript',
    'typescript',
    'typescriptreact',
    'php',
    'csharp',
    'go',
  }
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
