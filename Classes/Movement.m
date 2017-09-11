classdef Movement
    %MOVEMENT Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        Type % Aurora or Xsens
        Expert
        Position
        Orientation
        Annotations
    end
    
    methods
        function obj = BasicClass(type, expert, position, orientation, annotations)
            obj.Type=type;
            obj.Expert=expert;
            obj.Position=position;
            obj.Orientation=orientation;
            obj.Annotations=annotations;
        end
    end
    
end

