using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DockerTestBack.Data.Entities;

public class Personas
{
    public int id { get; set; }
    public string? nombre { get; set; }
    public string? apellido { get; set; }
    public Int64 dni { get; set; }
    public DateTime fecha_nac { get; set; }
    public DateTime created_at { get; set; }
}
