﻿using AutoClutch.Controller;
using AutoClutch.Core.Interfaces;
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
    public class ContractStatusesODataController : ODataApiController<contractStatus>
    {
        private IService<contractStatus> _contractStatusService;

        public ContractStatusesODataController(IService<contractStatus> contractStatusService)
            : base(contractStatusService)
        {
            _contractStatusService = contractStatusService;
        }

    }
}
