using System;
using System.Collections.Generic;

namespace project_demo.Models;

public partial class Room
{
    public long Id { get; set; }

    public bool Isoccupied { get; set; }

    public virtual User IdNavigation { get; set; } = null!;
}
