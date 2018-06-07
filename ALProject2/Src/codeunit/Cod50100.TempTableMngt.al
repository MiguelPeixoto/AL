codeunit 50100 TempTableMngt
{
    [EventSubscriber(ObjectType::Table, 27, 'OnAfterInsertEvent', '',true, true)]
    local procedure OnInsertItem(Var Rec:Record Item; RunTrigger: Boolean)
    var 
        TempTable:Record TempTable;
        MyNotification: Notification;

    begin
        TempTable.Reset;
        TempTable.SetRange(Code,Rec."No.");
        if not TempTable.FindSet then
        begin
            TempTable.Init;
            TempTable.Code := Rec."No.";
            TempTable.Description := Rec.Description;
            TempTable.Insert;
        end;

        MyNotification.Id := CreateGuid; //create guid extension
        MyNotification.Message(StrSubstNo('Added Item %1 in temp table',Rec."No."));
        MyNotification.send;
    end;
}