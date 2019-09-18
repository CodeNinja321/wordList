table 50100 MyJokesTable
{
    fields
    {
        field(10; MyId; Code[20]) { }
        field(20; MyJoke; Blob) { }
    }

    keys
    {
        key(PK; MyId) { }
    }

    procedure SetMyJoke(NewJoke: Text);
    begin
        clear(MyJoke);
        if NewJoke = '' then
            exit;
        TempBlob.Blob := MyJoke;
        TempBlob.WriteAsText(NewJoke, TEXTENCODING::UTF8);
        MyJoke := TempBlob.Blob;
        Modify;
    end;

    procedure GetMyJoke(): Text
    begin
        CalcFields(MyJoke);
        exit(GetMyJokeMyJokeCalculated);
    end;

    procedure GetMyJokeMyJokeCalculated(): Text
    var
        CR: Text[1];
        TempBlob: Record TempBlob;
    begin
        if not MyJoke.HasValue then
            exit('');
        CR[1] := 10;
        TempBlob.Blob := MyJoke;
        exit(TempBlob.ReadAsText(CR, TextEncoding::UTF8));
    end;

    var
        TempBlob: Record TempBlob;
}