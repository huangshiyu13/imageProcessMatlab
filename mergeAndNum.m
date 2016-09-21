clear all;
cd1 = 'pedestriannumed/';
cd2 = 'pedestriannumedJpeg/';
imageFiles1 = dir(fullfile(cd1,'*.jpg'));
len = size(imageFiles1,1);
outDir = 'pedestrianMerged/';
cd1 = [cd1 '/'];
if (exist(outDir,'dir')),
    rmdir(outDir,'s'); 
end
    mkdir(outDir);

num = 0;
for i = 1:len
        fileName = imageFiles1(i).name;
        in = [cd1,fileName];
        try
        I = imread(in);
        catch
            continue;
        end
        num = num+1;
        out= [outDir,num2str(num),'.jpg'];
        copyfile(in,out);
end


imageFiles2 = dir(fullfile(cd2,'*.jpg'));
len = size(imageFiles2,1);

for i = 1:len
        fileName = imageFiles2(i).name;
        in = [cd2 '/' fileName];
        
        try
        I = imread(in);
        catch
            continue;
        end
        num = num+1;
        out= [outDir '/' num2str(num) '.jpg'];
        copyfile(in,out);
end

num