//This macro will open all of the single channel z-series images in the input 
//directory, convert these images to a maximum intensity projection, apply the 
//"fire" LUT, and save these images in the tiff format in the output directory.

function action(input, output, filename) {
		open(input + filename);
		run("Z Project...", "projection=[Max Intensity]");
		run("Fire");
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