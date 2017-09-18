% CalculateLungPhantomStatistics_NoMassLoss.m   Chris Guy   04 10 2017
% Purpose: Calculates phantom statistics and displays results.

% Input files are set.
pathExpand = ['/rdoabc/caliper/atelectasis_studies/phantoms/lungs/' ...
              'input/lungs_expand_nomassloss.mhd'];
pathCollapse = ['/rdoabc/caliper/atelectasis_studies/phantoms/lungs/' ...
                'input/lungs_collapse_nomassloss.mhd'];
pathLowerExpandMask = ['/rdoabc/caliper/atelectasis_studies/phantoms/' ...
                       'lungs/input/lungs_lower_expand_mask.mhd'];
pathLowerCollapseMask = ['/rdoabc/caliper/atelectasis_studies/' ...
                     'phantoms/lungs/input/lungs_lower_collapse_mask.mhd'];
pathUpperExpandMask = ['/rdoabc/caliper/atelectasis_studies/phantoms/' ...
                       'lungs/input/lungs_upper_expand_mask.mhd'];
pathUpperCollapseMask = ['/rdoabc/caliper/atelectasis_studies/' ...
                     'phantoms/lungs/input/lungs_upper_collapse_mask.mhd'];

imgExpand = OpenMetaImage(pathExpand);
imgCollapse = OpenMetaImage(pathCollapse);
maskLowerExpand = OpenMetaImage(pathLowerExpandMask);
maskLowerCollapse = OpenMetaImage(pathLowerCollapseMask);
maskUpperExpand = OpenMetaImage(pathUpperExpandMask);
maskUpperCollapse = OpenMetaImage(pathUpperCollapseMask);

% Statistics are calculated.
volUpperExpand = sum(maskUpperExpand(:));
vals = imgExpand(maskUpperExpand==1);
valsScale=vals+1000;
massExpandUpper=sum(valsScale);
avgVals=mean(vals);
stdVals=std(vals);
disp('expand upper');
disp(['Volume: ' num2str(volUpperExpand)]);
disp(['Mass: ' num2str(massExpandUpper)]);
disp(['Avg: ' num2str(avgVals)]);
disp(['Std: ' num2str(stdVals)]);
disp('');

volLowerExpand = sum(maskLowerExpand(:));
vals = imgExpand(maskLowerExpand==1);
valsScale=vals+1000;
massExpandLower=sum(valsScale);
avgVals=mean(vals);
stdVals=std(vals);
disp('expand lower');
disp(['Volume: ' num2str(volLowerExpand)]);
disp(['Mass: ' num2str(massExpandLower)]);
disp(['Avg: ' num2str(avgVals)]);
disp(['Std: ' num2str(stdVals)]);
disp('');

volUpperCollapse = sum(maskUpperCollapse(:));
vals = imgCollapse(maskUpperCollapse==1);
valsScale=vals+1000;
massCollapseUpper=sum(valsScale);
avgVals=mean(vals);
stdVals=std(vals);
disp('collapse upper');
disp(['Volume: ' num2str(volUpperCollapse)]);
disp(['Mass: ' num2str(massCollapseUpper)]);
disp(['Avg: ' num2str(avgVals)]);
disp(['Std: ' num2str(stdVals)]);
disp('');

volLowerCollapse = sum(maskLowerCollapse(:));
vals = imgCollapse(maskLowerCollapse==1);
valsScale=vals+1000;
massCollapseLower=sum(valsScale);
avgVals=mean(vals);
stdVals=std(vals);
disp('collapse lower');
disp(['Volume: ' num2str(volLowerCollapse)]);
disp(['Mass: ' num2str(massCollapseLower)]);
disp(['Avg: ' num2str(avgVals)]);
disp(['Std: ' num2str(stdVals)]);
disp('');

disp('Mass change upper:');
massChangeUpper = ((massExpandUpper - massCollapseUpper) ...
                   / massCollapseUpper) * 100;
disp(massChangeUpper);

disp('Mass change lower:');
massChangeLower = ((massExpandLower - massCollapseLower) ...
                   / massCollapseLower) * 100;
disp(massChangeLower);

disp('Volume change upper:');
volChangeUpper = ((volUpperExpand - volUpperCollapse) ...
                   / volUpperCollapse) * 100;
disp(volChangeUpper);

disp('Volume change lower:');
volChangeLower = ((volLowerExpand - volLowerCollapse) ...
                   / volLowerCollapse) * 100;
disp(volChangeLower);

% Cleanup
clear pathExpand pathCollapse pathLowerExpandMask pathUpperExpandMask;
clear pathLowerCollapseMask pathUpperCollapseMask imgExpand imgCollapse;
clear vol vals valsScale massCollapseLower massCollapseUpper avgVals;
clear stdVals massExpandLower massExpandUpper volUpperCollapse;
clear volUpperExpand volLowerCollapse volLowerExpand;
clear maskLowerCollapse maskLowerExpand maskUpperCollapse maskUpperExpand;
clear massChangeUpper massChangeLower volChangeUpper volChangeLower;
