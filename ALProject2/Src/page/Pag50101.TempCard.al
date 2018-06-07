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
                field(Automatic;Automatic)
                {
                    Editable = false;
                }
                field("Last Invoice No.";"Last Invoice No.")
                {
                    Editable = false;
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
}