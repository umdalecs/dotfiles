local ensure_lazy = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/lazy.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({
            'git', 'clone', '--depth', '1', 'https://github.com/folke/lazy.nvim',
            install_path
        })
        vim.cmd [[packadd lazy.nvim]]
    end
end
ensure_lazy()

require('lazy').setup("plugins")

