%% CreateLungPhantom_NoMassLoss
%
% Chris Guy   04 05 2017
%
% *Purpose:* Creates a lung phantom with no mass loss during atelectasis
%            resolution.

% Input files are set.
inLower = '/rdo/home/cguy/tmp/phantom/phantom_lungs_lower_nomassloss.txt';
inUpper = '/rdo/home/cguy/tmp/phantom/phantom_lungs_upper_nomassloss.txt';

% Phantom sections (upper and lower lobes) are created.
lowerNames = generateLungPhantom(inLower);
upperNames = generateLungPhantom(inUpper);

% Created images are loaded.
pathLowerExpand = ['./' lowerNames.first];
pathLowerExpandMask = ['./' lowerNames.firstMask];
pathLowerCollapse = ['./' lowerNames.second];
pathLowerCollapseMask = ['./' lowerNames.secondMask];
pathUpperExpand = ['./' upperNames.second];
pathUpperExpandMask = ['./' upperNames.secondMask];
pathUpperCollapse = ['./' upperNames.first];
pathUpperCollapseMask = ['./' upperNames.firstMask];

[imgLowerExpand,hdr] = OpenMetaImage(pathLowerExpand);
maskLowerExpand = OpenMetaImage(pathLowerExpandMask);
imgLowerCollapse = OpenMetaImage(pathLowerCollapse);
maskLowerCollapse = OpenMetaImage(pathLowerCollapseMask);
imgUpperExpand = OpenMetaImage(pathUpperExpand);
maskUpperExpand = OpenMetaImage(pathUpperExpandMask);
imgUpperCollapse = OpenMetaImage(pathUpperCollapse);
maskUpperCollapse = OpenMetaImage(pathUpperCollapseMask);

% Images are combined to create the final phantom images.
imgExpand = max(imgLowerExpand, imgUpperExpand);
imgCollapse = max(imgLowerCollapse, imgUpperCollapse);

% Lobe labels are created.
labelExpand = maskLowerExpand;
labelExpand(maskUpperExpand == 1) = 2;
labelCollapse = maskLowerCollapse;
labelCollapse(maskUpperCollapse == 1) = 2;

% Final combined phantom images are saved.
WriteMetaImage('lungs_collapse_nomassloss', imgCollapse, hdr);
WriteMetaImage('lungs_expand_nomassloss', imgExpand, hdr);
WriteMetaImage('lungs_collapse_label', labelCollapse, hdr);
WriteMetaImage('lungs_expand_label', labelExpand, hdr);
