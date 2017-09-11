function [ ] = DataToClass
%DATATOCLASS Summary of this function goes here
%   Detailed explanation goes here
    
    formatExpert=string('data0724.exp%d%s');
    formatSequence=string('.seq%d');
    for expertNumber=1:4
        for sequenceNumber=1:5
            sequence=char(sprintf(formatSequence,sequenceNumber));
            dataName=char(sprintf(formatExpert,expertNumber,sequence));
            eval(dataName) 
        end
    end
end

