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
    
    public partial class DepartamentoSede
    {
        public int IdDepSede { get; set; }
        public int SedeId { get; set; }
        public int departamentoId { get; set; }
    
        public virtual Sede Sede { get; set; }
        public virtual departamento departamento { get; set; }
    }
}