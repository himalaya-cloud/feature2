tableextension 60113 PurchaseInvHeader extends "Purch. Inv. Header"
{
    fields
    {
        field(50101; Remarks; Text[80])
        {
            // FieldClass = FlowField;
            // CalcFormula = lookup(Vendor.Remarks where("No." = field("Buy-from Vendor No.")));
        }
    }
}