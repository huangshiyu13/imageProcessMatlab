function [ output_args ] = newDir( dirName )
%NEWDIR Summary of this function goes here
%   Detailed explanation goes here
    if ( exist(dirName,'dir') ),
       rmdir(dirName,'s'); 
    end
    mkdir(dirName);


end

