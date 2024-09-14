function [SWav] = SWav(X, A_SWav, D_SWav, T_SWav, Li)
    L = Li;
    X = X - T_SWav;
    A = A_SWav;
    B = (2 * L) / D_SWav;
    N = 100;
    S1 = (A / (2 * B)) * (2 - B);
    S2 = 0;
    for i = 1:N
        Harm3 = (((2 * B * A) / (i * i * pi * pi)) * (1 - cos((i * pi) / B))) * cos((i * pi * X) / L);
        S2 = S2 + Harm3;
    end
    SWav = -1 * (S1 + S2);
end