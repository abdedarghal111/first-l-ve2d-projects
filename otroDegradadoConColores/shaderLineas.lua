return [[
extern vec2[] lineas;

int seach_line(vec2 pixel, vec2[] lineas)
{
  for(int i = lineas.length(); i != 0; i--){

  }
  return 0
}

vec4 effect(vec4 color, Image tex, vec2 texture_coords, vec2 screen_coords)
{
  vec2 pixel = vec2(screen_coords.x/screen.x,screen_coords.y/screen.y);
  bool result = seach_line(pixel,lineas)
  if(result == 1)
    return result;
  else if(result == 0)
    return vec4(0.0, 0.0, 0.0, 0.0);
}
]]
