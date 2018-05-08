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
    public class ReceivingReportDetailsController : BaseApiController<receivingReportDetail>
    {
        private IService<receivingReportDetail> _receivingReportDetailService;

        public ReceivingReportDetailsController(IService<receivingReportDetail> receivingReportDetailService, ILogService<receivingReportDetail> logService)
            : base(receivingReportDetailService, logService)
        {
            _receivingReportDetailService = receivingReportDetailService;
        }

    }
}
