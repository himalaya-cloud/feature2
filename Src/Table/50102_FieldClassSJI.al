table 60102 FieldClassTable
{
    DataClassification = ToBeClassified;
    Caption = 'Field Class table';

    fields
    {
        field(50101; "Entry No."; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            //Editable = false;
        }
        field(50102; "Date Filter"; Date)
        {
            FieldClass = FlowFilter;
        }
        field(50103; "Customer No."; code[20])
        {
            FieldClass = FlowFilter;
            TableRelation = Customer;
        }
        field(50104; Balance; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum("Detailed Cust. Ledg. Entry".Amount);
        }
        field(50105; NetBalance; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum("Detailed Cust. Ledg. Entry".Amount where("Posting Date" = field("Date Filter")));
        }
        field(50106; CustomerBalance; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum("Detailed Cust. Ledg. Entry".Amount where("Posting Date" = field("Date Filter"), "Customer No." = field("Customer No.")));
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
}