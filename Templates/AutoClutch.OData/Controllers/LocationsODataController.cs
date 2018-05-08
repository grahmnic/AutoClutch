﻿using AutoClutch.Core.Interfaces;
using $safeprojectname$.Core.Interfaces;
using $safeprojectname$.Core.Models;
using $safeprojectname$.DependencyResolution;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace $safeprojectname$.Controllers
{
    public class LocationsODataController : ODataApiController<location>
    {
        private IService<location> _locationService;

        public LocationsODataController(IService<location> locationService, ILogService<location> logService)
            : base(locationService, logService)
        {
            _locationService = locationService;
        }

    }
}