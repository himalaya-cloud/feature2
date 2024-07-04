pageextension 60110 CustList extends "Customer List"
{
    layout
    {
        addafter(Name)
        {
            field(IndexNo; Rec.IndexNo)
            {
                ApplicationArea = All;
            }
            field(Remarks; Rec.Remarks)
            {
                ApplicationArea = All;
            }
            //Himalaya Added Reference Name Field for data flow from Customer to Sales Order & Purchase Order
            //Himalaya Added Referance_Name Field ++
            field("Referance Name"; Rec."Referance Name")
            {
                ApplicationArea = All;
            }
            //Himalaya Added Reference_Name Field --
        }

    }

    actions
    {
        addafter("&Customer")
        {
            action(IncremenentNo)
            {
                ApplicationArea = All;
                Caption = 'Increment No.';
                Image = Action;
                /*       Promoted = true;
                      PromotedCategory = Process; */

                trigger OnAction()
                var
                    i: Integer;
                    Customer: Record Customer;
                begin
                    i := 0;
                    if rec.FindSet() then
                        repeat
                            if Rec.IndexNo = 0 then begin
                                i += 1;
                                rec.IndexNo := i;
                                rec.Modify();
                            end else
                                if Rec.IndexNo <> 0 then begin
                                    Rec.IndexNo := 0;
                                    Rec.Modify();
                                end;
                        until rec.Next() = 0;
                end;
            }
            action("PKT Assign Default Category")
            {
                Image = ChangeCustomer;
                ApplicationArea = All;
                Caption = 'Assign Default Category to all Customers';
                ToolTip = 'Assigns the Default Category to all Customers';

                trigger OnAction();
                var
                    CustomerCategoryMgt: Codeunit "PKT Customer Category Mgt";
                begin
                    CustomerCategoryMgt.AssignDefaultCategory();
                end;
            }
        }
        addlast(Promoted)
        {
            group(PKTCustomerCategory)
            {
                Caption = 'Customer Category';
                actionref(PKTAssingDefaultCategory; "PKT Assign Default Category")
                {
                }
            }

        }

    }
    views
    {
        addlast
        {
            view(CustomersWithoutCategory)
            {
                Caption = 'Customers without Category assigned';
                Filters = where("PKT Customer Category Code" = filter(''));
            }
        }
    }

    var
        myInt: Page "Role Center Page Dispatcher";
        myInt1: Page "Role Center Overview";
}