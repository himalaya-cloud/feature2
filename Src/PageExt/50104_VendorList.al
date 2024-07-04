pageextension 60113 VendorlistExt extends "Vendor List"
{
    layout
    {
        addafter(Name)
        {
            field(Remarks; Rec.Remarks)
            {
                ApplicationArea = All;
            }
            //Himalaya Added Reference Name Field for data flow from Customer to Sales Order & Purchase Order
            field("Referance Name"; Rec."Referance Name")
            {
                ApplicationArea = All;
            }
        }
    }
}