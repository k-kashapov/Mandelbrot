all: jelly_o2.exe

cpps = main.cpp
compilerFlags = -lraylib -lGL -lm -lpthread -ldl -lrt -lX11 -I include -mavx -mavx2 -march=native -msse4.2

jelly.exe: 	$(cpps)
			g++ $(cpps) $(compilerFlags) -o jelly.exe -O0

jelly_o2.exe: 	$(cpps)
				g++ $(cpps) $(compilerFlags) -o jelly_o2.exe -O2

jelly_fast.exe: $(cpps)
				g++ $(cpps) $(compilerFlags) -o jelly_fast.exe -Ofast

jelly.s: 	$(cpps)
			g++ $(cpps) $(compilerFlags) $(opt_flags) -S -o jelly.s -masm=intel

clean:
		rm ./jelly.exe
		rm ./jelly_o2.exe
		rm ./jelly_fast.exe
