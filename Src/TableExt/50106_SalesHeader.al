tableextension 60115 SalesheaderExt extends "Sales Header"
{
    //Himalaya Added Reference Name Field for data flow from Customer to Sales Order 
    fields
    {
        // Himalaya Added Reference Name Field ++
        field(60115; "Reference Name"; Text[50])
        {
            DataClassification = CustomerContent;
        }
        // Himalaya Added Reference Name Field --

        field(60116; Created_by; Text[50])
        {
            DataClassification = CustomerContent;
            Editable = false;
        }

    }
    /*  trigger OnAfterInsert()
     var
     begin
         Created_by := UserId;
         Rec.Modify();
     end; */
}