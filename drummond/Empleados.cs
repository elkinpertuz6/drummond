//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace drummond
{
    using System;
    using System.Collections.Generic;
    
    public partial class Empleados
    {
        public int Id { get; set; }
        public int GrupoAreaIdGrupoArea { get; set; }
        public int CargosCod { get; set; }
        public int Nit { get; set; }
        public string nombres { get; set; }
        public string apellidos { get; set; }
        public bool Lider { get; set; }
        public string JefeCod { get; set; }
    
        public virtual GrupoArea GrupoArea { get; set; }
        public virtual Cargos Cargos { get; set; }
    }
}
