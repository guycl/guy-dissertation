The files contained in this directory are input for the MATLAB function 'generateresolutionphantom.m'. The files contain specifications for a phantom image pair of tube-like objects, running along the Z direction. A variable number of objects and degree of mass preservation is allowed. The parameters are described below.

name= name to be used for the output images and masks
nDims= number of dimensions desired for the output image; currently only support for value of '3'
imgSpacing= voxel dimension in mm; voxels are isotropic
imgOrigin= location of image originl should be kept at 0
imgSize= number of voxels in each direction; currently, same size is used in all dimensions
bgDensity= density, in mg/cc, of the background (prior to conversion to HU); for air, use 0
addNoise= whether to add Gaussian noise to the images; either 1 for yes or 0 for no
objects=
firstCenterX,firstCenterY,firstCenterZ,firstRadius,firstDensity,secondCenterX,secondCenterY,secondCenterZ,secondRadius,massRatio
firstCenterX,firstCenterY,firstCenterZ,firstRadius,firstDensity,secondCenterX,secondCenterY,secondCenterZ,secondRadius,massRatio
.
.
.

where:
firstCenterX is x coordinate of the center of the sphere in the first image, in voxels
firstCenterY is y coordinate of the center of the sphere in the first image, in voxels
firstCenterZ is z coordinate of the center of the sphere in the first image, in voxels
firstRadius is radius of the first sphere, in mm
firstDensity is density of first sphere, in mg/cc
secondCenterX is x coordinate of the center of the sphere in the second image, in voxels
secondCenterY is y coordinate of the center of the sphere in the second image, in voxels
secondCenterZ is z coordinate of the center of the sphere in the second image, in voxels
secondRadius is radius of the first sphere, in mm
massRatio is ratio of second sphere to first sphere mass; < 0 indicates mass loss, > 0 indicates mass increase