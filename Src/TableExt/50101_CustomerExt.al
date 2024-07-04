tableextension 60110 CustomerExt extends Customer
{
    fields
    {
        field(60111; IndexNo; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Index No';

        }
        field(60112; Remarks; Text[80])
        {
            DataClassification = CustomerContent;
            Caption = 'Remarks';
        }
        field(60113; "PKT Customer Category Code"; Code[20])
        {
            TableRelation = "PKT Customer Category";
            Caption = 'Customer Category Code';
            DataClassification = CustomerContent;
            trigger OnValidate()
            var
                CustomerCategory: Record "PKT Customer Category";
                BlockedErr: Label 'This category is blocked.';
            begin
                if CustomerCategory.Get("PKT Customer Category Code") then begin
                    if CustomerCategory.Blocked then Error(BlockedErr);
                end;
            end;
        }
        //Himalaya Added Reference Name Field for data flow from Customer to Sales Order & Purchase Order
        field(60114; "Referance Name"; Text[50])
        {
            DataClassification = CustomerContent;
        }
        //Himalaya Added Full Name Field for data flow from Customer to Sales Order 
        field(60115; Full_Name; Text[50])
        {
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PKTCustomerCategory; "PKT Customer Category Code")
        {
        }
    }
}