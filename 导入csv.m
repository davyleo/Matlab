%导入数据方式参考：https://blog.csdn.net/zzx2016zzx/article/details/86696313
clc,clear;
s=what;
p=s.path;                       %当前文件夹路径
filename=dir([p,'\','*.csv']);  %拼接路径，读入全部的csv文件的文件名
mydata=cell(1,length(filename));%创建初始文件元胞数组, length(filename)为文件个数
for i=1:length(filename)
%      mydata{i}=xlsread(filename(i).name); %导入xls数据:只适用于数值型数据
        fid = fopen(filename(i).name,'r'); 
        csvdata(i,:)= textscan(fid, '%f %d %d %d %d %d %d %s %s %s %s %s %s %s %s','delimiter', ',');   %%fid>0表示打开成功，f浮点型，d整数型，s字符串型（实现数据以不同形式导入matlab中）
        %读取数据 返回为cell类型  length(filename)x15 cell，共15列数字
        fclose(fid);
end
