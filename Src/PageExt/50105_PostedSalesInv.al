pageextension 60115 PostedSalesInvHeader extends "Posted Sales Invoices"
{

    layout
    {
        addafter("Sell-to Customer Name")
        {
            field(Remarks; Rec.Remarks)
            {
                ApplicationArea = All;
            }
            field(Invoked; Rec.Invoked)
            {
                ApplicationArea = All;
            }
        }
    }
    trigger OnAfterGetRecord()
    var
        cust: Record Customer;
        SalesInvHeader: Record "Sales Invoice Header";
    begin
        cust.SetRange("No.", Rec."Sell-to Customer No.");
        if cust.FindFirst() then begin
            Rec.Remarks := cust.Remarks;
           // Rec.Modify();
        end;
    end;
}