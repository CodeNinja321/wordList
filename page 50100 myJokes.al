page 50100 myJokes
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = MyJokesTable;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Id; MyId) { }
                field(Joke; JokeText) { }
            }
        }
    }
    trigger OnAfterGetRecord();
    begin
        JokeText := Rec.GetMyJoke();
    end;

    var
        JokeText: Text;
}