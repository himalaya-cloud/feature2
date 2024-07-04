pageextension 60117 SalesOrderExt extends "Sales Order"
{
    layout
    {
        addlast(General)
        {
            //Himalaya Added Reference Name Field for data flow from Customer to Sales Order 

            field("Reference Name"; Rec."Reference Name")
            {
                ApplicationArea = All;
            }
            field(Created_by; Rec.Created_by)
            {
                ApplicationArea = All;
            }


        }

    }
    actions
    {
        addlast(processing)
        {
            action("PKT Add Free Gifts")
            {
                Caption = 'Add Free Gifts';
                ToolTip = 'Adds Free Gifts to the current Sales Order based on active Campaigns';
                ApplicationArea = All;
                Image = Add;
                trigger OnAction()
                var
                    GiftManagement: Codeunit "PKT Gift Management";
                begin
                    GiftManagement.AddGifts(Rec);
                end;
            }

        }
        addlast(Promoted)
        {
            group(PKTGifts)
            {
                Caption = 'Gifts';
                actionref(PKTAddFreeGifts; "PKT Add Free Gifts")
                {
                }

            }
        }
    }/* 
    trigger OnAfterGetRecord()
    var
        User: Record User;
        salesHeader: Record "Sales Header";
        codeunit: Codeunit "Sales-Post";
    begin
        if salesHeader."Document Type" = salesHeader."Document Type"::Order then
            if User.Get(UserId) then
                salesHeader.Created_by := salesHeader.Full_Name;
        salesHeader.Modify();

    end; */

}

