[img,hdr]=OpenMetaImage(['Y:/atelectasis_studies/phantoms/data_creation'...
                         '/lung_computational/deformed_label.mhd']);

maskUpper = zeros(size(img));
maskLower = zeros(size(img));

maskUpper(img==2)=1;
maskLower(img==1)=1;

WriteMetaImage('complung_collapse_upper_mask',maskUpper,hdr);
WriteMetaImage('complung_collapse_lower_mask',maskLower,hdr);
