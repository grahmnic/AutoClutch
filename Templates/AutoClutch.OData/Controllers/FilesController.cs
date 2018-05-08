﻿using AutoClutch.Core.Interfaces;
using $safeprojectname$.Core.Interfaces;
using $safeprojectname$.Core.Models;
using $safeprojectname$.DependencyResolution;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Security.Principal;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;
using System.Web.OData;
using System.Web.OData.Routing;

namespace $safeprojectname$.Controllers
{
    public class FilesController : ODataApiController<file>
    {
        private IService<file> _fileService;

        public FilesController(IService<file> fileService, ILogService<file> logService)
            : base(fileService, logService)
        {
            _fileService = fileService;
        }
    }
}