FileWritePath = '.\Database\Snakes_Pie\s';
iter = 1000;
counter = 1;
h = waitbar(0,'Initializing waitbar...');
for c = 1:30
   mkdir(strcat(FileWritePath,num2str(c)));
   for i=1:13
          img = imcrop(imread(strcat('.\Database\Pie Mixed\s',num2str(c),'\',num2str(i),'.jpg')),[9 12 631 474]);
          img = im2double(rgb2gray(img));
          perc = ((c-1)*13+i)/390;
          waitbar(perc,h,sprintf('%d of 390 = %3.2f%%',((c-1)*13+i),perc.*100));
          [I2,temp] = snakes(img,iter);
          z(:,(c-1)*13+i) = temp;
          imwrite(I2,strcat(FileWritePath,num2str(c),'\',num2str(i),'.jpg'));
          
         
    end
end
fileID = fopen('positionCMU.txt','w');
z = round(z);
fprintf(fileID,'%d ',[z(1,:),z(2,:),z(3,:),z(4,:)]);
fclose(fileID);
toc