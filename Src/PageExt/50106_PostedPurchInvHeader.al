pageextension 60116 PostedPurchInvHeader extends "Posted Purchase Invoices"
{
    layout
    {
        addafter("Buy-from Vendor Name")
        {
            field(Remarks; Rec.Remarks)
            {
                ApplicationArea = All;
            }
        }
    }
    trigger OnAfterGetRecord()
    var
        Vendorrec: Record Vendor;
        postedpurchinv: Record "Purch. Inv. Header";
    begin
        Vendorrec.SetRange("No.", rec."Buy-from Vendor No.");
        if Vendorrec.FindFirst() then
            Rec.Remarks := Vendorrec.Remarks;

    end;
}