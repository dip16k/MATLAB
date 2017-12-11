x = [1 2 3]
y = [0 0 1 2 3]

[z lag] = xcorr(x,y)
[a b] = max((lag))
plot(lag,z),grid;
%[a n] = sigshift(y,length(y),2)

%%
    load noisysignals s1 s2;  % load sensor signals
    [acor,lag] = xcorr(s2,s1)
    [~,I] = max(abs(acor))
    timeDiff = lag(I)         % sensor 2 leads sensor 1 by 350 samples
    subplot(311); plot(s1); title('s1');
    subplot(312); plot(s2); title('s2');
    subplot(313); plot(lag,acor);
    title('Cross-correlation between s1 and s2')
    %%
x = [1 1 1 2 3 0 1 0]
y = [5 1 2 3]
[x1 y1] = alignsignals(x,y)
