pageextension 60111 CustCardExt extends "Customer Card"
{
    layout
    {
        addafter(Name)
        {
            field(Remarks; Rec.Remarks)
            {
                ApplicationArea = All;
            }
            field("PKT Customer Category Code"; Rec."PKT Customer Category Code")
            {
                ToolTip = 'Customer Category';
                ApplicationArea = All;
            }
        }
        addlast(General)
        {
            //Himalaya Added Reference Name Field for data flow from Customer to Sales Order & Purchase Order
            field("Referance Name"; Rec."Referance Name")
            {
                ApplicationArea = All;
            }
            field(Full_Name; Rec.Full_Name)
            {
                ApplicationArea = All;
            }
        }
    }
    actions
    {
        addlast("F&unctions")
        {
            action("PKT Assign default category")
            {
                Image = ChangeCustomer;
                ApplicationArea = All;
                Caption = 'Assign Default Category';
                ToolTip = 'Assigns a Default Category to the current Customer';
                trigger OnAction();
                var
                    CustomerCategoryMgt: Codeunit "PKT Customer Category Mgt";
                begin
                    CustomerCategoryMgt.AssignDefaultCategory(Rec."No.");
                end;
            }
        }
    }

}