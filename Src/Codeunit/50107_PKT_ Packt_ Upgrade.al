/*  codeunit 60109 "PKT Packt Upgrade"
{
    Subtype = Upgrade;
    trigger OnUpgradePerCompany()
    begin
        MoveField();
    end;

    local procedure MoveField()
    var
        from: Record FromTable;
        to: Record ToTable;
    begin
        if from.FindSet() then
            repeat
        to.Get(from.RecordId);
        to.IntField := from.IntField;
        to.CodeField := from.CodeField; 
        to.Modify();
            until from.Next() = 0
    end;

    local procedure MoveField()
    var
        dt: DataTransfer;
        from: Record FromTable;
        to: Record ToTable;
    begin
        dt.SetTables(Database::FromTable, Database::ToTable);
        dt.AddFieldValue(from.FieldNo("SmallCodeField",to.FieldNo("SmallCodeField"));
        dt.AddFieldValue(from.FieldNo("IntField", to.FieldNo("IntField"));
        dt.AddJoinCondition(from.FieldNo("id"), to.FieldNo("id"));
        dt.CopyFields();
    end;
    //The same if you want to use DataTransfer to rewrite the previously described procedure to move records between tables:
    local procedure MoveRecords()
    var
        dt: DataTransfer;
        to: Record ToTable;
    begin
        dt.SetTables(Database::FromTable, Database::ToTable);
        dt.AddFieldValue(2, to.FieldNo("SmallCodeField"));
        dt.AddFieldValue(3, to.FieldNo("IntField"));
        dt.AddFieldValue(1, to.FieldNo("id"));
        dt.CopyRows();
    end;
}*/


