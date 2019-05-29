function [sampled_signal] = sample(signal,frequency);
    v = zeros(1,size(signal,2));
    frequency = frequency*1000;
    for i = 1:1/frequency:size(v,2)
        v(round(i)) = 1; 
    end
    sampled_signal = signal.*v;
end