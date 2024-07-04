page 60102 "Satndard Dilog Page"
{
    PageType = StandardDialog;
    Caption = 'Lab Dilog Page';


    layout
    {
        area(Content)
        {
            group(general)
            {
                field(Item_Code_Sji; Item_Code_Sji)
                {
                    ApplicationArea = All;
                }
                field(Item_Name_Sji; Item_Name_Sji)
                {
                    ApplicationArea = All;
                }
                field(Item_Purchase_Date_Sji; Item_Purchase_Date_Sji)
                {
                    ApplicationArea = All;
                }
                field(Condition_Sji; Condition_Sji)
                {
                    ApplicationArea = All;

                }
               
            }
        }
    }
    //Added this for Insert record in labStoremanagaement table
    trigger OnQueryClosePage(CloseAction: Action): Boolean
    var
        LabStore: Record LabStoreManagementsji;
    begin
        if CloseAction = Action::OK then begin
            LabStore.Init();
            LabStore.Item_Code_Sji := Item_Code_Sji;
            LabStore.Item_Name_Sji := Item_Name_Sji;
            LabStore.Item_Purchase_Date_Sji := Item_Purchase_Date_Sji;
            LabStore.Condition_Sji := Condition_Sji;
            LabStore.Insert();

        end;
    end;

    var
        Item_Code_Sji: Code[10];
        Item_Name_Sji: Text;
        Item_Purchase_Date_Sji: Date;
        Condition_Sji: Option " ","Running","Damage";
        Short_Close: Boolean;
}
