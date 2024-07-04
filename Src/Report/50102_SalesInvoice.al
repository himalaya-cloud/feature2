report 60110 SalesInvoice
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    //DefaultLayout = RDLC;
    // RDLCLayout = '.\Src\Report\ReportLayout.rdl';
    ProcessingOnly = true;
    Permissions = tabledata "Sales Invoice Header" = rim;

    dataset
    {
        dataitem(Sales_Invoice_Header; "Sales Invoice Header")
        {
            column(Invoked; Invoked)
            {

            }

            trigger OnAfterGetRecord()
            var
                customer: Record Customer;
            begin

                /*      if Sales_Invoice_Header."Sell-to Customer No." = '10000' then
                         Sales_Invoice_Header.Invoked := true;
                     Sales_Invoice_Header.Modify(true); */
                /*   Sales_Invoice_Header.SetRange("Sell-to Customer No.", customer."No.");
                  Sales_Invoice_Header.SetRange("Bill-to Customer No.", customer."No.");
                  if customer.get(customer."No.") then
                      Remarks := customer.Remarks;
                  Sales_Invoice_Header.Modify();
   */




                //  Message('Report Modified');

            end;

            trigger OnPostDataItem()
            begin
                Message('done');
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    //  field(){}                        
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(LayoutName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }


}