function [ svmStructUpper ] = svmTrain(  )
data = zeros(718,4356);
group = zeros(718,1);
for k = 1:404
    I = imread(strcat('Database\Ear Pos\2 (',num2str(k),').jpg'));
    I = histeq(I);
    [featureVector, hogVisualization] = extractHOGFeatures(I);
    data(k,:) = featureVector;
    group(k) = 1;
end

for k = 1:314
    I = imread(strcat('Database\Ear Neg\2 (',num2str(k),').jpg'));
    I = histeq(I);
    [featureVector, hogVisualization] = extractHOGFeatures(I);
    data(404+k,:) = featureVector;
    group(404+k) = 2;
end




svmStructUpper = svmtrain(data,group);


end

