#include <raylib.h>
#include <raymath.h>
#include <stdio.h>
#include <x86intrin.h>

static const int Scr_w = 800;
static const int Scr_h = 600;

inline int MandelbrotToCanvas (Color *pixels, double scale, double pos_x, double pos_y, int Steps)
{	
	// "Infinity" distance
	__m256d MaxDistSqr = _mm256_set1_pd (100.0);

	__m256d DX = _mm256_set_pd (3.0, 2.0, 1.0, 0.0);

	for (double y = 0; y < Scr_h; y += 1)
	{
		double init_y = (y - Scr_h / 2) * scale - pos_y;
		double init_x = (0 - Scr_w / 2) * scale - pos_x;
		
		for (double x = 0; x < Scr_w; x += 4, init_x += 4 * scale)
		{
			__m256d init_set_x = _mm256_add_pd (
												_mm256_set1_pd (init_x), 
												_mm256_mul_pd (DX, _mm256_set1_pd (scale))
											   );
											   
			volatile __m256d curr_x = init_set_x;

			__m256d init_set_y = _mm256_set1_pd (init_y);
			__m256d curr_y     = init_set_y;
			
			__m256i step_set   = _mm256_set1_epi64x (0);
		
			for (int step = 0; step < Steps; step++)
			{
				__m256d x_sqr  = _mm256_mul_pd (curr_x,  curr_x);
				__m256d y_sqr  = _mm256_mul_pd (curr_y,  curr_y);
				__m256d new_xy = _mm256_mul_pd (curr_x,  curr_y);
		
				__m256d new_x = _mm256_add_pd (_mm256_sub_pd (x_sqr, y_sqr), init_set_x);
				__m256d new_y = _mm256_add_pd (_mm256_add_pd (new_xy, new_xy), init_set_y);
		
				__m256d dist = _mm256_add_pd (x_sqr, y_sqr);
				
				__m256d compared = _mm256_cmp_pd (dist, MaxDistSqr, _CMP_LE_OQ);
				__m256i compared_int = _mm256_castpd_si256 (compared);
				
				step_set = _mm256_sub_epi64 (step_set, compared_int);

				int mask = _mm256_movemask_epi8 (compared_int);

				if (!mask) break;

				curr_x = new_x;
				curr_y = new_y;
			}

			long long* int_arr = (long long *) &step_set;

			for (long long pixel = 0; pixel < 4; pixel++)
			{
				int color = int_arr[pixel];
				unsigned char colorScale = (unsigned char) (sin (PI * int_arr[pixel] / Steps) * 255);

				*(pixels + (int) (y * Scr_w) + (int) x + pixel) =  Color { 0, colorScale, colorScale, 255 };
			}
		}
	}

	return 0;
}

int ProcessKeyboard (double *pos_x, double *pos_y, double *scale, int *steps)
{
	if (IsKeyDown (KEY_Z)) *scale *= 0.9;
	if (IsKeyDown (KEY_X)) *scale /= 0.9;

	if (IsKeyDown (KEY_A)) *pos_x += 10 * *scale;
	if (IsKeyDown (KEY_D)) *pos_x -= 10 * *scale;

	if (IsKeyDown (KEY_W)) *pos_y += 10 * *scale;
	if (IsKeyDown (KEY_S)) *pos_y -= 10 * *scale;

	if (IsKeyDown (KEY_O)) *steps += 4;
	if (IsKeyDown (KEY_P)) *steps -= 4;

	return GetKeyPressed();
}

int Drawing()
{	
	double scale = 0.005;
	double pos_x = 0;
	double pos_y = 0;

	// How much steps to take before painting pixel black
	int Steps = 256;

	Image     canvas    = GenImageColor (Scr_w, Scr_h, BLACK);
	Texture2D canvasTex = LoadTextureFromImage (canvas);
	Color     *pixels   = LoadImageColors (canvas);

	while (!WindowShouldClose())
	{
		BeginDrawing();

		ProcessKeyboard (&pos_x, &pos_y, &scale, &Steps);

		MandelbrotToCanvas (pixels, scale, pos_x, pos_y, Steps);

		UpdateTexture (canvasTex, pixels);
		DrawTexture (canvasTex, 0, 0, WHITE);

		printf ("FPS = %d | FrameTime = %lf | Scale = %lf | Position = (%.3f, %.3f) | Steps = %d\n", 
				GetFPS(), GetFrameTime(), scale, pos_x, pos_y, Steps);

		EndDrawing();		
	}
	
	return 0;
}

int main (int argc, const char **argv)
{
	InitWindow (Scr_w, Scr_h, "Mandelbrot");
	SetTargetFPS (60);

	int loop_ret = Drawing();

	CloseWindow();

	if (loop_ret)
	{
		printf ("An error occured during game loop! Terminating...\n");
	}

	return 0;
}
