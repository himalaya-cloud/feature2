table 60104 "PKT Packt Setup"
{
    Caption = 'Packt Extension Setup';
    DataClassification = CustomerContent;
    fields
    {
        field(50101; "Primary Key"; Code[10])
        {
        }
        field(50102; "Minimum Accepted Vendor Rate"; Decimal)
        {
            Caption = 'Minimum Accepted Vendor Rate for Purchases';
        }
        field(50103; "Gift Tolerance Qty"; Decimal)
        {
            Caption = 'Gift Tolerance Quantity for Sales';
        }
        field(50104; "Default Charge (Item)"; Code[20])
        {
            Caption = 'Default Charge (Item)';
            TableRelation = "Item Charge";
        }
       /*  field(50107; "Shipmt Commission Calc. Method"; enum "PKT Shipm. Comm. CalcMethod")
        {
            Caption = 'Shipment Commission Calc. Method';
        } */
    }
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}