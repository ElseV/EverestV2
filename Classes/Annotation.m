classdef Annotation
    %POSITION Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        Timestamp
        Label
        ID
    end
    
    methods
        function obj = BasicClass(timestamp,label,id)
            obj.Timestamp=timestamp;
            obj.Label=label;
            obj.ID=id;
        end
    end
    
end

