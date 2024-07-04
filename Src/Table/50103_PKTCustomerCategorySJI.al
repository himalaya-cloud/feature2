table 60103 "PKT Customer category"
{
    DataClassification = CustomerContent;
    Caption = 'Customer Category';
    //DrillDownPageId = "PKT Customer Category List";
    //LookupPageId = "PKT Customer Category List";

    fields
    {
        field(50101; Code; Code[20])
        {
            Caption = 'No.';
        }
        field(50102; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(50103; Default; Boolean)
        {
            Caption = 'Default';
        }
        field(50104; EnableNewsletter; Enum "PKT NewsletterType")
        {
            Caption = 'Enable Newsletter';
            DataClassification = CustomerContent;
        }
        field(50105; FreeGiftsAvailable; Boolean)
        {
            Caption = 'Free Gifts Available';
        }
        field(50106; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
        field(50107; TotalCustomersForCategory; Integer)
        {
            Caption = 'No. of associated customers';
            FieldClass = FlowField;
            CalcFormula = count(Customer where("Salesperson Code" = field(Code)));
        }
    }

    keys
    {
        key(PM1; Code)
        {
            Clustered = true;
        }
        key(K2; Description)
        {
            Unique = true;
        }
    }
     procedure GetSalesAmount(): Decimal
    var
        CustomerCategoryMgt: Codeunit "PKT Customer Category Mgt";
    begin
        exit(CustomerCategoryMgt.GetSalesAmount(Rec.Code));
    end; 
}


