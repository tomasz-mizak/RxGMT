# rbx-gm
Documentation is updated in github pages, plugged into this repository.

## Running
To build the place from scratch, use:

```bash
rojo build --output workspace.rbxlx
```

Next, open `workspace.rbxlx` in `Roblox Studio` and start the Rojo server:

```bash
rojo serve
```

For more help, check out [the Rojo documentation](https://rojo.space/docs).

## Submodules

### Check submodules
```bash
git submodule status
```

### Adding new submodule

```bash
git submodule add [repo-url] Packages/[Package name]
git commit -am "Add [Package name] as submodule"
```

### Update submodules

```bash
git submodule update --init --recursive
```

## Documentation

### Run localy

First install python.

Install `mkdocs` and `mkdocs-material`
```bash
pip install mkdocs
pip install mkdocs-material
```

On windows run via:
```bash
python -m mkdocs serve
```