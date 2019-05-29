function [] = drawsamples(signal,frequency)
    frequency = frequency*1000;
    t = linspace(5/frequency,10/frequency, size(signal,2));
    hold on;
    stem(t,signal);
    hold off;
end