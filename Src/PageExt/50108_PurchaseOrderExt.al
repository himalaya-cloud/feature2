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
            field(Reference_RHB_NL; Rec.Reference_RHB_NL)
            {
                ApplicationArea = All;
                Caption = 'Reference RHB NL';
            }
            field(Google_Drive_ETD_URL; Rec.Google_Drive_ETD_URL)
            {
                ApplicationArea = All;
                ExtendedDatatype = URL;
                Caption = 'Google Drive ETD URL';

                trigger OnAssistEdit()
                var
                begin
                    Hyperlink(Rec.Google_Drive_ETD_URL);
                end;
            }
        }
        addafter(Control3)
        {
            part(Purchaseheaderfactbox; "Purchase Header FactBox")
            {
                ApplicationArea = All;
                Editable = false;
                Enabled = false;
            }
        }
        //Himalaya Added Reference Name Field for data flow from Customer to Purchase Order --
    }
}