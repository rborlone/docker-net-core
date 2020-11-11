using System;
using System.Collections.Generic;


namespace netCoreExample.Models
{
    public partial class Tutorial
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public bool Published { get; set; }
    }
}