﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entitytip;
namespace BL
{
    public class IntroduceBL
    {
        public void Message(string SceneID,out string SceneName)
        {
            Introduce.Give(SceneID,out SceneName);
        }
    }
}
