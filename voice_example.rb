
%x( say "Hello")

sleep(0.7)

%x( say "My name is Hal")
%x( say "and I'm running everything you type. But, be careful. If you write too much you will be waiting a while for the entire string to finish. Look at me carrying on. I didn't even ask your name. what was it again?" )

print "type your name: "
name = gets.chomp

%x( say "Thank you, #{name}")

sleep(0.2)

%x( say " for participating.")