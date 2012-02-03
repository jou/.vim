map <leader>t :FuzzyFinderTextMate<CR>
map <leader>r :FuzzyFinderTextMateRefreshFiles<CR>

let g:fuzzy_ceiling = 20000
call fuzzyignore#append("*.png;*.gif;*.jpg;.git/*;.svn/*;vendor/bundle/*")
