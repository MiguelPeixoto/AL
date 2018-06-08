
report 50100 TempTable
{
    DefaultLayout = RDLC;
    RDLCLayout = 'TempTableRDLCReport.rdl';
    
    dataset
    {
        dataitem(TempTable; TempTable)
        {
            column(Code; TempTable.Code)
            {
            }
        }
    }
}