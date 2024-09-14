% CLEAR COMMAND WINDOW, CLOSE ALL FIGURES, AND CLEAR WORKSPACE
clc;
close all;
clear All;

% GENERATING TIME VECTOR FROM 1 TO 50 SECONDS WITH A STEP SIZE OF 0.005 SECONDS
T = 1:0.005:50;
Li = 30/72; %(HEART PERIOD)

% SPLITTING TIME VECTOR INTO FIVE INTERVALS
T1 = T(T <= 10);
T2 = T((T > 10) & (T <= 20));
T3 = T((T > 20) & (T <= 30));
T4 = T((T > 30) & (T <= 40));
T5 = T(T > 40);

% WAVE PARAMETERS FOR THE FIRST INTERVAL (T1)
APWav1 = 0.25;
DPWav1 = 0.09;
TPWav1 = 0.16;

AQWav1 = 0.025;
DQWav1 = 0.066;
TQWav1 = 0.166;

AQRSWav1 = 1.6;
DQRSWav1 = 0.11;

ASWav1 = 0.25;
DSWav1 = 0.066;
TSWav1 = 0.09;

ATWav1 = 0.35;
DTWav1 = 0.142;
TTWav1 = 0.2;

AUWav1 = 0.035;
DUWav1 = 0.0476;
TUWav1 = 0.433;

% WAVE PARAMETERS FOR THE FIRST INTERVAL (T2)
APWav2 = 0.2;
DPWav2 = 0.1;
TPWav2 = 0.25;

AQWav2 = 0.02;
DQWav2 = 0.08;
TQWav2 = 0.14;

AQRSWav2 = 1.5;
DQRSWav2 = 0.1;

ASWav2 = 0.2;
DSWav2 = 0.1;
TSWav2 = 0.12;

ATWav2 = 0.3;
DTWav2 = 0.15;
TTWav2 = 0.3;

AUWav2 = 0.03;
DUWav2 = 0.04;
TUWav2 = 0.5;

% WAVE PARAMETERS FOR THE FIRST INTERVAL (T3)
APWav3 = 0.25;
DPWav3 = 0.3;
TPWav3 = 0.33;

AQWav3 = 0.05;
DQWav3 = 0.2;
TQWav3 = 0.18;

AQRSWav3 = 1.6;
DQRSWav3 = 0.14;

ASWav3 = 0.2;
DSWav3 = 0.18;
TSWav3 = 0.17;

ATWav3 = 0.3;
DTWav3 = 0.25;
TTWav3 = 0.48;

AUWav3 = 0.04;
DUWav3 = 0.05;
TUWav3 = 0.63;

% WAVE PARAMETERS FOR THE FIRST INTERVAL (T4)
APWav4 = 0.22;
DPWav4 = 0.25;
TPWav4 = 0.40;

AQWav4 = 0.03;
DQWav4 = 0.18;
TQWav4 = 0.15;

AQRSWav4 = 1.4;
DQRSWav4 = 0.12;

ASWav4 = 0.12;
DSWav4 = 0.16;
TSWav4 = 0.13;

ATWav4 = 0.22;
DTWav4 = 0.27;
TTWav4 = 0.45;

AUWav4 = 0.015;
DUWav4 = 0.06;
TUWav4 = 0.58;

% WAVE PARAMETERS FOR THE FIRST INTERVAL (T5)
APWav5 = 0.28;
DPWav5 = 0.35;
TPWav5 = 0.48;

AQWav5 = 0.065;
DQWav5 = 0.25;
TQWav5 = 0.16;

AQRSWav5 = 1.8;
DQRSWav5 = 0.16;

ASWav5 = 0.22;
DSWav5 = 0.25;
TSWav5 = 0.15;

ATWav5 = 0.35;
DTWav5 = 0.32;
TTWav5 = 0.50;

AUWav5 = 0.05;
DUWav5 = 0.08;
TUWav5 = 0.63;

% CALCULATING WAVES FOR FIRST INTERVAL(T1)
PWav1 = PWav(T1, APWav1, DPWav1, TPWav1, Li);
QWav1 = QWav(T1, AQWav1, DQWav1, TQWav1, Li);
QRSWav1 = QRSWav(T1, AQRSWav1, DQRSWav1, Li);
SWav1 = SWav(T1, ASWav1, DSWav1, TSWav1, Li);
TWav1 = TWav(T1, ATWav1, DTWav1, TTWav1, Li);
UWav1 = UWav(T1, AUWav1, DUWav1, TUWav1, Li);

% CALCULATING WAVES FOR FIRST INTERVAL(T2)
PWav2 = PWav(T2, APWav2, DPWav2, TPWav2, Li);
QWav2 = QWav(T2, AQWav2, DQWav2, TQWav2, Li);
QRSWav2 = QRSWav(T2, AQRSWav2, DQRSWav2, Li);
SWav2 = SWav(T2, ASWav2, DSWav2, TSWav2, Li);
TWav2 = TWav(T2, ATWav2, DTWav2, TTWav2, Li);
UWav2 = UWav(T2, AUWav2, DUWav2, TUWav2, Li);

% CALCULATING WAVES FOR FIRST INTERVAL(T3)
PWav3 = PWav(T3, APWav3, DPWav3, TPWav3, Li);
QWav3 = QWav(T3, AQWav3, DQWav3, TQWav3, Li);
QRSWav3 = QRSWav(T3, AQRSWav3, DQRSWav3, Li);
SWav3 = SWav(T3, ASWav3, DSWav3, TSWav3, Li);
TWav3 = TWav(T3, ATWav3, DTWav3, TTWav3, Li);
UWav3 = UWav(T3, AUWav3, DUWav3, TUWav3, Li);

% CALCULATING WAVES FOR FIRST INTERVAL(T4)
PWav4 = PWav(T4, APWav4, DPWav4, TPWav4, Li);
QWav4 = QWav(T4, AQWav4, DQWav4, TQWav4, Li);
QRSWav4 = QRSWav(T4, AQRSWav4, DQRSWav4, Li);
SWav4 = SWav(T4, ASWav4, DSWav4, TSWav4, Li);
TWav4 = TWav(T4, ATWav4, DTWav4, TTWav4, Li);
UWav4 = UWav(T4, AUWav4, DUWav4, TUWav4, Li);

% CALCULATING WAVES FOR FIRST INTERVAL(T5)
PWav5 = PWav(T5, APWav5, DPWav5, TPWav5, Li);
QWav5 = QWav(T5, AQWav5, DQWav5, TQWav5, Li);
QRSWav5 = QRSWav(T5, AQRSWav5, DQRSWav5, Li);
SWav5 = SWav(T5, ASWav5, DSWav5, TSWav5, Li);
TWav5 = TWav(T5, ATWav5, DTWav5, TTWav5, Li);
UWav5 = UWav(T5, AUWav5, DUWav5, TUWav5, Li);

% COMBINING WAVES FOR EACH INTERVAL
ECG1 = PWav1 + QRSWav1 + TWav1 + SWav1 + QWav1 + UWav1;
ECG2 = PWav2 + QRSWav2 + TWav2 + SWav2 + QWav2 + UWav2;
ECG3 = PWav3 + QRSWav3 + TWav3 + SWav3 + QWav3 + UWav3;
ECG4 = PWav4 + QRSWav4 + TWav4 + SWav4 + QWav4 + UWav4;
ECG5 = PWav5 + QRSWav5 + TWav5 + SWav5 + QWav5 + UWav5;

% COMBINING ALL INTERVALS
CombinedWaves = [ECG1, ECG2, ECG3, ECG4, ECG5];

% SCALING THE COMBINED WAVES TO REPRESENT ECG SIGNAL
ECG = 100 * CombinedWaves;

% ADDING GAUSSIAN NOISE TO THE ECG SIGNAL
NoiseAmplitude = 10;
Noise = NoiseAmplitude * randn(size(ECG));
ECGWithNoise = ECG + Noise;

% DEFINING PARAMETERS FOR BANDPASS FILTERING
Fs = 1 / (T(2) - T(1)); 
LowCut = 0.5;
HighCut = 50;
Nyquist = 0.5 * Fs;
Low = LowCut / Nyquist;
High = HighCut / Nyquist;

% DESIGNING BANDPASS FILTER
[B_Band, A_Band] = butter(1, [Low, High], 'bandpass');

% APPLYING BANDPASS FILTER TO REMOVE NOISE
FilteredECG = filtfilt(B_Band, A_Band, ECGWithNoise);

% FINDING R-PEAKS IN THE FILTERED ECG SIGNAL
[~, RLocs] = findpeaks(FilteredECG, 'MinPeakHeight', 75);
NumBeats = length(RLocs);
fprintf('Number of beats in signal: %d\n', NumBeats);

% CALCULATING AVERAGE HEART RATE
HeartRate = 60 / mean(diff(T(RLocs)));
fprintf('Average Heart Rate: %.2f BPM\n', HeartRate);

% PLOTTING ORIGINAL ECG SIGNAL
figure;
plot(T, ECG);
title('Original ECG Signal');
xlabel('Time (seconds)');
ylabel('Amplitude');

% PLOTTING ECG SIGNAL WITH ADDED NOISE
figure;
plot(T, ECGWithNoise);
title('ECG Signal With Noise');
xlabel('Time (seconds)');
ylabel('Amplitude');

% PLOTTING FILTERED ECG SIGNAL WITH R-PEAKS MARKED
figure;
plot(T, FilteredECG);
hold on;
plot(T(RLocs), FilteredECG(RLocs), 'rv', 'MarkerSize', 10);
hold off;
title('Filtered ECG Signal');
xlabel('Time (seconds)');
ylabel('Amplitude');

% NORMALIZING THE FILTERED ECG SIGNAL
NormalizedSignal = (FilteredECG - min(FilteredECG)) / (max(FilteredECG) - min(FilteredECG)) * 2 - 1;
figure;
plot(T, NormalizedSignal);
title('Normalized ECG Signal');
xlabel('Time (seconds)');
ylabel('Amplitude');