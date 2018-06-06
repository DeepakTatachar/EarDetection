function [ result ] = svmEvaluate( svmStruct,I )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

I = imresize(I,[100 100]);
I = histeq(I);
[featureVector, hogVisualization] = extractHOGFeatures(I);
Group = svmclassify(svmStruct,featureVector);

if(Group == 2)
    result = 0;
else
    result = 1;
end

end

