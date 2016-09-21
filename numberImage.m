clear all;
cd = 'motor';
imageFiles = dir(fullfile(cd,'*.jpg'));
len = size(imageFiles,1);
data = [cd 'numed/'];
cd = [cd '/'];
outDir = data;
if (exist(outDir,'dir')),
    rmdir(outDir,'s'); 
end
    mkdir(outDir);

num = 0;
for i = 1:len
        fileName = imageFiles(i).name;
        in = [cd,fileName];
        try
        I = imread(in);
        catch
            continue;
        end
        num = num+1;
        out= [data,num2str(num),'.jpg'];
        copyfile(in,out);
end
num