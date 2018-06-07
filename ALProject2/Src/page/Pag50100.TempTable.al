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