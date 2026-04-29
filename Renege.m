classdef Renege < Event
    % Renege Subclass of Event that represents the departure of a
    % Customer.

    properties
        Id;
        
    end
    methods
        function obj = Renege(Id, RenegeTime)
            % Renege - Construct a renege event from a time and
            % id.
            arguments
                Id = 0;
                RenegeTime = 0.0;
            end
            
            % MATLAB-ism: This incantation is how to invoke the superclass
            % constructor.
            obj = obj@Event(RenegeTime);

            obj.Id = Id;
        end
        function varargout = visit(obj, other)

            % MATLAB-ism: This incantation means whatever is returned by
            % the call to handle_departure is returned by this visit
            % method.
            [varargout{1:nargout}] = handle_renege(other, obj);
        end
    end
end