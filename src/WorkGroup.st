USING ControlModule;
NAMESPACE ControlSystem

    CLASS PUBLIC WorkGroup IMPLEMENTS IGroup
        VAR PUBLIC

        END_VAR
       
        VAR PRIVATE
            _valve : IValve;
        END_VAR

        METHOD PUBLIC Initialize : BOOL
            VAR_INPUT
                valve : IValve;
            END_VAR
            _valve := valve;

        END_METHOD

        METHOD PUBLIC Start : Int
            _valve.Open();
        END_METHOD
        METHOD PUBLIC Stop : Int
            _valve.Close();
        END_METHOD


        METHOD PUBLIC WriteCyclic
            VAR_OUTPUT
                gohome:BOOL;
                gowork:BOOL;
            END_VAR
            _valve.SetOutput(gohome,gowork);
        END_METHOD
    END_CLASS

END_NAMESPACE
