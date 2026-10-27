# ASP.NET Web Forms CRUD Demo

A small C# ASP.NET Web Forms project demonstrating a form-based data-entry interface and basic create/read/update/delete-style application patterns.

## Technology

- C#
- ASP.NET Web Forms
- .NET Framework (see `crudNew.csproj`)
- Visual Studio and IIS Express

## Run locally

1. Install Visual Studio with the ASP.NET web workload and the targeting pack required by `crudNew.csproj`.
2. Open the `crudNew.csproj` project or create/open its solution in Visual Studio.
3. Inspect `Web.config` and configure the database connection for your own local SQL Server environment if the workflow requires a database.
4. Restore the project’s NuGet packages.
5. Run the project with IIS Express.

## Important

Do not commit real database credentials or personal data. Before using this as a reusable CRUD example, add validation, error handling, and parameterized database access throughout the data layer.

## Main files

- `WebForm1.aspx` — page markup
- `WebForm1.aspx.cs` — code-behind event handling
- `Web.config` — application configuration
