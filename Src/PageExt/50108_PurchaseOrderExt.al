pageextension 60118 PurchaseOrderExt extends "Purchase Order"
{
    layout
    {
        //Himalaya Added Reference Name Field for data flow from Customer to Purchase Order ++
        addlast(General)
        {
            field("Reference Name"; Rec.Reference_Name)
            {
                ApplicationArea = All;
            }
        }
        //Himalaya Added Reference Name Field for data flow from Customer to Purchase Order --
    }
}