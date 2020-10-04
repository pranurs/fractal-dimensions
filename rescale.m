%%% Utility function to resize an image
%%% Overwrites the original image file
function [] = rescale(imgfile, scale)
    img = imread(imgfile);
    img = imresize(img, scale);
    imwrite(img, imgfile);
    disp(size(img));
end