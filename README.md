## Functions and Alias to be Autosourced in Shell Profile

Add the following to your `~/.bash_profile`, `~/.zshrc` or similar file:

```
## Toolshed ##

fn_dir=~/dev/toolshed/commandline
if [ -d "$fn_dir" ]; then
    for file in "$fn_dir"/*; do
        [ -r "$file" ] && . "$file"
    done
fi
```

It will source the contents of all files in the `/toolshed/commandline` directory and make them available from the commandline.