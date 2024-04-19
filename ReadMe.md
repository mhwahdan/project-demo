# C# project demo

## What is this
This is a smiple demonastration of how to create a simple application with GUI and database conncetivity

## Project components
- Windows forms applicaiton
- ORM with a small database using [entity frame work core]

## Tool required
- Visual studio (Any version)
- [.NET core frame work version 8]
- [Microsoft SQL server] (Any version)
- [Microsoft SQL server managment studio] (Same version as Microsoft SQL server)

## Steps to install

- Clone the repo by typing the following in the cmd

    ```bash
    git clone https://github.com/mhwahdan/project-demo.git
    ```
- Open the Microsoft SQL server managment studio and excute the [Database script]
- Run the application from visual studio and you are ready to go

## How to update the data base:
- Update your database from the Microsoft SQL server managment studio
- open the application using visual studio
- [open the nugget cmd]
- Run the following command and the changes should reflect in your project

    ```bash
    Scaffold-DbContext "Data Source=localhost;Initial Catalog=project-databse;Integrated Security=True;Trust Server Certificate=True" Microsoft.EntityFrameworkCore.SqlServer -OutputDir Models -Context HotelDB_Context -f
    ```

[entity frame work core]: https://learn.microsoft.com/en-us/ef/core/
[.NET core frame work version 8]: https://dotnet.microsoft.com/en-us/download/dotnet/8.0
[Microsoft SQL server]: https://go.microsoft.com/fwlink/p/?linkid=2215158&clcid=0x409&culture=en-us&country=us
[Microsoft SQL server managment studio]: https://aka.ms/ssmsfullsetup
[Database script]: https://github.com/mhwahdan/project-demo/blob/main/project.sql
[open the nugget cmd]: https://stackoverflow.com/questions/62997947/how-to-open-up-nuget-console#:~:text=You%20can%20open%20up%20NuGet%20Console%20Just%20by,%5BClick%20On%20It%5D%20The%20Console%20should%20pop%20up.