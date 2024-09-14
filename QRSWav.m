function [QRSWav] = QRSWav(X, A_QRSwav, D_QRSwav, Li)
    L = Li;
    A = A_QRSwav;
    B = (2 * L) / D_QRSwav;
    N = 100;
    QRS1 = (A / (2 * B)) * (2 - B);
    QRS2 = 0;
    for i = 1:N
        Harm = (((2 * B * A) / (i * i * pi * pi)) * (1 - cos((i * pi) / B))) * cos((i * pi * X) / L);
        QRS2 = QRS2 + Harm;
    end
    QRSWav = QRS1 + QRS2;
end