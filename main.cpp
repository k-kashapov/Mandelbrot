#include <raylib.h>
#include <raymath.h>
#include <stdio.h>
#include <emmintrin.h>

const int Scr_w = 800;
const int Scr_h = 600;

// How much steps to take before painting pixel black
const int Steps = 255;

// "Infinity" distance
const float MaxDistSqr = 100;

int DoSteps (float init_x, float init_y)
{
	float curr_x = init_x;
	float curr_y = init_y;

	int step = 0;

	for (; step < Steps; step++)
	{
		float x_sqr  = curr_x * curr_x;
		float y_sqr  = curr_y * curr_y;
		float new_xy = curr_x * curr_y;

		float new_x = x_sqr - y_sqr + init_x;
		float new_y = 2 * new_xy + init_y;

		float dist = x_sqr + y_sqr;

		if (dist > MaxDistSqr) break;

		curr_x = new_x;
		curr_y = new_y;
	}

	return step;
}

int MandelbrotToCanvas (float scale, Vector2 init_pos)
{
	for (float y = 0; y < Scr_h; y++)
	{
		float init_y = (y - Scr_h / 2) * scale - init_pos.y;
		
		for (float x = 0; x < Scr_w; x++)
		{
			float init_x = (x - Scr_w / 2) * scale - init_pos.x;
			float step   = DoSteps (init_x, init_y);

			unsigned char colorScale = (unsigned char) (sin (step / 256 * PI) * 255);

			DrawPixel ((int) x, (int) y, Color { 0, colorScale, colorScale, 255 });
		}
	}

	return 0;
}

int ProcessKeyboard (Vector2 *init_pos, float *scale)
{
	if (IsKeyDown (KEY_Z)) *scale *= 0.9;
	if (IsKeyDown (KEY_X)) *scale /= 0.9;

	if (IsKeyDown (KEY_A)) init_pos->x += 10 * *scale;
	if (IsKeyDown (KEY_D)) init_pos->x -= 10 * *scale;

	if (IsKeyDown (KEY_W)) init_pos->y += 10 * *scale;
	if (IsKeyDown (KEY_S)) init_pos->y -= 10 * *scale;


	return 0;
}

int Drawing()
{	
	float   scale = 0.01;
	Vector2 init_pos = { 0, 0 };

	while (!WindowShouldClose())
	{
		BeginDrawing();
		ClearBackground (BLACK);

		ProcessKeyboard (&init_pos, &scale);

		MandelbrotToCanvas (scale, init_pos);

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
