tableextension 60112 SalesInvHeaderExt extends "Sales Invoice Header"
{


    fields
    {
        field(60111; Remarks; Text[80])
        {
            /*CalcFormula = lookup(Customer.Remarks where("No." = field("Sell-to Customer No.")));
              FieldClass = FlowField; */
            // AccessByPermission = TableData "Sales Invoice Header" = RIMD;
        }
        field(60112; Invoked; Boolean)
        {
            DataClassification = CustomerContent;
        }
    }
}