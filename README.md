# Pretty Terminal

These tools are to print in the terminal to create a user interface.

The Terminal is an easy way to show the user what our code is doing but it's not very user friendly. In Rails you can use HTML and CSS for your user interface and the options will be endless(almost). Even though the terminal is limited, we can have a little fun by stepping up the game.

Here's some options to make the terminal pretty. Remember that you need to make sure you have MVP(minimal viable product) before adding fancy extras like these, think of them as a stretch challenge.

### Release 1

Clone this Repo and type `cd Pretty_Terminal` to get into the folder.

### Colorizing Text

This is the easiest way to spruce up your application is to add some simple color.

copy this example into your terminal.

`ruby colorized_example.rb`

Bonus: You can dig into this further with [this link](https://wiki.archlinux.org/index.php/Color_Bash_Prompt#List_of_colors_for_prompt_and_Bash)

### Ascii art and Animating Text

##### Ascii

First you need to convert images into blocks of text using a Ascii generator like [this one](http://glassgiant.com/ascii/). You can then use these characters by putting them in an array to shift or replace a piece of the image. Your other option, as shown in the example is to write a multiline string. Notice the begining `<<-CAPITOLWORD` and ending `CAPITOLWORD`.
	
##### Animating Frames

Fliping through multiple still printed images gives the illusion of movement. The same rule applies to moving a walking animated character or a King across the checker board.

example
`ruby animating_example.rb`

Note the `clear_screen!` and `move_to_home!` methods.

### Add Voice

When used sparingly, this can add some dynamic interaction with your user.

Example
`ruby voice_example.rb`

the `%x( )` method in ruby runs the string as a command in the terminal.

the `say` command is a terminal command (may only work for osx terminal).

###Rmagick Gem

This is usually too slow for animation but great for an introduction image or "end game" image to your program. If you use images with less pixels it will load faster.

Instead of writing a method I wrote minimal code twice. This is so you could see the simplicity of the code.

In order for you to run this in your project you must download the gems. Enter the following to your terminal.

```
gem install tco
gem install rmagick
```

Example
`ruby rmagick_example.rb`

If it doesn't look quite right hit `⌘ -` a couple times to size down.

Don't forget to require the modules if you use this in your code as well.

```ruby
require "tco"
require "rmagick"
```

###Catpix Gem

You may not want to make your image bigger or smaller to fit on the terminal screen. Catpix is a gem that does the resizing for you.

This is a gem that uses the tco and rmagick gems to get the job done. but you don't need to require them again. See [documention](http://radek.io/2015/06/29/catpix/) if you want to learn more.

In order for you to run this in your project you must download the gems. Enter the following to your terminal.

```
gem install catpix
```

Example
`ruby rmagick_example.rb`

Once you've run it to see how it works, change some of the settings in the ruby code and run it again.

Don't forget to require the modules if you use this in your code as well.

```ruby
require "catpix"
```
