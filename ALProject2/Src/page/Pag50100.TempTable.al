page 50100 "TempTable"
{
    PageType = List;
    SourceTable = 50100;
    CardPageId = 50101;
    UsageCategory = Lists;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Code;Code)
                {
                 
                }
                field(Description;Description)
                {

                }
                field(Automatic;Automatic)
                {
                    Editable = false;
                }
                field("Last Invoice No.";"Last Invoice No.")
                {
                    Editable = false;
                }
                field("Exchange Rate";"Exchange Rate")
                {
                    Editable = false;
                }
            }
        }
        area(factboxes)
        {
        }

    }

    actions
    {
        area(processing)
        {
            action("Get Exchange Rate")
            {
                image=GetEntries;
                trigger OnAction();
                var
                    GetExchRate: Codeunit GetExchangeRate;    
                begin
                    GetExchRate.ShowExhangeRate('USD');
                end;
            }
            action(Print)
            {
                Image=Print;
                trigger OnAction();
                begin
                    report.Run(Report::TempTable);
                end;
            }
        }
    }
}