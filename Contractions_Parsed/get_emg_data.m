function data = get_emg_data(filePath)
    %load first channel
    channel = dlmread([filePath,'/','channel_1.txt']);
    %ignore time stamps
    channel = channel(:,2);
    
    data = zeros(size(channel,1),8);
    data(:,1) = channel;
    for i = 2:8
        channel = dlmread([filePath,'/','channel_',num2str(i),'.txt']);
        channel = channel(:,2);
        data(:,i) = channel; 
    end
end

