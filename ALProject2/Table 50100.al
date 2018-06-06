table 50100 TempTable
{
    DataClassification = ToBeClassified;
    LookupPageId = 50100;

    fields
    {
        field(1; Code; Code[10])
        {
            DataClassification = ToBeClassified;
            CaptionML = ENU = 'Code',PTG = 'Código';
        }
        field(2;Description;Text[100])
        {
            DataClassification = ToBeClassified;
            CaptionML = ENU = 'Description', PTG = 'Descrição';
        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert();
    begin
        //testing
    end;

    trigger OnModify();
    begin
    end;

    trigger OnDelete();
    begin
    end;

    trigger OnRename();
    begin
    end;

}