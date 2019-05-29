function [signal, frequencies] = singen(f1,f2,n)
    f1 = f1*1000;
    f2 = f2*1000;
    frequencies = ((f2-f1)*rand([n,1])) + f1;
    t = linspace(10/f1,10/f2,500);
    signal = 0;
    for i = 1:n
        signal = signal + sin(2*pi*frequencies(i)*t);
    end
    frequencies = frequencies/1000;
    return
end