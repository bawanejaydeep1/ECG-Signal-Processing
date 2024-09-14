function [UWav] = UWav(X, A_UWav, D_UWav, T_UWav, Li)
    L = Li;
    A = A_UWav;
    X = X - T_UWav;
    B = (2 * L) / D_UWav;
    N = 100;
    U1 = 1 / L;
    U2 = 0;
    for i = 1:N
        Harm4 = (((sin((pi / (2 * B)) * (B - (2 * i)))) / (B - (2 * i)) + (sin((pi / (2 * B)) * (B + (2 * i)))) / (B + (2 * i))) * (2 / pi)) * cos((i * pi * X) / L);
        U2 = U2 + Harm4;
    end
    UWav1 = U1 + U2;
    UWav = A * UWav1;
end