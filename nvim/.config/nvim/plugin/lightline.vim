let g:lightline = {
      \  'colorscheme': 'nightfox',
      \  'active': {
      \    'left': [
      \      [ 'mode', 'paste' ],
      \      [ 'fugitive', 'readonly', 'filename', 'modified' ]
      \    ]
      \  },
      \  'component_function': {
      \    'fugitive': 'fugitive#head'
      \  }
      \}
