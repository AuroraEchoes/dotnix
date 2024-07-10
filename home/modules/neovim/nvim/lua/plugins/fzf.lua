local plugin = { "nvim-telescope/telescope-fzf-native.nvim" } 
plugin.build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build"
return plugin
