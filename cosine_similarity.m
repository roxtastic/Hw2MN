function similarity = cosine_similarity(A, B)
    % Calculez similaritatea cosinus intre doi vectori A si B
    similarity = dot(A, B) / (norm(A) * norm(B));
end
