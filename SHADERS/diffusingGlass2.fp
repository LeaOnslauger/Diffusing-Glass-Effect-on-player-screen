
uniform float diffAmount = 0.05;
uniform int diffLevel = 20;
uniform float timer;

vec4 ProcessTexel()
{
	vec2 pos = vTexCoord.st;

    const float pi = 3.14159265358979323846;

		vec2 diffScreen1 = vec2(timer * diffAmount * sin((pi*diffLevel) * pos.y) * pos.y, timer * diffAmount * sin((pi*diffLevel) * pos.x) * pos.y);
		vec2 diffScreen2 = vec2(timer * diffAmount * sin((pi*diffLevel) * pos.y) * pos.x, timer * diffAmount * sin((pi*diffLevel) * pos.x) * pos.x);
		
		vec2 tCoord1 = pos + diffScreen1;
		vec2 tCoord2 = pos - diffScreen2;
		
	return getTexel((tCoord1 + tCoord2) / 2);
}
