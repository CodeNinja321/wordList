codeunit 50100 cuTest
{
    trigger OnRun()
    begin
        FileName := 'C:\Users\Djóni\Desktop\Scraper\words.json';

        MyFile := FileMgt.BLOBImport(TempBlob, 'Test');

        TempBlob.Blob.CREATEINSTREAM(StreamInTest);
        JsonText := TempBlob.ReadAsText('', TextEncoding::UTF8);

        if not JsonArray.ReadFrom(JsonText) then
            Error('JsonArray riggar ikki');

        for i := 0 to JsonArray.Count - 1 do begin
            JsonArray.Get(i, JsonToken);
            JsonObject := JsonToken.AsObject();
            myid := GetJsonToken(JsonObject, 'fo').AsValue.AsText;
            myJoke := GetJsonToken(JsonObject, 'en').AsValue.AsText;
            if myJoke <> '' then begin
                theTable.FO := myid;
                if not theTable.Insert(true) then
                    exit;
                //theTable.SetMyJoke((myJoke));
                theTable.EN := myJoke;
                theTable.Modify(true);
            end;
        end;

    end;

    procedure GetJsonToken(JsonObject: JsonObject; TokenKey: Text) JsonToken: JsonToken;
    begin
        if not JsonObject.Get(TokenKey, JsonToken) then
            Error('Riggar ikki');
    end;

    var
        i: integer;
        theTable: Record myWordTable;
        myid: Text;
        myJoke: Text;
        MyFile: Text;
        StreamInTest: InStream;
        Buffer: Text;
        TempBlob: Record TempBlob;
        FileName: Text;

        FileMgt: Codeunit "File Management";
        JsonToken: JsonToken;
        JsonValue: JsonValue;
        JsonObject: JsonObject;
        JsonArray: JsonArray;
        JsonText: Text;

}