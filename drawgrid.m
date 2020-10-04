%%% Draw grid with the specified boxwidth on the image
function [] = drawgrid(imgfile, boxwidth)
    %%% Read imagefile as grayscale image
    img = imread(imgfile);
    gridimg = img;
    [m,n,p] = size(img);
    
    %%% Construct (magenta) grid lines
    for i=1:boxwidth:m
        for j=1:n
            for k=1:p
                gridimg(i,j,k) = 255;
            end
            gridimg(i,j,2) = 0;
        end
    end
    for j=1:boxwidth:n
        for i=1:m
            for k=1:p
                gridimg(i,j,k) = 255;
            end
            gridimg(i,j,2) = 0;
        end
    end
    imshow(gridimg);
    %%% Save image, `imgfile` must be a character array
    imwrite(gridimg, "plots/"+imgfile(5)+"-grid-"+num2str(boxwidth)+".png"); 
end