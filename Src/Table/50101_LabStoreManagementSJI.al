table 60110 LabStoreManagementsji
{
    DataClassification = CustomerContent;
    Caption = 'Lab Store Management Sji';
    

    fields
    {
        field(50101; Item_Code_Sji; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Item Code Sji';
        }
        field(50102; Item_Name_Sji; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Item Name Sji';
        }
        field(50103; Item_Purchase_Date_Sji; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Item Purchase Date Sji';
        }
        field(50104; Condition_Sji; Option)
        {
            DataClassification = CustomerContent;
            OptionMembers = " ","Damage","Running";
            Caption = 'Condition Sji';
        }
        field(50105; Remove_Item_Sji; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Remove Item Sji';
        }
    }

    keys
    {
        key(Key1; Item_Code_Sji)
        {
            Clustered = true;
        }
    }

}