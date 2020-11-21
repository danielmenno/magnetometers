%% Initialisation %%

fileid = fopen('config.txt','r');
text = fgetl(fileid); i = 1; 
while ~strcmp(text,'end')
str = strsplit(text,' = ');
str2 = string(str);
bool = false;
for j = 1:length(str2)
    if(~isnan(str2double(str2(j))))
        bool = true;
    end
end
if(bool)
data_read(i,:) = str2;
i = i+1;
end
text = fgetl(fileid);
end
fclose(fileid);