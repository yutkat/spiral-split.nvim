# spiral-split

window split to automatically change the direction of separation.

<https://user-images.githubusercontent.com/8683947/213924516-2a7ef311-9ad9-422b-92f1-735427909b4a.mp4>

## Setup

```lua
require("spiral-split").setup({
 height_weight = 2.5,
 width_weight = 1.0,
})
```

## Usage

```lua
vim.keymap.set(
 { "n" },
 "<CR>",
 require("spiral-split").split(),
 { silent = true, noremap = true, desc = "spiral split" }
)
```
