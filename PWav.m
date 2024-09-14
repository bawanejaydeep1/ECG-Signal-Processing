function [PWav] = PWav(X, A_Pwav, D_Pwav, T_Pwav, Li)
    L = Li;
    A = A_Pwav;
    X = X + T_Pwav;
    B = (2 * L) / D_Pwav;
    N = 100;
    P1 = 1 / L;
    P2 = 0;
    for i = 1:N
        Harm1 = (((sin((pi / (2 * B)) * (B - (2 * i)))) / (B - (2 * i)) + (sin((pi / (2 * B)) * (B + (2 * i)))) / (B + (2 * i))) * (2 / pi)) * cos((i * pi * X) / L);
        P2 = P2 + Harm1;
    end
    PWav1 = P1 + P2;
    PWav = A * PWav1;
end

