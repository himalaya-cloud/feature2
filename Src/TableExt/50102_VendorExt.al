tableextension 60111 VendorExt extends Vendor
{
    fields
    {
        field(60111; Remarks; Text[80])
        {
            DataClassification = CustomerContent;
        }
        //Himalaya Added Reference Name Field for data flow from Customer to Sales Order & Purchase Order
        field(60112; "Referance Name"; Text[50])
        {
            DataClassification = CustomerContent;
        }
    }
}