function [] = CochlearImplant1(soundFile)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

info = audioinfo(soundFile);
[outputSound,frequency] = audioread(soundFile);
soundSize = size(outputSound,2);
if soundSize == 2
    outputSound = outputSound(:);
end
if frequency > 16000
    [P,Q] = rat(16000/frequency);
    frequency = resample(frequency,P,Q);
end 
%outputSoundInfo = audioinfo(outputSound);
outputSoundInfo.SampleRate = frequency;
disp(x);
end

