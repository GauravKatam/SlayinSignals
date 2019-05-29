function [sampled_signal] = sample(frequencies,f1, sample_freq);
    %interval between the samples
    time_intv = 1/sample_freq;
    
    %time vector
    t = 0:time_intv:10/f1;
    
    sampled_signal = zeros(size(t));
    
    for i = 1:size(sampled_signal, 2)
        sampled_signal(i) = sum(sin(2*pi*t(i)*frequencies));
    end
    
    %drawing the samples
    drawsamples(sampled_signal, t);
end
