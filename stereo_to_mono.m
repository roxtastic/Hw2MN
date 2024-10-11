function mono = stereo_to_mono(signal)
    % Calculez media pe a doua dimensiune (canalele)
    mono = mean(signal, 2);
    
    % Normalizez semnalul mono
    mono = mono / max(abs(mono));
end