clear;  
clc;  
n=307200;%640*480
mat = imread('digital9_640x480.bmp');%��ȡ.jpg�ļ�  
fid=fopen('digital9.mif','w');%�򿪴�д���.mif�ļ�  
fprintf(fid,'WIDTH=1;\n');%д��洢λ��8λ  
fprintf(fid,'DEPTH=307200;\n');%д��洢���307200
fprintf(fid,'ADDRESS_RADIX=UNS;\n');%д���ַ����Ϊ�޷�������  
fprintf(fid,'DATA_RADIX=HEX;');%д����������Ϊ16����  
fprintf(fid,'CONTENT BEGIN\n');%��ʼ����  
for i=0:n-1  
    x = mod(i,640)+1;  
    y = fix(i/640)+1;  
    k = mat(y,x);  
fprintf(fid,'\t%d:%x;\n',i,k);  
end  
fprintf(fid,'END;\n');  
fclose(fid);%�ر��ļ�  