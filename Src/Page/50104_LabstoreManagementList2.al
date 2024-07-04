page 60104 Lab_Store_Management_List2_Sji
{
    PageType = List;
    //ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = LabStoreManagementsji;
    RefreshOnActivate = true;
    DeleteAllowed = false;
    InsertAllowed = false;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Item_Code_Sji; Rec.Item_Code_Sji)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Item_Name_Sji; Rec.Item_Name_Sji)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Item_Purchase_Date_Sji; Rec.Item_Purchase_Date_Sji)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Condition_Sji; Rec.Condition_Sji)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Remove_Item_Sji; Rec.Remove_Item_Sji)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    trigger OnQueryClosePage(CloseAction: Action): Boolean
    var
        Labstore: Record LabStoreManagementsji;
    begin
        Rec.SetRange(Remove_Item_Sji, true);
        if Rec.FindSet() then begin
            repeat
                Rec.Delete();
            until Rec.Next() = 0;
        end;
    end;




}