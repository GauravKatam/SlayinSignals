function [] = drawsignal(signal,f1)
    t = linspace(0,10/f1,size(signal,2));
    figure(1);
    hold on
    plot(t,signal);
    xlabel('Time(in s)');
    ylabel('Amplitude');
    title('Sampling');
end
