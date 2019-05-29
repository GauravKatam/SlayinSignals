function [] = drawsignal(signal,f1,f2)
    f1 = f1*1000;
    f2 = f2*1000;
    t = linspace(5/f2,5/f1,size(signal,2));
    plot(t,signal);
    xlabel("Time(in s)");
    ylabel("Amplitude");
end