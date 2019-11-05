let g:lightline = {
      \  'colorscheme': 'nightowl',
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
