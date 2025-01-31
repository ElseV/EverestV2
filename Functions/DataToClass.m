function [results] = DataToClass(rawdata, previous)
%DATATOCLASS Summary of this function goes here
%   Detailed explanation goes here
    results=[];
    expertNames = fieldnames(rawdata);
    data1=data0724.exp1.seq1.xsenspos;
    for i = 1:numel(expertNames)
      
      expertName = expertNames(i);
      sequences = rawdata.(expertNames{i});
      sequenceNames = fieldnames(sequences);
      
      for j = 1:numel(sequenceNames)
          sequenceName = sequenceNames(j);
          data = sequences.(sequenceNames{j});  
          dataNames = fieldnames(data);
          exists = exist(previous);
          
          if exists == 0
             results=[results, DataToClass(rawdata, data)]
          else
              result = [];
              for k = 1:numel(dataNames)
                 [dist,ix,iy,sync_error,accuracy,sym_error]=test_dtw('Xsens_Pos'...
                     ,data,previous);
                 result(i,1)=dist;
                 result(i,2)=sync_error;
                 result(i,3)=sym_error;
                 result(i,4)=accuracy;
              end
             results = [results, result];
         end
          
          % go to next expert, not next sequence
          break
          
      end

    end
    
    %this is where we set previous expert

%     movements=[];
%     for expert=each(rawdata)
%         for sequence=each(expert)
%             for data=each(sequence)
%                 movements=data
%                 type=string(xsens)
%                 expertClass=Expert(expert)
%                 positionClass=Position()
%                 orientationClass=Orientation()
%                 annotations=[]
%  
%                 movement=Movement(type, expertClass, positionClass, ...
%                     orientationClass, annotations);
%                 movements=[movements, movement];
%              end
%         end
%     end
end
