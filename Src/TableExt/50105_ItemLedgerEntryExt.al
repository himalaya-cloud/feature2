tableextension 60114 "PKT ItemLedgerEntryExt" extends "Item Ledger Entry"
{
    fields
    {
        field(50101; "PKT Customer Category Code"; Code[20])
        {
            TableRelation = "PKT Customer Category";
            Caption = 'Customer Category';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PKTK1; "PKT Customer Category Code")
        {
        }
    }
}
