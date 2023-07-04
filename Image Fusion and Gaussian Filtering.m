% Load the first image
img1 = imread('images\img1.jpg');

% Load the second image
img2 = imread('images\img2.jpeg');

% Get the size of the images
[x, y, z] = size(img1);

% Display the left half of the first image
imshow(img1(:, 1:y/2, :))
title('Left Half of Image 1');
figure;

% Display the right half of the second image
imshow(img2(:, y/2:end, :))
title('Right Half of Image 2');
figure;

% Combine the two halves together
res1 = uint8(zeros(x, y, z));
res1(:, 1:y/2, :) = img1(:, 1:y/2, :);
res1(:, y/2:end, :) = img2(:, y/2:end, :);
imshow(res1)
title('Combining Two Halves');
figure;

% Create a final image by selectively combining pixels from the two images
res = uint8(zeros(x, y, z));
res(:, 1:380, :) = img1(:, 1:380, :);
res(:, 858:end, :) = img2(:, 858:end, :);
res(:, 380:2:858, :) = img1(:, 380:2:858, :);
res(:, 381:2:859, :) = img2(:, 380:2:858, :);
imshow(res);
title('Final Image without Gaussian Filter');
figure;

% Apply Gaussian filtering to the final image
res = imgaussfilt3(res, 1);
imshow(res)
title('Final Image after Gaussian Filtering');
