﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ExerciceApi2.Data.Dtos
{
    public class ClientsDTO
    {
        public string NomClient { get; set; }
        public string VilleClient { get; set; }

        public VentesDTO ent2 { get; set; }
}
}
