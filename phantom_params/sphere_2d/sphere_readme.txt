The files contained in this directory are input for the MATLAB function 'generatesphericalphantom.m'. The files contain specifications for a spherical phantom image pair in which the sphere changes volume. A variable degree of mass preservation is allowed. The parameters are described below.

name= name to be used for the output images and masks
nDims= number of dimensions desired for the output image; currently only support for value of '3'
imgSpacing= voxel dimension in mm; voxels are isotropic
imgOrigin= location of image originl should be kept at 0
imgSize= number of voxels in each direction; currently, same size is used in all dimensions
bgDensity= density, in mg/cc, of the background (prior to conversion to HU); for air, use 0
firstCenterX= x coordinate of the center of the sphere in the first image, in voxels
firstCenterY= y coordinate of the center of the sphere in the first image, in voxels
firstCenterZ= z coordinate of the center of the sphere in the first image, in voxels
firstRadius= radius of the first sphere, in mm
firstDensity= density of first sphere, in mg/cc
secondCenterX= x coordinate of the center of the sphere in the second image, in voxels
secondCenterY= y coordinate of the center of the sphere in the second image, in voxels
secondCenterZ= z coordinate of the center of the sphere in the second image, in voxels
secondRadius= radius of the first sphere, in mm
massRatio= ratio of second sphere to first sphere mass; < 0 indicates mass loss, > 0 indicates mass increase
addNoise= whether to add Gaussian noise to the images; either 1 for yes or 0 for no
