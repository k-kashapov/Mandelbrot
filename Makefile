all: jelly.exe

cpps = main.cpp
compilerFlags = -lraylib -lGL -lm -lpthread -ldl -lrt -lX11 -I include -O0

jelly.exe: 	$(cpps)
			g++ $(cpps) $(compilerFlags) -o jelly.exe
