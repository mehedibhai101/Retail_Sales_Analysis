let
    // 1. Access the source folder and target the specific CSV file
    Source_Folder = Folder.Files("your_folder_path"),
    File_Content = Source_Folder{[Name="sales_data.csv"]}[Content],

    // 2. Import the CSV with standard encoding and promote the first row to headers
    Imported_CSV = Csv.Document(File_Content,[Delimiter=",", Columns=14, Encoding=1252, QuoteStyle=QuoteStyle.None]),
    Promote_Headers = Table.PromoteHeaders(Imported_CSV, [PromoteAllScalars=true]),

    // 3. Assign initial data types. 
    // Note: 'Date' is imported as Int64 because it is currently in Excel Serial format.
    Set_Initial_Types = Table.TransformColumnTypes(Promote_Headers,{
        {"Transaction ID", type text}, {"Date", Int64.Type}, {"City", type text}, 
        {"Branch", type text}, {"Shop Name", type text}, {"Product ID", type text}, 
        {"Product Category", type text}, {"Unit Price", type number}, {"Qty Sold", Int64.Type}, 
        {"Revenue", type number}, {"Profit", type number}, {"Weekday", type text}, 
        {"Year", Int64.Type}, {"Month", type text}
    }),

    // 4. Convert Excel Serial Date to a proper Power BI Date type
    Convert_Serial_Date = Table.TransformColumns(Set_Initial_Types, {
        {"Date", each Date.From(Number.From(_)), type date}
    }),

    // 5. Clean text columns (Trimming whitespace for data integrity)
    Trim_Text = Table.TransformColumns(Convert_Serial_Date, {
        {"City", Text.Trim, type text}, {"Branch", Text.Trim, type text}, 
        {"Shop Name", Text.Trim, type text}, {"Product Category", Text.Trim, type text}
    }),

    // 6. Professionalize headers for report readiness
    Renamed_Columns = Table.RenameColumns(Trim_Text,{
        {"Transaction ID", "ID"}, 
        {"Qty Sold", "Quantity"}, 
        {"Revenue", "Gross Revenue"},
        {"Unit Price", "Price Per Unit"}
    }),

    // 7. Reorder columns for logical flow: Identity -> Location -> Product -> Performance
    Reordered_Columns = Table.ReorderColumns(Renamed_Columns, {
        "ID", "Date", "Year", "Month", "Weekday", "City", "Branch", "Shop Name", 
        "Product ID", "Product Category", "Price Per Unit", "Quantity", "Gross Revenue", "Profit"
    })
in
    Reordered_Columns
