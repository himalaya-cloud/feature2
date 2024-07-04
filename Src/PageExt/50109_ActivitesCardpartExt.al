pageextension 60119 Activites_Cardpart_Ext extends "O365 Activities"
{
    layout
    {
        addafter("Ongoing Sales Quotes")
        {
            field("Release Sales Orders"; Rec."Release Sales Orders")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Release Sales Orders';
                DrillDownPageID = "Sales Order List";
                ToolTip = 'Specifies sales orders that are not yet posted or only partially posted.';


            }
            field("Open Sales Orders"; Rec."Open Sales Orders")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Open Sales Orders';
                DrillDownPageID = "Sales Order List";
                ToolTip = 'Specifies sales orders that are not yet posted or only partially posted.';

            }
        }
    }
    trigger OnAfterGetCurrRecord()
    var
        SalesHeader: Record "Sales Header";
    begin
        if SalesHeader.Status = SalesHeader.Status::Released then;
        // Rec."Release Sales Orders" := SalesHeader.Status::Released;
    end;
}