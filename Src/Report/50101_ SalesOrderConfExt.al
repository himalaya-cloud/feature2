reportextension 60111 SalesOrderConfExt extends "Standard Sales - Order Conf."
{

    dataset
    {
        modify(Header)
        {
            trigger OnAfterAfterGetRecord()
            var
            begin
                Customer.get(Header."Bill-to Customer No.")
            end;
        }
        add(Header)
        {
            column(CustomerCategory_PKT; Customer."Post Code") { }
            column(CustomerCategory_PKT_Lbl; Customer.FIELDCAPTION("Post Code")) { }
            column(GiftLbl; GiftLbl) { }
        }
        modify(Line)
        {
            trigger OnAfterAfterGetRecord()
            begin
                case "Line Discount %" of
                    0:
                        NewLineDiscountPctText := '';
                    100:
                        NewLineDiscountPctText := GiftLbl;
                    else
                        NewLineDiscountPctText := StrSubstNo('%1%', -Round("Line Discount %", 0.1));
                end;
            end;
        }
        add(Line)
        {
            column(NewLineDiscountPctText; NewLineDiscountPctText) { }
        }
    }

    requestpage
    {
        // Add changes to the requestpage here
    }

    rendering
    {
        layout(LayoutName)
        {

            Type = Word;
            Caption = 'PKT Standard Sales - Order Conf.';
            Summary = 'Standard Sales - Order Conf. report ext.';
            LayoutFile = './Src/ReportLayout/StandardSalesOrderConfBlue.docx';
        }
    }
    var
        Customer: Record Customer;
        newLineDiscountPctText: Text;
        GiftLbl: Label 'GIFT';
}