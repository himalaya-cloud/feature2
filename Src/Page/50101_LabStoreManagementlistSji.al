page 60110 Lab_Store_Management_List_Sji
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = LabStoreManagementsji;
    RefreshOnActivate = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Item_Code_Sji; Rec.Item_Code_Sji)
                {
                    ApplicationArea = All;
                }
                field(Item_Name_Sji; Rec.Item_Name_Sji)
                {
                    ApplicationArea = All;
                }
                field(Item_Purchase_Date_Sji; Rec.Item_Purchase_Date_Sji)
                {
                    ApplicationArea = All;
                }
                field(Condition_Sji; Rec.Condition_Sji)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(AddItem)
            {
                ApplicationArea = All;
                Image = Action;
                Promoted = true;
                Caption = 'Add Item';
                PromotedCategory = Process;
                trigger OnAction()
                var
                    labstore: Record LabStoreManagementsji;

                begin
                    Page.Run(Page::"Satndard Dilog Page");
                end;
            }
            action(RemoveItem)
            {
                ApplicationArea = All;
                Image = Action;
                Promoted = true;
                Caption = 'Remove Item';
                PromotedCategory = Process;
                trigger OnAction()
                var
                    labstore: Record LabStoreManagementsji;

                begin
                    Page.Run(Page::Lab_Store_Management_List2_Sji);
                end;
            }
        }
    }
}