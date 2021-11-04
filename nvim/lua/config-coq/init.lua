vim.g.coq_settings = {
  ['auto_start'] = 'shut-up',

  ['clients.snippets.enabled'] = false,
  ['keymap.bigger_preview'] = '<c-y>',
  ['keymap.jump_to_mark'] = '',
  ['keymap.manual_complete'] = '<c-space>',
  ['keymap.pre_select'] = false,
  ['keymap.recommended'] = true,
  ['keymap.repeat'] = '',
  ['limits.completion_auto_timeout'] = 0.088,
  ['limits.completion_manual_timeout'] = 0.66,
  ['limits.download_retries'] = 6,
  ['limits.download_timeout'] = 66.0,
  ['limits.idle_timeout'] = 1.88,
  ['limits.index_cutoff'] = 333333,

  ['match.exact_matches'] = 2,
  ['match.fuzzy_cutoff'] = 0.6,
  ['match.look_ahead'] = 2,
  ['match.max_results'] = 33,
  ['match.proximate_lines'] = 16,

  ['weights.edit_distance'] = 1.5,
  ['weights.prefix_matches'] = 2.0,
  ['weights.proximity'] = 0.5,
  ['weights.recency'] = 1.0,
  ['xdg'] = false
}


--[[
vim.cmd([[
ino <silent><expr> <Esc>   pumvisible() ? "\<C-e><Esc>" : "\<Esc>"
ino <silent><expr> <C-c>   pumvisible() ? "\<C-e><C-c>" : "\<C-c>"
ino <silent><expr> <BS>    pumvisible() ? "\<C-e><BS>"  : "\<BS>"
ino <silent><expr> <CR>    pumvisible() ? (complete_info().selected == -1 ? "\<C-e><CR>" : "\<C-y>") : "\<CR>"
ino <silent><expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
ino <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<BS>"
--]]


