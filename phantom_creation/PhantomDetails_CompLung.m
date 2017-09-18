% PhantomDetails_CompLung.m   Chris Guy   09/14/2016

disp('CompLung No Mass Loss - all');
expandImg = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_expand_nomassloss.mhd';
expandMask = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_expand_mask.mhd';
collapseImg = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_collapse_nomassloss.mhd';
collapseMask = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_collapse_mask.mhd';

[fxdImg,fxdHdr]=OpenMetaImage(expandImg);
[fxdMask,~]=OpenMetaImage(expandMask);
[mvgImg,mvgHdr]=OpenMetaImage(collapseImg);
[mvgMask,~]=OpenMetaImage(collapseMask);

fxdVol = sum(fxdMask(:)) * fxdHdr.x_pixdim * fxdHdr.y_pixdim;
mvgVol = sum(mvgMask(:)) * mvgHdr.x_pixdim * mvgHdr.y_pixdim;
fxdStats = getImageStatistics(fxdImg, fxdMask);
mvgStats = getImageStatistics(mvgImg, mvgMask);

fprintf('Image\tVolume\tAverage\tStdev\n');
fprintf('expand\t%f\t%f\t%f\n',fxdVol,fxdStats.mean,fxdStats.std);
fprintf('collap\t%f\t%f\t%f\n',mvgVol,mvgStats.mean,mvgStats.std);



disp('CompLung No Mass Loss - upper');
expandImg = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_expand_nomassloss.mhd';
expandMask = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_expand_upper_mask.mhd';
collapseImg = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_collapse_nomassloss.mhd';
collapseMask = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_collapse_upper_mask.mhd';

[fxdImg,fxdHdr]=OpenMetaImage(expandImg);
[fxdMask,~]=OpenMetaImage(expandMask);
[mvgImg,mvgHdr]=OpenMetaImage(collapseImg);
[mvgMask,~]=OpenMetaImage(collapseMask);

fxdVol = sum(fxdMask(:)) * fxdHdr.x_pixdim * fxdHdr.y_pixdim;
mvgVol = sum(mvgMask(:)) * mvgHdr.x_pixdim * mvgHdr.y_pixdim;
fxdStats = getImageStatistics(fxdImg, fxdMask);
mvgStats = getImageStatistics(mvgImg, mvgMask);

fprintf('Image\tVolume\tAverage\tStdev\n');
fprintf('expand\t%f\t%f\t%f\n',fxdVol,fxdStats.mean,fxdStats.std);
fprintf('collap\t%f\t%f\t%f\n',mvgVol,mvgStats.mean,mvgStats.std);



disp('CompLung No Mass Loss - lower');
expandImg = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_expand_nomassloss.mhd';
expandMask = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_expand_lower_mask.mhd';
collapseImg = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_collapse_nomassloss.mhd';
collapseMask = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_collapse_lower_mask.mhd';

[fxdImg,fxdHdr]=OpenMetaImage(expandImg);
[fxdMask,~]=OpenMetaImage(expandMask);
[mvgImg,mvgHdr]=OpenMetaImage(collapseImg);
[mvgMask,~]=OpenMetaImage(collapseMask);

fxdVol = sum(fxdMask(:)) * fxdHdr.x_pixdim * fxdHdr.y_pixdim;
mvgVol = sum(mvgMask(:)) * mvgHdr.x_pixdim * mvgHdr.y_pixdim;
fxdStats = getImageStatistics(fxdImg, fxdMask);
mvgStats = getImageStatistics(mvgImg, mvgMask);

fprintf('Image\tVolume\tAverage\tStdev\n');
fprintf('expand\t%f\t%f\t%f\n',fxdVol,fxdStats.mean,fxdStats.std);
fprintf('collap\t%f\t%f\t%f\n',mvgVol,mvgStats.mean,mvgStats.std);




disp('CompLung Mass Gain 25 - all');
expandImg = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_expand_massgain25.mhd';
expandMask = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_expand_mask.mhd';
collapseImg = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_collapse_massgain25.mhd';
collapseMask = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_collapse_mask.mhd';

[fxdImg,fxdHdr]=OpenMetaImage(expandImg);
[fxdMask,~]=OpenMetaImage(expandMask);
[mvgImg,mvgHdr]=OpenMetaImage(collapseImg);
[mvgMask,~]=OpenMetaImage(collapseMask);

fxdVol = sum(fxdMask(:)) * fxdHdr.x_pixdim * fxdHdr.y_pixdim;
mvgVol = sum(mvgMask(:)) * mvgHdr.x_pixdim * mvgHdr.y_pixdim;
fxdStats = getImageStatistics(fxdImg, fxdMask);
mvgStats = getImageStatistics(mvgImg, mvgMask);

fprintf('Image\tVolume\tAverage\tStdev\n');
fprintf('expand\t%f\t%f\t%f\n',fxdVol,fxdStats.mean,fxdStats.std);
fprintf('collap\t%f\t%f\t%f\n',mvgVol,mvgStats.mean,mvgStats.std);



disp('CompLung Mass Gain 25 - upper');
expandImg = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_expand_massgain25.mhd';
expandMask = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_expand_upper_mask.mhd';
collapseImg = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_collapse_massgain25.mhd';
collapseMask = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_collapse_upper_mask.mhd';

[fxdImg,fxdHdr]=OpenMetaImage(expandImg);
[fxdMask,~]=OpenMetaImage(expandMask);
[mvgImg,mvgHdr]=OpenMetaImage(collapseImg);
[mvgMask,~]=OpenMetaImage(collapseMask);

fxdVol = sum(fxdMask(:)) * fxdHdr.x_pixdim * fxdHdr.y_pixdim;
mvgVol = sum(mvgMask(:)) * mvgHdr.x_pixdim * mvgHdr.y_pixdim;
fxdStats = getImageStatistics(fxdImg, fxdMask);
mvgStats = getImageStatistics(mvgImg, mvgMask);

fprintf('Image\tVolume\tAverage\tStdev\n');
fprintf('expand\t%f\t%f\t%f\n',fxdVol,fxdStats.mean,fxdStats.std);
fprintf('collap\t%f\t%f\t%f\n',mvgVol,mvgStats.mean,mvgStats.std);



disp('CompLung Mass Gain 25 - lower');
expandImg = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_expand_massgain25.mhd';
expandMask = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_expand_lower_mask.mhd';
collapseImg = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_collapse_massgain25.mhd';
collapseMask = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_collapse_lower_mask.mhd';

[fxdImg,fxdHdr]=OpenMetaImage(expandImg);
[fxdMask,~]=OpenMetaImage(expandMask);
[mvgImg,mvgHdr]=OpenMetaImage(collapseImg);
[mvgMask,~]=OpenMetaImage(collapseMask);

fxdVol = sum(fxdMask(:)) * fxdHdr.x_pixdim * fxdHdr.y_pixdim;
mvgVol = sum(mvgMask(:)) * mvgHdr.x_pixdim * mvgHdr.y_pixdim;
fxdStats = getImageStatistics(fxdImg, fxdMask);
mvgStats = getImageStatistics(mvgImg, mvgMask);

fprintf('Image\tVolume\tAverage\tStdev\n');
fprintf('expand\t%f\t%f\t%f\n',fxdVol,fxdStats.mean,fxdStats.std);
fprintf('collap\t%f\t%f\t%f\n',mvgVol,mvgStats.mean,mvgStats.std);





disp('CompLung Mass Loss 25 - all');
expandImg = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_expand_massloss25.mhd';
expandMask = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_expand_mask.mhd';
collapseImg = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_collapse_massloss25.mhd';
collapseMask = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_collapse_mask.mhd';

[fxdImg,fxdHdr]=OpenMetaImage(expandImg);
[fxdMask,~]=OpenMetaImage(expandMask);
[mvgImg,mvgHdr]=OpenMetaImage(collapseImg);
[mvgMask,~]=OpenMetaImage(collapseMask);

fxdVol = sum(fxdMask(:)) * fxdHdr.x_pixdim * fxdHdr.y_pixdim;
mvgVol = sum(mvgMask(:)) * mvgHdr.x_pixdim * mvgHdr.y_pixdim;
fxdStats = getImageStatistics(fxdImg, fxdMask);
mvgStats = getImageStatistics(mvgImg, mvgMask);

fprintf('Image\tVolume\tAverage\tStdev\n');
fprintf('expand\t%f\t%f\t%f\n',fxdVol,fxdStats.mean,fxdStats.std);
fprintf('collap\t%f\t%f\t%f\n',mvgVol,mvgStats.mean,mvgStats.std);



disp('CompLung Mass Loss 25 - upper');
expandImg = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_expand_massloss25.mhd';
expandMask = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_expand_upper_mask.mhd';
collapseImg = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_collapse_massloss25.mhd';
collapseMask = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_collapse_upper_mask.mhd';

[fxdImg,fxdHdr]=OpenMetaImage(expandImg);
[fxdMask,~]=OpenMetaImage(expandMask);
[mvgImg,mvgHdr]=OpenMetaImage(collapseImg);
[mvgMask,~]=OpenMetaImage(collapseMask);

fxdVol = sum(fxdMask(:)) * fxdHdr.x_pixdim * fxdHdr.y_pixdim;
mvgVol = sum(mvgMask(:)) * mvgHdr.x_pixdim * mvgHdr.y_pixdim;
fxdStats = getImageStatistics(fxdImg, fxdMask);
mvgStats = getImageStatistics(mvgImg, mvgMask);

fprintf('Image\tVolume\tAverage\tStdev\n');
fprintf('expand\t%f\t%f\t%f\n',fxdVol,fxdStats.mean,fxdStats.std);
fprintf('collap\t%f\t%f\t%f\n',mvgVol,mvgStats.mean,mvgStats.std);



disp('CompLung Mass Loss 25 - lower');
expandImg = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_expand_massloss25.mhd';
expandMask = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_expand_lower_mask.mhd';
collapseImg = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_collapse_massloss25.mhd';
collapseMask = '/rdoabc/caliper/atelectasis_studies/phantoms/complung/input/complung_collapse_lower_mask.mhd';

[fxdImg,fxdHdr]=OpenMetaImage(expandImg);
[fxdMask,~]=OpenMetaImage(expandMask);
[mvgImg,mvgHdr]=OpenMetaImage(collapseImg);
[mvgMask,~]=OpenMetaImage(collapseMask);

fxdVol = sum(fxdMask(:)) * fxdHdr.x_pixdim * fxdHdr.y_pixdim;
mvgVol = sum(mvgMask(:)) * mvgHdr.x_pixdim * mvgHdr.y_pixdim;
fxdStats = getImageStatistics(fxdImg, fxdMask);
mvgStats = getImageStatistics(mvgImg, mvgMask);

fprintf('Image\tVolume\tAverage\tStdev\n');
fprintf('expand\t%f\t%f\t%f\n',fxdVol,fxdStats.mean,fxdStats.std);
fprintf('collap\t%f\t%f\t%f\n',mvgVol,mvgStats.mean,mvgStats.std);
