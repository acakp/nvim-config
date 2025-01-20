return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-telescope/telescope-fzf-native.nvim',
		'BurntSushi/ripgrep',
		'sharkdp/fd'
	},

	--require('telescope').load_extension('telescope-fzf-native.nvim')
}
