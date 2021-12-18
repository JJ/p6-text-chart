# Text::Chart [![Test](https://github.com/JJ/p6-text-chart/actions/workflows/test.yaml/badge.svg)](https://github.com/JJ/p6-text-chart/actions/workflows/test.yaml)

A simple Text Chart for Raku


## Running an example

`raku-text-chart` should have been installed in your binary directory, you 
can run it directly this way:

```shell
raku-text-chart 3 2 1 4
```

Obtaining a result such as this one:

```text
    
   ▮
   ▮
▮  ▮
▮  ▮
▮  ▮
▮▮ ▮
▮▮ ▮
▮▮▮▮
▮▮▮▮

```

Or you can use 

```text
raku-text-chart --max=4 --chart-chars=▐░▓█ 3 2 1 4
```

Which will give us:

```text
   █
▐  █
▐░ █
▐░▓█
```

## License

This is distributed under the GNU GPL v3
