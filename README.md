# My Utils

This is a directory to put my scripts and configurations.

## My vim Config

If you run `setup-vim.sh` as you may guess, it will setup my vim configurations.
It will download my `.vimrc`, install the powerline fonts and YouCompleteMe.

## Some Vim config and tips 

<img src="vi-vim-cheat-sheet.gif">

## init_cpp

This python script creates my favorite structure of files and a default Makefile.

### Usage

In a linux terminal type:
	`./init_cpp`

## vid_to_gif

This is a script to convert a video to gif using mmpeg. This is just a more friendly interface to use mmpeg. And it goes without saying that you also need python installed.

### Requirements

Since this is not a complete tool (this is just another cli for mmpeg) you need to install ffmpeg. On Debian/Ubuntu:

`sudo apt install ffmpeg`

### Usage

You can see the arguments needed typing:

`./vid_to_gif -h` or `./vid_to_gif --help`

Here's an example of usage:

`./vid_to_gif -i <input_file> -o <output_name> -s <time_of_start> -d <duration> -w <output_width>`

#### More about gif conversion

- http://blog.pkh.me/p/21-high-quality-gif-with-ffmpeg.html
