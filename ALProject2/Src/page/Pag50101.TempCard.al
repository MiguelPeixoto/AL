page 50101 "TempCard"
{
    PageType = Card;
    SourceTable = 50100;
    UsageCategory = None;
    layout
    {
        area(content)
        {
            group(General)
            {
                field(Code;Code)
                {
                    
                }
                field(Description;Description)
                {
                    
                }
            }
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
    
    var
        myInt : Integer;
}