%Read the image
img = imread('image.jpeg');
subplot(1, 2, 1);
imshow(img);

%Get the size (row and columns) for the img
[rows, columns, numberOfColorChannels] = size(img)
rowsForOneImage = rows/3

%Wrire code to split the image into three equal parts and store them in B, G, R channels

fprintf('Cropping B from row %d to %d.\n', 1, rowsForOneImage);
B=imcrop(img,[1, 1, columns - 1, rowsForOneImage - 1]);

fprintf('Cropping G from row %d to %d.\n', 1*rowsForOneImage + 1, 1*rowsForOneImage + rowsForOneImage);
G=imcrop(img,[1, 1*rowsForOneImage + 1, columns - 1, rowsForOneImage - 1]);

fprintf('Cropping R from row %d to %d.\n', 2*rowsForOneImage + 1, 2*rowsForOneImage + rowsForOneImage);
R=imcrop(img,[1, 2*rowsForOneImage + 1, columns - 1, rowsForOneImage - 1]);

%concatenate R,G,B channels and assign the RGB image to ColorImg variable

ColorImg(:,:,1) = R;
ColorImg(:,:,2) = G;
ColorImg(:,:,3) = B;
subplot(1, 2, 2);
imshow(ColorImg)
