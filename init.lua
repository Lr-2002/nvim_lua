-- https://raw.githubusercontent.com/neoclide/coc.nvim/master/doc/coc-example-config.lua
--
local vim = vim 
local Plug = vim.fn['plug#']
vim.call('plug#begin')
Plug('https://github.com/folke/which-key.nvim.git')
-- ui 
Plug('kristijanhusak/vim-hybrid-material')
Plug('junegunn/seoul256.vim')
Plug('https://github.com/ojroques/nvim-osc52.git')
Plug('https://github.com/echasnovski/mini.icons.git')
Plug('https://github.com/rose-pine/neovim.git')
Plug('stevearc/aerial.nvim')

-- typst 
Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')
Plug('neovim/nvim-lspconfig')
Plug('chomosuke/typst-preview.nvim', {['tag']= 'v1.*'})
Plug('kaarmu/typst.vim')

Plug('nvim-lua/plenary.nvim')
-- telescope 
Plug('nvim-telescope/telescope.nvim', { ['tag']= '0.1.8' })
Plug('https://github.com/nvim-telescope/telescope-live-grep-args.nvim.git')

Plug('https://github.com/folke/todo-comments.nvim.git')
Plug('nvim-neo-tree/neo-tree.nvim', { ['branch']= 'v3.x' })
Plug("nvim-tree/nvim-web-devicons") -- not strictly required, but recommended
Plug("MunifTanjim/nui.nvim")
Plug("terrortylor/nvim-comment")
Plug('vim-airline/vim-airline')
Plug('vim-airline/vim-airline-themes')
Plug("kylechui/nvim-surround")
-- debug
Plug('mfussenegger/nvim-dap')
Plug('mfussenegger/nvim-dap-python')
Plug('rcarriga/nvim-dap-ui')
Plug('nvim-neotest/nvim-nio')
Plug('phaazon/hop.nvim')
Plug('terryma/vim-multiple-cursors')
Plug('nvim-treesitter/nvim-treesitter', {['do']= 'TSUpdate'})
Plug('neoclide/coc.nvim', {['branch'] ='release'})

Plug('stevearc/dressing.nvim')
-- Plug('MunifTanjim/nui.nvim')
-- Plug('HakonHarnes/img-clip.nvim')
-- Plug('zbirenbaum/copilot.lua')
-- Plug('yetone/avante.nvim', {['branch']='main', ['do']= 'make' })
Plug('Exafunction/codeium.vim', { ['branch']= 'main' })
Plug('https://github.com/MeanderingProgrammer/render-markdown.nvim.git')
vim.call('plug#end')
-- vim.cmd('silent! colorscheme seoul256-light')
vim.cmd('silent! colorscheme rose-pine-dawn')
-- vim.cmd('silent! colorscheme hybrid_material')
-- Some servers have issues with backup files, see #649
vim.opt.backup = true
vim.opt.writebackup = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.sessionoptions:append("localoptions")
vim.treesitter.language.register('python', 'someft', 'markdown')
vim.o.runtimepath = vim.o.runtimepath..',/home/lr-2002/.config/nvim/lua'
vim.wo.number = true
vim.wo.relativenumber =true
-- require('leap').create_default_mappings()
-- local fzf = require('fzf-lua').setup { 
-- 	fzf_bin = '~/fzf'
--
-- } 
--

-- require('avante_lib').load()
-- 设置 vim-airline

-- 自定义状态栏


-- vim.api.nvim_set_keymap('v', '<C-/>', 'gc', {noremap=true})
-- mapping part 
-- Map Ctrl + h/j/k/l for navigating between windows
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'H', '^', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'L', '$', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'bd', '<C-o>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'bt', '<C-i>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-BS>', '<C-W>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', 'jj', '<C-\\><C-n>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-x>h", "<cmd>split<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-x>v", "<cmd>vsplit<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'dt', "<cmd>lua require('dap').toggle_breakpoint()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'dc', "<cmd>lua require('dap').continue()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'do', "<cmd>lua require('dap').step_over()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'di', "<cmd>lua require('dap').step_into()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'oe', "<cmd>lua require('dap').repl.open()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'ce', "<cmd>lua require('dap').repl.close()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'cd', "<cmd>lua require('dap').terminate()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'rd', "<cmd>lua require('dap').restart()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'zi', "<cmd>lua require('fzf-lua').files()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'lb', "<cmd>lua require('fzf-lua').buffers()<CR>", { noremap = true, silent = true })
--
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)
-- Neo-tree settings for relative numbering
require('neo-tree').setup({
window = {
	relativenumber = true
},


})
vim.g.mapleader = ' ' 

-----------------
-- Visual mode --
-----------------
require('aerial').setup({
  -- 配置是否自动打开 aerial 窗口
  on_attach = function(bufnr)
    -- 使用 <leader>a 打开或关闭 aerial 窗口
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'os', '<cmd>AerialOpen!<CR>', {})
  end
})

vim.api.nvim_set_keymap('n', '<leader>os', '<cmd>AerialOpen<CR>', {})
-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

vim.api.nvim_set_keymap('n', '<leader>uo', "<cmd>lua require('dapui').open()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>uc', "<cmd>lua require('dapui').close()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ut', "<cmd>lua require('dapui').toggle()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'ls', "<cmd>ls<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ls', "<cmd>Neotree<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>la', ":Neotree position=current<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>b', ":Neotree toggle show buffers right<cr>", { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', 'nhl', "<cmd>nohlsearch<CR>", { noremap = true, silent = true })



-- Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
-- delays and poor user experience
vim.opt.updatetime = 100

-- Always show the signcolumn, otherwise it w:uld shift the text each time
-- diagnostics appeared/became resolved
vim.opt.signcolumn = "yes"
vim.o.cursorline=true
vim.o.cursorcolumn=true
vim.o.showmatch=true
local keyset = vim.keymap.set
-- Autocomplete
function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

-- Use Tab for trigger completion with characters ahead and navigate
-- NOTE: There's always a completion item selected by default, you may want to enable
-- no select by setting `"suggest.noselect": true` in your configuration file
-- NOTE: Use command ':verbose imap <tab>' to make sure Tab is not mapped by
-- other plugins before putting this into your config
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

-- Make <CR> to accept selected completion item or notify coc.nvim to format
-- <C-g>u breaks current undo, please make your own choice
keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)

-- Use <c-j> to trigger snippets
keyset("i", "<c-j>", "<Plug>(coc-snippets-expand-jump)")
-- Use <c-space> to trigger completion
keyset("i", "<c-space>", "coc#refresh()", {silent = true, expr = true})

-- Use `[g` and `]g` to navigate diagnostics
-- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
keyset("n", "[g", "<Plug>(coc-diagnostic-prev)", {silent = true})
keyset("n", "]g", "<Plug>(coc-diagnostic-next)", {silent = true})

-- GoTo code navigation
keyset("n", "gd", "<Plug>(coc-definition)", {silent = true})
keyset("n", "gy", "<Plug>(coc-type-definition)", {silent = true})
keyset("n", "gi", "<Plug>(coc-implementation)", {silent = true})
keyset("n", "gr", "<Plug>(coc-references)", {silent = true})


-- Use K to show documentation in preview window
function _G.show_docs()
    local cw = vim.fn.expand('<cword>')
    if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
        vim.api.nvim_command('h ' .. cw)
    elseif vim.api.nvim_eval('coc#rpc#ready()') then
        vim.fn.CocActionAsync('doHover')
    else
        vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
    end
end
keyset("n", "K", '<CMD>lua _G.show_docs()<CR>', {silent = true})


-- Highlight the symbol and its references on a CursorHold event(cursor is idle)
vim.api.nvim_create_augroup("CocGroup", {})
vim.api.nvim_create_autocmd("CursorHold", {
    group = "CocGroup",
    command = "silent call CocActionAsync('highlight')",
    desc = "Highlight symbol under cursor on CursorHold"
})


-- Symbol renaming
keyset("n", "<leader>rn", "<Plug>(coc-rename)", {silent = true})


-- Formatting selected code
keyset("x", "<leader>f", "<Plug>(coc-format-selected)", {silent = true})
keyset("n", "<leader>f", "<Plug>(coc-format-selected)", {silent = true})


-- Setup formatexpr specified filetype(s)
vim.api.nvim_create_autocmd("FileType", {
    group = "CocGroup",
    pattern = "typescript,json",
    command = "setl formatexpr=CocAction('formatSelected')",
    desc = "Setup formatexpr specified filetype(s)."
})

-- Update signature help on jump placeholder
vim.api.nvim_create_autocmd("User", {
    group = "CocGroup",
    pattern = "CocJumpPlaceholder",
    command = "call CocActionAsync('showSignatureHelp')",
    desc = "Update signature help on jump placeholder"
})

-- Apply codeAction to the selected region
-- Example: `<leader>aap` for current paragraph
local opts = {silent = true, nowait = true}
keyset("x", "<leader>a", "<Plug>(coc-codeaction-selected)", opts)
keyset("n", "<leader>a", "<Plug>(coc-codeaction-selected)", opts)

-- Remap keys for apply code actions at the cursor position.
keyset("n", "<leader>ac", "<Plug>(coc-codeaction-cursor)", opts)
-- Remap keys for apply source code actions for current file.
keyset("n", "<leader>as", "<Plug>(coc-codeaction-source)", opts)
-- Apply the most preferred quickfix action on the current line.
keyset("n", "<leader>qf", "<Plug>(coc-fix-current)", opts)
vim.api.nvim_set_keymap('n', 'K', ":call CocAction('doHover')<CR>", { noremap = true, silent = true })
-- Remap keys for apply refactor code actions.
keyset("n", "<leader>re", "<Plug>(coc-codeaction-refactor)", { silent = true })
keyset("x", "<leader>r", "<Plug>(coc-codeaction-refactor-selected)", { silent = true })
keyset("n", "<leader>r", "<Plug>(coc-codeaction-refactor-selected)", { silent = true })

-- Run the Code Lens actions on the current line
keyset("n", "<leader>cl", "<Plug>(coc-codelens-action)", opts)


-- Map function and class text objects
-- NOTE: Requires 'textDocument.documentSymbol' support from the language server
keyset("x", "if", "<Plug>(coc-funcobj-i)", opts)
keyset("o", "if", "<Plug>(coc-funcobj-i)", opts)
keyset("x", "af", "<Plug>(coc-funcobj-a)", opts)
keyset("o", "af", "<Plug>(coc-funcobj-a)", opts)
keyset("x", "ic", "<Plug>(coc-classobj-i)", opts)
keyset("o", "ic", "<Plug>(coc-classobj-i)", opts)
keyset("x", "ac", "<Plug>(coc-classobj-a)", opts)
keyset("o", "ac", "<Plug>(coc-classobj-a)", opts)


-- Remap <C-f> and <C-b> to scroll float windows/popups
---@diagnostic disable-next-line: redefined-local
local opts = {silent = true, nowait = true, expr = true}
keyset("n", "<C-f>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', opts)
keyset("n", "<C-b>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', opts)
keyset("i", "<C-f>",
       'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(1)<cr>" : "<Right>"', opts)
keyset("i", "<C-b>",
       'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(0)<cr>" : "<Left>"', opts)
keyset("v", "<C-f>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', opts)
keyset("v", "<C-b>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', opts)


-- Use CTRL-S for selections ranges
-- Requires 'textDocument/selectionRange' support of language server
keyset("n", "<C-s>", "<Plug>(coc-range-select)", {silent = true})
keyset("x", "<C-s>", "<Plug>(coc-range-select)", {silent = true})


-- Add `:Format` command to format current buffer
vim.api.nvim_create_user_command("Format", "call CocAction('format')", {})

-- " Add `:Fold` command to fold current buffer
vim.api.nvim_create_user_command("Fold", "call CocAction('fold', <f-args>)", {nargs = '?'})

-- Add `:OR` command for organize imports of the current buffer
vim.api.nvim_create_user_command("OR", "call CocActionAsync('runCommand', 'editor.action.organizeImport')", {})

-- Add (Neo)Vim's native statusline support
-- NOTE: Please see `:h coc-status` for integrations with external plugins that
-- provide custom statusline: lightline.vim, vim-airline
--

-- Mappings for CoCList
-- code actions and coc stuff
---@diagnostic disable-next-line: redefined-local
local opts = {silent = true, nowait = true}
-- Show all diagnostics
keyset("n", "<space>a", ":<C-u>CocList diagnostics<cr>", opts)
-- Manage extensions
keyset("n", "<space>e", ":<C-u>CocList extensions<cr>", opts)
-- Show commands
keyset("n", "<space>c", ":<C-u>CocList commands<cr>", opts)
-- Find symbol of current document
keyset("n", "<space>o", ":<C-u>CocList outline<cr>", opts)
-- Search workspace symbols
keyset("n", "<space>s", ":<C-u>CocList -I symbols<cr>", opts)
-- Do default action for next item
keyset("n", "<space>j", ":<C-u>CocNext<cr>", opts)
-- Do default action for previous item
keyset("n", "<space>k", ":<C-u>CocPrev<cr>", opts)
-- Resume latest coc list
keyset("n", "<space>p", ":<C-u>CocListResume<cr>", opts)

-- debug 
dap = require('dap')
dap_python = require('dap-python')
dap.set_log_level('TRACE')
dap_python.setup(os.getenv("CONDA_PREFIX") .. '/bin/python')
print('using python is ' .. os.getenv("CONDA_PREFIX") .. '/bin/python')
vim.g.python3_host_prog = os.getenv("CONDA_PREFIX") .. '/bin/python'
require('dapui').setup()

vim.fn.sign_define('DapBreakpoint', {text='🐞', texthl='', linehl='', numhl=''})

vim.o.ignorecase = true 
vim.opt.shell = "/bin/zsh"
vim.opt.backupdir = "~/.config/nvim/.backup//"
vim.opt.undodir = "~/.config/nvim/.undodir//"
vim.opt.laststatus = 3 



require('config.hop')

require('config.mason')
require('config.typst')
require('config.telescope')
-- require('config.avante')
require('debug_config')
require('config.codeium')
require('config.day_night')
