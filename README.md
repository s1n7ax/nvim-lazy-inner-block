# nvim-easy-inner-block

Maps `d`, `c`, `y` operator inside block operations directly to block characters.

for example to delete inside `()` usually you would use `di(`but this plugin
remaps it to `d(`.

Following are the new mappings

here `_` is one of `d`, `c`, `y` operators

| Previous bind | New bind |
| ------------- | -------- |
| `_i(`         | `_(`     |
| `_i)`         | `_)`     |
| `_i{`         | `_{`     |
| `_i}`         | `_}`     |
| `_i[`         | `_[`     |
| `_i]`         | `_]`     |
| `_i>`         | `_>`     |
| `_i'`         | `_'`     |
| `_i"`         | `_"`     |
| ``_i```       | ``_\```  |

## Install

### Packer

```lua
use {
    's1n7ax/nvim-easy-inner-block',
    config = function()
        require('nvim-easy-inner-block').setup()
    end
}
```
