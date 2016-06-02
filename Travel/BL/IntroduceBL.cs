using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entitytip;
namespace BL
{
    public class IntroduceBL
    {
        
        public Introduce Message(string SceneID)
        {
         return Introduce.get(SceneID);

        }

    }
}
