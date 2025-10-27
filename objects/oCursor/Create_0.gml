window_set_cursor(cr_none)


xadjust = view_wport / camera_get_view_width(view_camera[0]) // viewport x divided by camera x
yadjust = view_hport / camera_get_view_height(view_camera[0]) // viewport y divided by camera y

xoffset = 0
yoffset = -100
ylinespacing = 15

draw_set_halign(fa_center)
draw_set_colour(c_yellow)

globalStepCounter = 0

soundClickHammer = sndHammering
soundClickFishing = sndSplash