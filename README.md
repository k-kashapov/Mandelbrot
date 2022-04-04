* Highly optimized Mandelbrot set visualization

* Uses AVX 256 for parallel 8 float vectors computation
* -O2 optimization flag recommended
* FPS:
*   No AVX -O0 No Drawing: 6
*   No AVX -O2 No Drawing: 12
*   AVX    -O0 No Drawing: 12
*   AVX    -O2 No Drawing: 40
