USING ControlModule;
NAMESPACE ControlSystem
    
    INTERFACE IGroup 

    METHOD  Initialize : BOOL
        VAR_INPUT
            valve : IValve;
        END_VAR
      
    END_METHOD
    METHOD  Start : Int
       
    END_METHOD
   
    METHOD  Stop : Int
        
    END_METHOD

    METHOD  WriteCyclic
        VAR_OUTPUT
            gohome:BOOL;
            gowork:BOOL;
        END_VAR
        
    END_METHOD
    END_INTERFACE
END_NAMESPACE