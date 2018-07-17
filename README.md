# My Utils

This is a directory to put my scripts.

## init_cpp

This python script creates my favorite structure of files and a default Makefile.

### Usage

In a linux terminal type:
	`./init_cpp`

## vid_to_gif

This is a script to convert a video to gif using mmpeg. This is just a more friendly interface to use mmpeg. And it goes without saying that you also need python installed.

### Requirements

Since this is not a complete tool (this is just another cli for mmpeg) you need to install mmpeg. On Debian/Ubuntu:

`sudo apt install mmpeg`

### Usage

You can see the arguments needed typing:

`./vid_to_gif -h` or `./vid_to_gif --help`

Here's an example of usage:

`./vid_to_gif -i <input_file> -o <output_name> -s <time_of_start> -d <duration> -w <output_width>`
