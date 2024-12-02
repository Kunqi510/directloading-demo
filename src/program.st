USING ControlSystem;
USING ControlModule;
PROGRAM MyProgram
    VAR_EXTERNAL
        startButton : BOOL;
        stopButton : BOOL;
        homeSignal : BOOL;
        workSignal : BOOL;
    END_VAR
    
    
    VAR
        workGroup_1 : WorkGroup;
        valve : ValveA;
        // valve : ValveB;
    END_VAR

    VAR_TEMP

    END_VAR
   
    
    workGroup_1.Initialize(valve);
    IF startButton THEN
        workGroup_1.Start();
    END_IF;
    IF stopButton THEN
        workGroup_1.Stop();
    END_IF;
    workGroup_1.WriteCyclic(gohome=>homeSignal,gowork=>workSignal); 
END_PROGRAM
