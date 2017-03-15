function viewChannels(filePath)
    %Input = Path to folder containing channel data
    figure;
    for i = 1:8
        %load data
        data = dlmread([filePath,'/','channel_',num2str(i),'.txt']);
        
        %get statistics of data
        m=mean(data(:,2));
        sd=sqrt(var(data(:,2)));
        
        %remove outliers
        for j = 1:size(data,1)
            x = data(j,2);
            if(abs(x-m)>2*sd)
                data(j,2) = m;
            end
        end
        
        subplot(1,8,i);
        plot(data(:,2));
        xlabel('time');
        ylabel('emg val');
        title(['channel_',num2str(i)]);
    end
end

