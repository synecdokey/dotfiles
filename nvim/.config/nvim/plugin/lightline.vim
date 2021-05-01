let g:lightline = {
      \  'colorscheme': 'spring_night',
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
