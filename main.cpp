#include <raylib.h>
#include <raymath.h>
#include <stdio.h>
#include <x86intrin.h>

static const int Scr_w = 800;
static const int Scr_h = 600;

// "Infinity" distance
static const __m256 MaxDistSqr = _mm256_set1_ps (100.0);

static const __m256 DX = _mm256_set_ps (7.0, 6.0, 5.0, 4.0, 3.0, 2.0, 1.0, 0.0);

inline int MandelbrotToCanvas (float scale, Vector2 init_pos, int Steps)
{
	for (float y = 0; y < Scr_h; y++)
	{
		float init_y = (y - Scr_h / 2) * scale - init_pos.y;
		float init_x = (0 - Scr_w / 2) * scale - init_pos.x;
		
		for (float x = 0; x < Scr_w; x += 8, init_x += 8 * scale)
		{
			__m256 init_set_x = _mm256_add_ps (_mm256_set1_ps (init_x), _mm256_mul_ps (DX, _mm256_set1_ps (scale)));
			__m256 init_set_y = _mm256_set1_ps (init_y);

			__m256 curr_x     = init_set_x;
			__m256 curr_y     = init_set_y;
			
			__m256i step_set  = _mm256_set1_epi32 (0);
		
			for (int step = 0; step < Steps; step++)
			{
				__m256 x_sqr  = _mm256_mul_ps (curr_x,  curr_x);
				__m256 y_sqr  = _mm256_mul_ps (curr_y,  curr_y);
				__m256 new_xy = _mm256_mul_ps (curr_x,  curr_y);
		
				__m256 new_x = _mm256_add_ps (_mm256_sub_ps (x_sqr, y_sqr), init_set_x);
				__m256 new_y = _mm256_add_ps (_mm256_add_ps (new_xy, new_xy), init_set_y);
		
				__m256 dist = _mm256_add_ps (x_sqr, y_sqr);
		
				__m256 compared = _mm256_cmp_ps (dist, MaxDistSqr, _CMP_LE_OQ);

				step_set = _mm256_sub_epi32 (step_set, _mm256_castps_si256 (compared));

				int mask = _mm256_movemask_ps (compared);

				if (!mask) break;

				curr_x = new_x;
				curr_y = new_y;
			}

			int* int_arr = (int *) &step_set;

			for (int pixel = 0; pixel < 8; pixel++)
			{	
				int color = int_arr[pixel];
				unsigned char colorScale = (unsigned char) (sin (PI * int_arr[pixel] / Steps) * 255);

				DrawPixel ((int) x + pixel, (int) y, Color { 0, colorScale, colorScale, 255 });
			}
		}
	}

	return 0;
}

int ProcessKeyboard (Vector2 *init_pos, float *scale, int *steps)
{
	if (IsKeyDown (KEY_Z)) *scale *= 0.9;
	if (IsKeyDown (KEY_X)) *scale /= 0.9;

	if (IsKeyDown (KEY_A)) init_pos->x += 10 * *scale;
	if (IsKeyDown (KEY_D)) init_pos->x -= 10 * *scale;

	if (IsKeyDown (KEY_W)) init_pos->y += 10 * *scale;
	if (IsKeyDown (KEY_S)) init_pos->y -= 10 * *scale;

	if (IsKeyDown (KEY_O)) *steps += 4;
	if (IsKeyDown (KEY_P)) *steps -= 4;

	return GetKeyPressed();
}

int Drawing()
{	
	float   scale = 0.01;
	Vector2 init_pos = { 0, 0 };

	// How much steps to take before painting pixel black
	int Steps = 256;

	while (!WindowShouldClose())
	{
		BeginDrawing();

		ProcessKeyboard (&init_pos, &scale, &Steps);
		
		ClearBackground (BLACK);
			
		MandelbrotToCanvas (scale, init_pos, Steps);

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
