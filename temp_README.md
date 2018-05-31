# ensphere

Add XMP info for PanoSphere in the pictures.

## Requirements

Install `exempi` in advance.

On MacOS,

    brew install exempi

## Usage

%%usage%%

## Example

To add the default metadata for a equirectangular JPEG image.

    ensphere equirectangular.jpg
    
For a cropped image, you also have to specify the original image size with `-s` option.

    ensphere -s 'FullPanoWidthPixels=8000,FullPanoHeightPixels=4000,CroppedAreaLeftPixels=0,CroppedAreaTopPixels=0' partial.jpg
    
