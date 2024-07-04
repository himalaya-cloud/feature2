codeunit 60110 Customer_DataFlow
{
    EventSubscriberInstance = StaticAutomatic;
    //Himalaya Added This Event for data flow from Customer to Sales Order ++
    [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnBeforeCopySellToCustomerAddressFieldsFromCustomer', '', true, true)]
    procedure OnBeforeCopySellToCustomerAddressFieldsFromCustomer(var SalesHeader: Record "Sales Header"; Customer: Record Customer)
    begin
        if SalesHeader."Document Type" = SalesHeader."Document Type"::Order then begin
            SalesHeader."Reference Name" := Customer."Referance Name";
            SalesHeader.Created_by := Customer.Full_Name;
        end;
    end;
    //Himalaya Added This Event for data flow from Customer to Sales Order --

    //Himalaya Added This Event for data flow from Customer to Purchase Order ++
    [EventSubscriber(ObjectType::Table, Database::"Purchase Header", 'OnAfterCopyBuyFromVendorAddressFieldsFromVendor', '', true, true)]
    procedure OnAfterCopyBuyFromVendorAddressFieldsFromVendor(BuyFromVendor: Record Vendor; var PurchaseHeader: Record "Purchase Header")
    begin
        if PurchaseHeader."Document Type" = PurchaseHeader."Document Type"::Order then
            PurchaseHeader.Reference_Name := BuyFromVendor."Referance Name";
    end;
    //Himalaya Added This Event for data flow from Customer to Purchase Order --


    [EventSubscriber(ObjectType::Table, Database::"Sales Header", OnInitRecordOnBeforeAssignOrderDate, '', true, true)]
    procedure OnInitRecordOnBeforeAssignOrderDate(var NewOrderDate: Date; var SalesHeader: Record "Sales Header")
    var
        User: Record User;
    begin
        /*   if User.Get(UserId) then begin
              if SalesHeader."Document Type" = SalesHeader."Document Type"::Order then
                  SalesHeader.Created_by := User."Full Name";
          end; */
    end;

    var

}

