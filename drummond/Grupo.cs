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
    
    public partial class Grupo
    {
        public Grupo()
        {
            this.GrupoArea = new HashSet<GrupoArea>();
            this.Subarea = new HashSet<Subarea>();
        }
    
        public int Id { get; set; }
        public string nombre { get; set; }
    
        public virtual ICollection<GrupoArea> GrupoArea { get; set; }
        public virtual ICollection<Subarea> Subarea { get; set; }
    }
}
