permissionset 60101 "PKT PacketPermission"
{
    Caption = 'PACKT Permissions';
    Assignable = true;
    Permissions = tabledata "PKT Customer Category" = RIMD,
            tabledata "PKT Gift Campaign" = RIMD,
            tabledata "PKT Packt Setup" = RIMD,
            tabledata "PKT Vendor Quality" = RIMD,
            table "PKT Customer Category" = X,
            table "PKT Gift Campaign" = X,
            
            table "PKT Packt Setup" = X,
            table "PKT Vendor Quality" = X,
            //report "Item Ledger Entry Analysis" = X, 
            codeunit "PKT Customer Category Mgt" = X,
            codeunit "PKT Gift Management" = X,
            codeunit "PKT Vendor Quality Mgt" = X,
            page "PKT Customer Category Card" = X,
            page "PKT Customer Category List" = X,
            page "PKT Gift Campaign List" = X,
            page "PKT Packt Setup" = X,
            page "PKT Vendor Quality Card" = X;

}