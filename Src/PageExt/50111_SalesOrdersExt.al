pageextension 60120 Sales_Orders_List extends "Sales Order List"
{
    layout
    {
        addafter("Assigned User ID")
        {
            field(Created_by;Rec.Created_by)
            {
                ApplicationArea = All;
                Caption = 'Created By';
            }
        }
    }
}