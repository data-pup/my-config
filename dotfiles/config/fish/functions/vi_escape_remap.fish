# Remap `lkj` to <ESC>
function vi_escape_remap
    bind -M insert lkj "if commandline -P; commandline -f cancel; else; set fish_bind_mode default; commandline -f backward-char force-repaint; end"
end
