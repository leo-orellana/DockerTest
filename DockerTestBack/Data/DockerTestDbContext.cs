using DockerTestBack.Data.Entities;
using Microsoft.EntityFrameworkCore;

namespace DockerTestBack.Data;
     
public class DockerTestDbContext : DbContext
{
    public DockerTestDbContext(DbContextOptions<DockerTestDbContext> context) : base(context)
    {
    
    }
     
    public DbSet<Personas> Personas { get; set; }
}