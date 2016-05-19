using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entitytip;

namespace BL
{
    public  class GetPreviews
    {
        public void BGI(string SceneID, out string name)
        {
            GetPreview.getp(SceneID, out name);
        }
    }
}
