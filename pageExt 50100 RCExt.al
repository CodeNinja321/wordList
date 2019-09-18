pageextension 50101 RCExt extends "Headline RC Order Processor"
{
    layout
    {
        addafter(Control2)
        {
            field(Headline1; jokeText1) { }
            field(Headline2; jokeText2) { }
            field(Headline3; jokeText3) { }
            field(Headline4; jokeText4) { }
            field(Headline5; jokeText5) { }
            field(Headline6; jokeText6) { }
            field(Headline7; jokeText7) { }
            field(Headline8; jokeText8) { }
            field(Headline9; jokeText9) { }
            field(Headline10; jokeText10) { }
        }
    }

    var
        myTable: Record MyWordTable;
        myInt: Integer;
        jokeStream: InStream;
        jokeText1: Text;
        jokeText2: Text;
        jokeText3: Text;
        jokeText4: Text;
        jokeText5: Text;
        jokeText6: Text;
        jokeText7: Text;
        jokeText8: Text;
        jokeText9: Text;
        jokeText10: Text;


    trigger OnAfterGetCurrRecord()
    begin
        if myTable.FindFirst() then begin
            myTable.Next(Random(myTable.Count));
            jokeText1 := myTable.FO + ' - ' + myTable.EN;
        end;
        if myTable.FindFirst() then begin
            myTable.Next(Random(myTable.Count));
            jokeText2 := myTable.FO + ' - ' + myTable.EN;
        end;
        if myTable.FindFirst() then begin
            myTable.Next(Random(myTable.Count));
            jokeText3 := myTable.FO + ' - ' + myTable.EN;
        end;
        if myTable.FindFirst() then begin
            myTable.Next(Random(myTable.Count));
            jokeText4 := myTable.FO + ' - ' + myTable.EN;
        end;
        if myTable.FindFirst() then begin
            myTable.Next(Random(myTable.Count));
            jokeText5 := myTable.FO + ' - ' + myTable.EN;
        end;
        if myTable.FindFirst() then begin
            myTable.Next(Random(myTable.Count));
            jokeText6 := myTable.FO + ' - ' + myTable.EN;
        end;
        if myTable.FindFirst() then begin
            myTable.Next(Random(myTable.Count));
            jokeText7 := myTable.FO + ' - ' + myTable.EN;
        end;
        if myTable.FindFirst() then begin
            myTable.Next(Random(myTable.Count));
            jokeText8 := myTable.FO + ' - ' + myTable.EN;
        end;
        if myTable.FindFirst() then begin
            myTable.Next(Random(myTable.Count));
            jokeText9 := myTable.FO + ' - ' + myTable.EN;
        end;
        if myTable.FindFirst() then begin
            myTable.Next(Random(myTable.Count));
            jokeText10 := myTable.FO + ' - ' + myTable.EN;
        end;
    end;

}