table 60109 "PKT Vendor Quality"
{
    Caption = 'Vendor Quality';
    DataClassification = CustomerContent;
    fields
    {
        field(60101; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            TableRelation = Vendor;
        }
        field(60102; "Vendor Name"; Text[100])
        {
            Caption = 'Vendor Name';
            FieldClass = FlowField;
            CalcFormula = lookup(Vendor.Name where("No." = field("Vendor No.")));
            Editable = false;
        }
        field(60103; "Vendor Activity Description"; Text[250])
        {
            Caption = 'Vendor Activity Description';
        }
        field(60104; ScoreItemQuality; Integer)
        {
            Caption = 'Item Quality Score';
            MinValue = 1;
            MaxValue = 10;
            trigger OnValidate()
            begin
                UpdateVendorRate();
            end;
        }
        field(60105; ScoreDelivery; Integer)
        {
            Caption = 'Delivery On Time Score';
            MinValue = 1;
            MaxValue = 10;
            trigger OnValidate()
            begin
                UpdateVendorRate();
            end;
        }
        field(60106; ScorePackaging; Integer)
        {
            Caption = 'Packaging Score';
            MinValue = 1;
            MaxValue = 10;
            trigger OnValidate()
            begin
                UpdateVendorRate();
            end;
        }
        field(60107; ScorePricing; Integer)
        {
            Caption = 'Pricing Score';
            MinValue = 1;
            MaxValue = 10;
            trigger OnValidate()
            begin
                UpdateVendorRate();
            end;
        }
        field(60108; Rate; Decimal)
        {
            Caption = 'Vendor Rate';
        }
        field(60110; UpdateDate; DateTime)
        {
            Caption = 'Update Date';
        }
        field(60111; InvoicedYearN; Decimal)
        {
            Caption = 'Invoiced for current year (N)';
        }
        field(60112; InvoicedYearN1; Decimal)
        {
            Caption = 'Invoiced for year N-1';
        }
        field(60113; InvoicedYearN2; Decimal)
        {
            Caption = 'Invoiced for year N-2';
        }
        field(60114; DueAmount; Decimal)
        {
            Caption = 'Due Amount';
            DataClassification = CustomerContent;
        }
        field(60115; AmountNotDue; Decimal)
        {
            Caption = 'Amount to pay (not due)';
        }
    }
    keys
    {
        key(PK; "Vendor No.")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    begin
        UpdateDate := CurrentDateTime();
    end;

    trigger OnModify()
    begin
        UpdateDate := CurrentDateTime();
    end;

    local procedure UpdateVendorRate()
    var
        VendorQualityMgt: Codeunit "PKT Vendor Quality Mgt";
    begin
        VendorQualityMgt.CalculateVendorRate(Rec);
    end;
}
