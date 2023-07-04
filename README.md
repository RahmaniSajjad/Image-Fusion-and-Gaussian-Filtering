# Image Fusion and Gaussian Filtering

This repository contains MATLAB code for merging two images, applying image fusion techniques to combine selected regions, and performing Gaussian filtering for noise reduction. Enhance image processing and achieve visually appealing results with selective merging and smoothing.

## Code Example

```matlab
img1 = imread('images\img1.jpg');
img2 = imread('images\img2.jpeg');
[x, y, z] = size(img1);

imshow(img1(:, 1:y/2, :))
title('Left Half of Image 1');
figure;

imshow(img2(:, y/2:end, :))
title('Right Half of Image 2');
figure;

res1 = uint8(zeros(x, y, z));
res1(:, 1:y/2, :) = img1(:, 1:y/2, :);
res1(:, y/2:end, :) = img2(:, y/2:end, :);
imshow(res1)
title('Combining Two Halves');
figure;

res = uint8(zeros(x, y, z));
res(:, 1:380, :) = img1(:, 1:380, :);
res(:, 858:end, :) = img2(:, 858:end, :);
res(:, 380:2:858, :) = img1(:, 380:2:858, :);
res(:, 381:2:859, :) = img2(:, 380:2:858, :);
imshow(res);
title('Final Image without Gaussian Filter');
figure;

res = imgaussfilt3(res, 1);
imshow(res)
title('Final Image after Gaussian Filtering');

```

## Example Results

### Left Half of Image 1
![Left Half of Image 1](images/result/Left%20Half%20of%20Image%201.jpg)


### Right Half of Image 2
![Right Half of Image 2](images/result/Right%20Half%20of%20Image%202.jpg)


### Combining Two Halves
![Combining Two Halves](images/result/Combining%20Two%20Halves.jpg)


### Final Image without Gaussian Filter
![Final Image without Gaussian Filter](images/result/Final%20Image%20without%20Gaussian%20Filter.jpg)


### Final Image after Gaussian Filtering
![Final Image after Gaussian Filtering](images/result/Final%20Image%20after%20Gaussian%20Filtering.jpg)


## How to Use

1. Clone the repository.
2. Open MATLAB and navigate to the repository folder.
3. Place your desired images in the 'images' folder or update the file paths in the MATLAB code.
4. Run the MATLAB script.
5. View the generated images and analyze the fusion and filtering results.

Feel free to experiment with different images and adjust the code parameters to explore various image fusion and Gaussian filtering effects.

## License

This project is licensed under the [MIT License](LICENSE).
