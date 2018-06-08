table 50100 "TempTable"
{
    DataClassification = ToBeClassified;
    LookupPageId = 50100;

    fields
    {
        field(1; Code; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(2;Description;Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(3;Automatic;Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(4;"Last Invoice No.";Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(5;"Exchange Rate";Decimal)
        {

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
        GetExchRate: codeunit GetExchangeRate;

    trigger OnInsert();
    begin
        "Exchange Rate" := GetExchRate.GetExhangeRate('USD');
    end;
}