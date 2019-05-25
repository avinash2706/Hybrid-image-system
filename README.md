# Hybrid image system

Given two images, the output will be a hybrid image.

- Initially image resolutions doubled and converted to grayscale.
- Gaussian filters of different values applied for controlling how much high frequency to remove
from first image and how much low frequency to remove from second image (for low pass and high pass filters)
- This resultant image is RGB hybrid image of both images.
