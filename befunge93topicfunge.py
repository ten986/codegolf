from PIL import Image, ImageDraw, ImageFont
import sys

im = Image.new("RGB", (512, 512), (0, 0, 0))
draw = ImageDraw.Draw(im)

lines = sys.stdin.readlines()



maxi = 0
maxj = 0

for i, line in enumerate(lines):
	line = line.strip("\n")
	if i > maxi:
		maxi = i
	for j, c in enumerate(line):
		draw.point((j, i), fill=(0 if i != 0 or j !=0 else ord("A") , ord(c), 0))
		if j > maxj:
			maxj = j

im = im.crop((0,0,maxj+1,maxi+1))

im.save('out.png')
