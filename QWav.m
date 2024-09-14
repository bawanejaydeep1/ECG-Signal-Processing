function [QWav] = QWav(X, A_Qwav, D_Qwav, T_Qwav, Li)
    L = Li;
    X = X + T_Qwav;
    A = A_Qwav;
    B = (2 * L) / D_Qwav;
    N = 100;
    Q1 = (A / (2 * B)) * (2 - B);
    Q2 = 0;
    for i = 1:N
        Harm5 = (((2 * B * A) / (i * i * pi * pi)) * (1 - cos((i * pi) / B))) * cos((i * pi * X) / L);
        Q2 = Q2 + Harm5;
    end
    QWav = -1 * (Q1 + Q2);
end