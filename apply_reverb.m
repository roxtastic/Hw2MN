function reverb_signal = apply_reverb(signal, ir)
    % Asigurare ca raspunsul impulsului este mono
    if size(ir, 2) > 1
        ir = stereo_to_mono(ir);
    end

    % Calculez convolutia intre semnal si raspunsul impulsului
    reverb_signal = fftconv(signal, ir);

    % Normalizez semnalul rezultat
    reverb_signal = reverb_signal / max(abs(reverb_signal));
end

function y = fftconv(x, h)
    % Realizez convolutia folosind FFT
    N = length(x) + length(h) - 1;
    X = fft(x, N);
    H = fft(h, N);
    Y = X .* H;
    y = ifft(Y);
end
