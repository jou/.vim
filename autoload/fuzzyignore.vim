function fuzzyignore#append(path)
    if !exists('g:fuzzy_ignore')
        let g:fuzzy_ignore = ""
    endif

    if g:fuzzy_ignore != ""
        let g:fuzzy_ignore .= ";"
    endif
    let g:fuzzy_ignore .= a:path
endfunction
