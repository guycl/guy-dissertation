% Collapse Label
[img,hdr]=OpenMetaImage(['Y:/atelectasis_studies/phantoms/complung/' ...
                         'input/complung_collapse_label.mhd']);
img = img * 1000;
WriteMetaImage('complung_collapse_label_scaled',img,hdr);

% Collapse Upper Mask
[img,hdr]=OpenMetaImage(['Y:/atelectasis_studies/phantoms/complung/' ...
                         'input/complung_collapse_upper_mask.mhd']);
img = img * 2000;
WriteMetaImage('complung_collapse_upper_mask_scaled',img,hdr);

% Collapse Lower Mask
[img,hdr]=OpenMetaImage(['Y:/atelectasis_studies/phantoms/complung/' ...
                         'input/complung_collapse_lower_mask.mhd']);
img = img * 1000;
WriteMetaImage('complung_collapse_lower_mask_scaled',img,hdr);

% Expand Label
[img,hdr]=OpenMetaImage(['Y:/atelectasis_studies/phantoms/complung/' ...
                         'input/complung_expand_label.mhd']);
img = img * 1000;
WriteMetaImage('complung_expand_label_scaled',img,hdr);

% Expand Upper Mask
[img,hdr]=OpenMetaImage(['Y:/atelectasis_studies/phantoms/complung/' ...
                         'input/complung_expand_upper_mask.mhd']);
img = img * 2000;
WriteMetaImage('complung_expand_upper_mask_scaled',img,hdr);

% Expand Lower Mask
[img,hdr]=OpenMetaImage(['Y:/atelectasis_studies/phantoms/complung/' ...
                         'input/complung_expand_lower_mask.mhd']);
img = img * 1000;
WriteMetaImage('complung_expand_lower_mask_scaled',img,hdr);