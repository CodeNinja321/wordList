page 50102 myWords
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = MyWordTable;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(FO; FO) { }
                field(EN; EN) { }
            }
        }
    }

}