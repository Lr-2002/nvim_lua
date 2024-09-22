-- https://raw.githubusercontent.com/neoclide/coc.nvim/master/doc/coc-example-config.lua
local vim = vim 
local Plug = vim.fn['plug#']
vim.call('plug#begin')
Plug('stevearc/aerial.nvim')
Plug('ibhagwan/fzf-lua', {['branch']= 'main'})
Plug('https://github.com/kshenoy/vim-signature.git')
Plug('nvim-tree/nvim-web-devicons')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-tree/nvim-web-devicons')
Plug('MunifTanjim/nui.nvim')
Plug('nvim-neo-tree/neo-tree.nvim', { ['branch']= 'v3.x' })
Plug('~/fzf')
Plug("kylechui/nvim-surround")
Plug('mfussenegger/nvim-dap')
Plug('mfussenegger/nvim-dap-python')
Plug('rcarriga/nvim-dap-ui')
Plug('nvim-neotest/nvim-nio')
Plug('terryma/vim-multiple-cursors')
Plug('nvim-treesitter/nvim-treesitter', {['do']= 'TSUpdate'})
Plug('https://github.com/junegunn/vim-easy-align.git')
Plug('kristijanhusak/vim-hybrid-material')
Plug('junegunn/seoul256.vim')
Plug('neoclide/coc.nvim', {['branch'] ='release'})
Plug('https://github.com/ggandor/leap.nvim.git')
vim.call('plug#end')
vim.cmd('silent! colorscheme hybrid_material')
-- Some servers have issues with backup files, see #649
vim.opt.backup = false
vim.opt.writebackup = false
vim.wo.number = true
vim.wo.relativenumber =true
-- require('leap').create_default_mappings()
require('fzf-lua').setup { 
	fzf_bin = '~/fzf'

} 


-- mapping part 
-- Map Ctrl + h/j/k/l for navigating between windows
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'dt', "<cmd>lua require('dap').toggle_breakpoint()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'dc', "<cmd>lua require('dap').continue()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'do', "<cmd>lua require('dap').step_over()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'di', "<cmd>lua require('dap').step_into()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'oe', "<cmd>lua require('dap').repl.open()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'ce', "<cmd>lua require('dap').repl.close()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'cd', "<cmd>lua require('dap').terminate()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'rd', "<cmd>lua require('dap').restart()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'fi', "<cmd>lua require('fzf-lua').files()<CR>", { noremap = true, silent = true })

vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-----------------
-- Visual mode --
-----------------
require('aerial').setup({
  -- 配置是否自动打开 aerial 窗口
  on_attach = function(bufnr)
    -- 使用 <leader>a 打开或关闭 aerial 窗口
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'os', '<cmd>AerialToggle!<CR>', {})
  end
})

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

vim.api.nvim_set_keymap('n', 'ou', "<cmd>lua require('dapui').open()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'cu', "<cmd>lua require('dapui').close()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'tu', "<cmd>lua require('dapui').toggle()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'ls', "<cmd>ls<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'nhl', "<cmd>nohlsearch<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'lj', ":buffer ", { noremap = true, silent = false })




vim.api.nvim_set_keymap('n', 'ot', "<cmd>NERDTree<CR>", { noremap = true, silent = true })

-- Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
-- delays and poor user experience
vim.opt.updatetime = 300

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
vim.opt.statusline:prepend("%{coc#status()}%{get(b:,'coc_current_function','')}")

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


dap = require('dap')
dap_python = require('dap-python')
dap.set_log_level('TRACE')
dap_python.setup(os.getenv("CONDA_PREFIX") .. '/bin/python')
dap.configurations.python = {
  {
    type = 'python',
    request = 'launch',
    name = "Launch file for debug xianhao file ",
    program = "/scratch2/mas/zhouziheng/ABC-s/train/generate_slot_with_mask/dynamicrafter/train_abstractNet_video_slot_with_mask_flatten_dynamicrafter_fourier_pos_emb_xianhao.py",
    pythonPath = function()
      return os.getenv("CONDA_PREFIX") .. '/bin/python'
    end,
    args = {
      "--log_path", "/scratch2/mas/zhouziheng/ABC-s/exp/generate_with_input_mask_dynamicrafter/bdd/image/fourier_pos_emb", 
      "--dataset_type", "movi",
      "--movi_data_path", "/scratch2/mas/zhouziheng/ABC-s/dataset/movi/movi_c/train/image/**/*.npy",
      "--decoder_config", "/scratch2/mas/zhouziheng/ABC-s/abstraction_model/generate_slot_with_mask_input/dynamicrafter/configs/training_512_v1.0/config_img.yaml",
      "--decoder_ckpt_path", "/scratch2/mas/zhouziheng/DynamiCrafter/checkpoints/dynamicrafter_512_v1/model.ckpt",
      "--image_mode", "False",
      "--training_mode", "True",
      "--model_cache_dir", "/scratch2/mas/zhouziheng/.cache",
      "--bdd_data_path", "/scratch2/mas/zhouziheng/ABC-s/dataset/bdd100k/image",
      "--use_dp", "False",
      "--num_workers", "48",
      "--batch_size", "4",
      "--backward_batch_size", "4",
      "--use_ref", "False",
      "--slot_size", "1024",
      "--enable_wandb", "False",
      "--slot_method", "mask_init",

      -- 可选的其他参数
    },
  },
}

require('dapui').setup()

vim.fn.sign_define('DapBreakpoint', {text='🐞', texthl='', linehl='', numhl=''})

vim.o.ignorecase = true 
vim.opt.shell = "/bin/zsh"
-- load lua 
