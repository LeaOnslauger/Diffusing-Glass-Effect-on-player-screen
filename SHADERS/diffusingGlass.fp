
void main()
{
		const float pi = 3.14159265358979323846;
		
		vec2 texSize = textureSize(InputTexture, 0);

		if(diffType == 1)
		{
		vec2 diffScreen1 = vec2(diffAmount * cos((pi*diffLevel) * TexCoord.y) * TexCoord.y, diffAmount * cos((pi*diffLevel) * TexCoord.x) * TexCoord.y);
		vec2 diffScreen2 = vec2(diffAmount * cos((pi*diffLevel) * TexCoord.y) * TexCoord.x, diffAmount * cos((pi*diffLevel) * TexCoord.x) * TexCoord.x);
		
		vec2 tCoord1 = TexCoord + diffScreen1;
		vec2 tCoord2 = TexCoord - diffScreen2;
		
		FragColor = ((texture(InputTexture, tCoord1) + texture(InputTexture, tCoord2)) / 2);
        }
		else if(diffType == 2)
		{
		vec2 diffScreen1 = vec2(diffAmount * sin((pi*diffLevel) * TexCoord.y), diffAmount * sin((pi*diffLevel) * TexCoord.x));
		vec2 diffScreen2 = vec2(diffAmount * sin((pi*diffLevel) * TexCoord.y), diffAmount * sin((pi*diffLevel) * TexCoord.x));
		
		vec2 tCoord1 = TexCoord + diffScreen1;
		vec2 tCoord2 = TexCoord - diffScreen2;
		
		FragColor = ((texture(InputTexture, tCoord1) + texture(InputTexture, tCoord2)) / 2);
		}
		if(diffType == 3)
		{
		vec2 diffScreen1 = vec2(diffAmount * sin((pi*diffLevel) * TexCoord.y), diffAmount * sin((pi*diffLevel) * TexCoord.x));
		vec2 diffScreen2 = vec2(diffAmount * sin((pi*diffLevel) * TexCoord.y), diffAmount * sin((pi*diffLevel) * TexCoord.x));
		
		vec2 tCoord1 = TexCoord - diffAmount + diffScreen1;
		vec2 tCoord2 = TexCoord + diffAmount - diffScreen2;
		
		FragColor = ((texture(InputTexture, tCoord1) + texture(InputTexture, tCoord2)) / 2);
        }
}



/*

		if(diffType == 3)
		{
		vec2 diffScreen1 = vec2(diffAmount * sin((pi*diffLevel) * TexCoord.y), diffAmount * sin((pi*diffLevel) * TexCoord.x));
		vec2 diffScreen2 = vec2(diffAmount * sin((pi*diffLevel) * TexCoord.y), diffAmount * sin((pi*diffLevel) * TexCoord.x));
		
		vec2 tCoord1 = TexCoord + diffAmount + diffScreen1;
		vec2 tCoord2 = TexCoord - diffAmount - diffScreen2;
		
		FragColor = ((texture(InputTexture, tCoord1) + texture(InputTexture, tCoord2)) / 2);
        }


*/
