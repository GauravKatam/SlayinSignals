function [signal, frequencies, sampled_signal] = singen(f1,f2, n, sample_freq)
    rng('shuffle');
    f1 = f1*1000;
    f2 = f2*1000;
    sample_freq = sample_freq*1000;
    
    frequencies = ((f2-f1)*rand([n,1])) + f1;
    t = linspace(0,10/f1,2000);
    
    
    signal = 0;
    for i = 1:n
        signal = signal + sin(2*pi*frequencies(i)*t);
    end
    
    drawsignal(signal, f1);
    sampled_signal  = sample(frequencies, f1, sample_freq);
end
