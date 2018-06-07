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
            action(ActionName)
            {
                trigger OnAction();
                begin
                end;
            }
        }
    }
}