//This macro will open all of the single channel z-series images in the input 
//directory, convert these images to inverted grey-scale images, and save these 
//images in the tiff format in the output directory.

function action(input, output, filename) {
		open(input + filename);
		run("Grays");
		run("Invert", "stack");
		saveAs("Tiff", output + filename);
		close();
}

input = //indicate the input directory here;
output = //indicate the output directory here;

setBatchMode(true);
list = getFileList(input);
for (i = 0; i < list.length; i++)
		action(input, output, list[i]);
setBatchMode(false);