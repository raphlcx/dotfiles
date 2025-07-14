local hi = function(name, val)
  -- Force links
  val.force = true

  -- Make sure that `cterm` attribute is not populated from `gui`
  val.cterm = val.cterm or {} ---@type vim.api.keyset.highlight

  -- Define global highlight
  vim.api.nvim_set_hl(0, name, val)
end

-- Turn off syntax highlighting
hi('Title',            {})
hi('Constant',         {})
hi('String',           {})
hi('Function',         {})
hi('Special',          {})
hi('Identifier',       {})
hi('Statement',        {})
hi('PreProc',          {})
hi('Type',             {})
hi('Underlined',       {})
hi('Ignore',           {})
