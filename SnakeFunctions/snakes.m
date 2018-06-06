function [ out,z ] = snakes( I,iter )
I = im2double(I); 
I = imresize(I,[256,256]);%[size(I,1)*3,size(I,2)*3]);
[n,m] = size(I);
x = [n/2,n-1,n/2,1];
y = [1,m/2,m,m/2];
% Make an array with the clicked coordinates
   P=[x(:) y(:)];
% Start Snake Process
   Options=struct;
   Options.Verbose=true;
   Options.Iterations=iter;
   [O,J]=SnakeNorm(I,P,Options);
% Show the result
     I3 = I.*J;
     I3 = I3 +(1-J);
%      imshow(I3);
     minr = min(O(:,1));
     maxr = max(O(:,1));
     maxc = max(O(:,2));
     minc = min(O(:,2));
     lr = maxr-minr;
     lc = maxc - minc;
     I2 = imcrop(I3,[minc,minr,lc,lr]);
     out = I2;
     z = [minr,minc,maxr,maxc];

end

