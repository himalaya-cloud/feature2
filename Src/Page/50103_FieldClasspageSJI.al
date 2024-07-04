page 60103 FieldClasspage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = FieldClassTable;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                }
                field(Balance; Rec.Balance)
                {
                    ApplicationArea = All;
                }
                field(NetBalance; Rec.NetBalance)
                {
                    ApplicationArea = All;
                }

                field(CustomerBalance; Rec.CustomerBalance)
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
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}