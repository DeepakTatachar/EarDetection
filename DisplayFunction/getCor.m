function [ posi,rcor ] = getCor(file,i,j,x)
rcor = (i-1)*13+j;

rrr = round(file(rcor,1)*475/256);
ccc = round(file(rcor,2)*632/256);
posi(2)= ((x(2)/3)*475/256)+rrr;
posi(1)= ((x(1)/3)*632/256)+ccc;
posi(3) = x(3);
posi(4) = x(4);

end

