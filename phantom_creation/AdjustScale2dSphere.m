imgPath = 'Y:/atelectasis_studies/phantoms/sphere_2d/input/sphere_2d_nomassloss_1.mhd';
[img,hdr] = OpenMetaImage(imgPath);
img = img + 1000;
WriteMetaImage('sphere_2d_nomassloss_scaled_1', img, hdr);

imgPath = 'Y:/atelectasis_studies/phantoms/sphere_2d/input/sphere_2d_nomassloss_2.mhd';
[img,hdr] = OpenMetaImage(imgPath);
img = img + 1000;
WriteMetaImage('sphere_2d_nomassloss_scaled_2', img, hdr);
