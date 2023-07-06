using DockerTestBack.Data;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace DockerTestBack.Controllers;
    
[ApiController]
[Route("[controller]")]
public class PersonasController: ControllerBase
{
    private readonly DockerTestDbContext _dockerTestDbContext;
    public PersonasController(DockerTestDbContext dockerTestDbContext)
    {
        _dockerTestDbContext = dockerTestDbContext;
    }

    [HttpGet]
    public async Task<IActionResult> GetAsync()
    {
        var personas = await _dockerTestDbContext.Personas.ToListAsync();
        return Ok(personas);
    }
}