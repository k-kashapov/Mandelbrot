* Highly optimized Mandelbrot set visualization

* Uses AVX 256 for parallel 4 double vectors computation
* -O2 optimization flag recommended


Speed-up ratio

| AVX | Flags | Drawing | FPS | Speed-up ratio |
|:---:|:-----:|:-------:|:---:|:--------------:|
|  No |  -O0  |    No   |  6  |       x1       |
| Yes |  -O0  |    No   |  12 |       x2       |
|  No |  -O2  |    No   |  12 |       x2       |
| Yes |  -O2  |    No   |  40 |       x4       |
