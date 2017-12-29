##
# You need to download python resizeimage module.
# Mac users can do in terminal: pip2.7 install --user python-resize-image
#
##
from PIL import Image
from PIL import ImageFile
ImageFile.LOAD_TRUNCATED_IMAGES = True
import os
from resizeimage import resizeimage

## Change the following according to your folder structure
list_dir = '/Users/merterm/Downloads/train_4'
read_dir = "/Users/merterm/Downloads/train_4/"
write_dir = "/Users/merterm/Downloads/train_4_resized/"

for filename in os.listdir(list_dir):
    with open(read_dir+filename, 'r+b') as f:
        with Image.open(f) as image:
            width, height = image.size
            if width != 100 and height != 100:
                cover = resizeimage.resize_cover(image, [100, 100])
                cover.save(write_dir+filename, image.format)
