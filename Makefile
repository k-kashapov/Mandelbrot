all: jelly.exe

cpps = main.cpp
compilerFlags = -lraylib -lGL -lm -lpthread -ldl -lrt -lX11 -I include -mavx -mavx2

opt_flags = -O1

jelly.exe: 	$(cpps)
			g++ $(cpps) $(compilerFlags) $(opt_flags) -o jelly.exe

jelly.s: 	$(cpps)
			g++ $(cpps) $(compilerFlags) $(opt_flags) -S -o jelly.s

clean:
	rm ./jelly.exe
