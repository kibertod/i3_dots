function fish_right_prompt --description 'Prints right prompt'
  if not test "$fish_key_bindings" = "fish_default_key_bindings"
    prompt_vi_mode
    set_color normal
  end
end
