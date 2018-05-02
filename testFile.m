net(0.1, 7, 10, 0, 0, false, 4) % first test

%% 

%first reference
figure()
net(0, 10, 70, 0.005, 0, false, 4) % The cost on the training data is 2.303441

%% higher LR
figure()
net(0, 10, 70, 0.5, 0, false, 4) % The cost on the training data is 1.901006


%% 
% W/O momentum, train cost = 1.598844, LR = 1
% W/ momentum, train cost = 1.083429, LR = 0.2

learningRates = [0.002, 0.01, 0.05, 0.2, 1.0, 5.0, 20.0];
close all
for lr = 0.2%learningRates
    figure()
    disp('##################')
    disp('####### Learning rate ###########')
    disp(lr )
    disp('##################')
    net(0, 10, 70, lr, 0.9, false, 4)
end


%% 2.4a
net(0, 200, 1000, 0.35, 0.9, false, 100)

%% 2.4b
net(0, 200, 1000, 0.35, 0.9, true, 100)

%% 2.4c

WD_array = [10,5,1,0.0001,0.001];
clc
close all
for wd = WD_array
    figure()
    disp('##################')
    disp('####### Weight deacay ###########')
    disp(wd )
    disp('##################')
    net(wd, 200, 1000, 0.35, 0.9, false, 100)
end

%% 2.4d
clc
close all

hd_array = [10, 30, 100, 130, 200];
for hd = hd_array
    figure()
    disp('##################')
    disp('####### Hidden units ###########')
    disp(hd )
    disp('##################')
    net(0, hd, 1000, 0.35, 0.9, false, 100)
end

%% 2.4e


hd_array = [18, 37, 83, 113, 236];
for hd = hd_array
    figure()
    disp('##################')
    disp('####### Hidden units ###########')
    disp(hd )
    disp('##################')
    net(0, hd, 1000, 0.35, 0.9, true, 100)
end

%% 2.4f

net(0.001, 37, 1000, 0.35, 0.9, true, 100)

