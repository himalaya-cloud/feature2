pageextension 60112 VendorcardExt extends "Vendor Card"
{
    layout
    {
        addafter(Name)
        {
            field(Remarks; Rec.Remarks)
            {
                ApplicationArea = All;
            }
        }
        addlast(General)
        {
            //Himalaya Added Reference Name Field for data flow from Customer to Sales Order & Purchase order

            field("Referance Name"; Rec."Referance Name")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}