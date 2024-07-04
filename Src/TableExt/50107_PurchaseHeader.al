tableextension 60116 PurchaseHeaderExt extends "Purchase Header"
{
    //Himalaya Added Reference Name Field for data flow from Customer to Sales Order & Purchase Order
    fields
    {
        // Himalaya Added Reference Name Field ++
        field(60111; Reference_Name; Text[50])
        {
            DataClassification = CustomerContent;
        }
        // Himalaya Added Reference Name Field --
    }
}