function [TWav] = TWav(X, A_TWav, D_TWav, T_TWav, Li)
    L = Li;
    A = A_TWav;
    X = X - T_TWav - 0.045;
    B = (2 * L) / D_TWav;
    N = 100;
    T1 = 1 / L;
    T2 = 0;
    for i = 1:N
        Harm2 = (((sin((pi / (2 * B)) * (B - (2 * i)))) / (B - (2 * i)) + (sin((pi / (2 * B)) * (B + (2 * i)))) / (B + (2 * i))) * (2 / pi)) * cos((i * pi * X) / L);
        T2 = T2 + Harm2;
    end
    TWav1 = T1 + T2;
    TWav = A * TWav1;
end



