pageextension 50101 RCExt extends "Headline RC Order Processor"
{
    layout
    {
        addafter(Control2)
        {
            field(Headline1; Text1) { }
            field(Headline2; Text2) { }
            field(Headline3; Text3) { }
            field(Headline4; Text4) { }
            field(Headline5; Text5) { }
            field(Headline6; Text6) { }
            field(Headline7; Text7) { }
            field(Headline8; Text8) { }
            field(Headline9; Text9) { }
            field(Headline10; Text10) { }
        }
    }

    var
        myTable: Record MyWordTable;
        Text1: Text;
        Text2: Text;
        Text3: Text;
        Text4: Text;
        Text5: Text;
        Text6: Text;
        Text7: Text;
        Text8: Text;
        Text9: Text;
        Text10: Text;


    trigger OnAfterGetCurrRecord()
    begin
        if myTable.FindFirst() then begin
            myTable.Next(Random(myTable.Count));
            Text1 := myTable.FO + ' - ' + myTable.EN;
        end;
        if myTable.FindFirst() then begin
            myTable.Next(Random(myTable.Count));
            Text2 := myTable.FO + ' - ' + myTable.EN;
        end;
        if myTable.FindFirst() then begin
            myTable.Next(Random(myTable.Count));
            Text3 := myTable.FO + ' - ' + myTable.EN;
        end;
        if myTable.FindFirst() then begin
            myTable.Next(Random(myTable.Count));
            Text4 := myTable.FO + ' - ' + myTable.EN;
        end;
        if myTable.FindFirst() then begin
            myTable.Next(Random(myTable.Count));
            Text5 := myTable.FO + ' - ' + myTable.EN;
        end;
        if myTable.FindFirst() then begin
            myTable.Next(Random(myTable.Count));
            Text6 := myTable.FO + ' - ' + myTable.EN;
        end;
        if myTable.FindFirst() then begin
            myTable.Next(Random(myTable.Count));
            Text7 := myTable.FO + ' - ' + myTable.EN;
        end;
        if myTable.FindFirst() then begin
            myTable.Next(Random(myTable.Count));
            Text8 := myTable.FO + ' - ' + myTable.EN;
        end;
        if myTable.FindFirst() then begin
            myTable.Next(Random(myTable.Count));
            Text9 := myTable.FO + ' - ' + myTable.EN;
        end;
        if myTable.FindFirst() then begin
            myTable.Next(Random(myTable.Count));
            Text10 := myTable.FO + ' - ' + myTable.EN;
        end;
    end;

}