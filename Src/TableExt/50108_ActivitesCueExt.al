tableextension 60118 Activities_Cue_Ext extends "Activities Cue"
{
    fields
    {
        field(60101; "Release Sales Orders"; Integer)
        {
            CalcFormula = count("Sales Header" where("Document Type" = filter(Order), Status = filter(Released)));
            Caption = 'Release Sales Order';
            FieldClass = FlowField;
        }
        field(60102; "Open Sales Orders"; Integer)
        {
            CalcFormula = count("Sales Header" where("Document Type" = filter(Order), Status = filter(Open)));
            Caption = 'Open Sales Order';
            FieldClass = FlowField;
            
        }
    }
}