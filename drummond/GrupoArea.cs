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
    
    public partial class GrupoArea
    {
        public GrupoArea()
        {
            this.Empleados = new HashSet<Empleados>();
        }
    
        public int IdGrupoArea { get; set; }
        public int AreaCod { get; set; }
        public int GrupoId { get; set; }
    
        public virtual Area Area { get; set; }
        public virtual Grupo Grupo { get; set; }
        public virtual ICollection<Empleados> Empleados { get; set; }
    }
}
