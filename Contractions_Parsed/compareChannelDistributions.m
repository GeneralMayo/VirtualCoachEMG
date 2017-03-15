function compareChannelDistributions(data1,data2)
    %data1 = matrix of channels (each col = data from a channel)
    figure;
    for cIdx = 1:8
        pd1 = fitdist(data1(:,cIdx),'Normal');
        pd2 = fitdist(data2(:,cIdx),'Normal');
        
        m1 = mean(data1(:,cIdx));
        m2 = mean(data2(:,cIdx));
        std1 = sqrt(var(data1(:,cIdx)));
        std2 = sqrt(var(data2(:,cIdx)));
        
        %3 standard deviations
        x1range = (m1-3*std1):.001:(m1+3*std1);
        x2range = (m2-3*std2):.001:(m2+3*std2);
        
        y1 = pdf(pd1,x1range);
        y2 = pdf(pd2,x2range);
        
        subplot(1,8,cIdx);
        plot(x1range,y1,'b',x2range,y2,'r');
        xlabel('emg val')
        title(['channel_',num2str(cIdx)]);
    end
end