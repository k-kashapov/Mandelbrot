all: jelly.exe

cpps = main.cpp
compilerFlags = -lraylib -lGL -lm -lpthread -ldl -lrt -lX11 -I include -mavx -mavx2

flags = -O1

jelly.exe: 	$(cpps)
			g++ $(cpps) $(compilerFlags) $(flags) -o jelly.exe

clean:
	rm ./jelly.exe
