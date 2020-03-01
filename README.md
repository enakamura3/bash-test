# README

Simple script to convert images from `jpg` to `png` using `ImageMagic`.

## how to run

```
bash script.sh images
```

## awk

We use awk script to manipulate texts

```
ls $file | awk -F / '{print $2}' | awk -F . '{print $1}'
```

-F : split whe string using an delimiter character

## standard input and output

When we execute a program in unix, we can access the std in, out and error through numbers:

number | meaning
------ | ---------------
0      | standard input
1      | standard output
2      | standard error

example:

```
image_convert $@ 1> out.txt 2> error.txt
```

When the script run, it will create two files: `out.txt` and `error.txt`.

## program return code

unix executions return a numeric code that we can use to see if the execution had some error or not.

the default output for succes is `0`

we can check the value like this:

```
if [ $? -eq 0 ]
```
