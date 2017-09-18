[expand, hdr]=OpenMetaImage(['Y:/atelectasis_studies/phantoms/'...
          'data_creation/lung_computational/lungs_expand_nomassloss.mhd']);
      
expandLabel=OpenMetaImage(['Y:/atelectasis_studies/phantoms/'...
               'data_creation/lung_computational/lungs_expand_label.mhd']);
           
collapse=OpenMetaImage(['Y:/atelectasis_studies/phantoms/'...
               'data_creation/lung_computational/deformed_phantom.mhd']);
           
collapseLabel=OpenMetaImage(['Y:/atelectasis_studies/phantoms/'...
               'data_creation/lung_computational/deformed_label.mhd']);
           
expand = expand + 1000;

massRatio = 1.5;
lowerMask = ones(size(expand));
lowerMask(expandLabel == 1) = massRatio;
expand = double(expand) .* lowerMask;

massRatio = 1.1;
upperMask = ones(size(expand));
upperMask(expandLabel == 2) = massRatio;
upperMask(expand > 700) = 1;
expand = double(expand) .* upperMask;

expandUpperVol=sum(expandLabel(:)==2);
expandLowerVol=sum(expandLabel(:)==1);
expandUpperVals=expand(expandLabel==2);
expandLowerVals=expand(expandLabel==1);
expandUpperMass = sum(expandUpperVals);
expandLowerMass = sum(expandLowerVals);

collapse = collapse + 1000;
collapseUpperVol=sum(collapseLabel(:)==2);
collapseLowerVol=sum(collapseLabel(:)==1);
collapseUpperVals=collapse(collapseLabel==2);
collapseLowerVals=collapse(collapseLabel==1);
collapseUpperMass = sum(collapseUpperVals);
collapseLowerMass = sum(collapseLowerVals);

massRatio = (expandLowerMass / collapseLowerMass) * 1.25;
collapseNew = collapse;
lowerMask = ones(size(collapseNew));
lowerMask(collapseLabel == 1) = massRatio;
collapseNew = double(collapseNew) .* lowerMask;

massRatio = expandUpperMass / collapseUpperMass;
upperMask = ones(size(collapseNew));
upperMask(collapseLabel == 2) = massRatio * 0.9935;
upperMask(collapseNew > 700) = 1;
collapseNew = double(collapseNew) .* upperMask;

newUpperVals=collapseNew(collapseLabel==2);
newLowerVals=collapseNew(collapseLabel==1);
newUpperMass = sum(newUpperVals);
newLowerMass = sum(newLowerVals);

collapseUpperPercent = (collapseUpperMass / expandUpperMass) * 100;
collapseLowerPercent = (collapseLowerMass / expandLowerMass) * 100;
newUpperPercent = (newUpperMass / expandUpperMass) * 100;
newLowerPercent = (newLowerMass / expandLowerMass) * 100;
 
disp(['Mass expand upper: ' num2str(expandUpperMass)]);
disp(['Mass expand lower: ' num2str(expandLowerMass)]);
disp(['Mass collapse upper: ' num2str(collapseUpperMass) ' (' num2str(collapseUpperPercent) '%)']);
disp(['Mass collapse lower: ' num2str(collapseLowerMass) ' (' num2str(collapseLowerPercent) '%)']);
disp(['Mass new upper: ' num2str(newUpperMass) ' (' num2str(newUpperPercent) '%)']);
disp(['Mass new lower: ' num2str(newLowerMass) ' (' num2str(newLowerPercent) '%)']);

collapseNew = collapseNew - 1000;
WriteMetaImage('complung_collapse_massloss25',collapseNew,hdr);
expand = expand - 1000;
WriteMetaImage('complung_expand_massloss25',expand,hdr);

