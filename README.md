# nanovg_bgfx
The nanovg utilities under bgfx. Copied from bgfx/examples/common and adapted for xmake.



## How to Use

You can use `nanovg_bgfx` either as a xmake *target* or a xmake *package*.

### As a xmake target

Import `nanovg_bgfx` as a git submodule.

```shell
git submodule add https://github.com/DvdBr3o/nanovg_bgfx.git deps/nanovg_bgfx
```

In you `xmake.lua`, include the directory and use `add_deps` to load `nanovg_bgfx` as a dependecy.

```lua
-- xmake.lua --
includes("deps/nanovg_bgfx")

target("my_target")
	-- ...
	add_deps("nanovg_bgfx")
```

### As a xmake package

Since `nanovg_bgfx` has not been submitted onto xrepo (actually this is not quite a important package though, it is believed to be just used by me in fact), you can add [DvdBrepo](https://github.com/DvdBr3o/DvdBrepo) to install `nanovg_bgfx` as a xmake package conveniently.

If you are willing to add [DvdBrepo](https://github.com/DvdBr3o/DvdBrepo) as repo implicitly in your current project, you can:

```bash
xmake repo --add DvdBrepo git@github.con:DvdBr3o/DvdBrepo.git
```

Or otherwise you are just intended to add `DvdBrepo` explicitly in your current project configurartions, you can add the following scripts into your `xmake.lua`:

```lua
-- xmake.lua --
add_repositories("DvdBrepo https://github.com/DvdBr3o/DvdBrepo.git")
```

Then you are good to go:

```lua
-- xmake.lua --
add_requires("nanovg_bgfx")

target("my_target")
	-- ...
	add_packages("nanovg_bgfx")
```

