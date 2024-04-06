using System;
using System.Collections.Generic;

namespace project_demo.Models;

public partial class User
{
    public string Username { get; set; } = null!;

    public string Password { get; set; } = null!;

    public long Id { get; set; }

    public virtual Room? Room { get; set; }
}
