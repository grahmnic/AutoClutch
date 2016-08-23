﻿using AutoClutch.Auto.Core.Objects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AutoClutch.Auto.Core.Interfaces
{
    public interface ILogService : IService<userActionLog>
    {
        void Info(Exception ex);

        IEnumerable<userActionLog> GetLatestUserActionLogs(int take = 10);

        Task<userActionLog> InfoAsync(string typeName, string typeFullName, int recordId, EventType eventType, string message, string entityName, string loggedInUserName, string toString = null);

        userActionLog Info(string typeName, string typeFullName, int recordId, EventType eventType, string message, string entityName, string loggedInUserName);
    }

    public interface ILogService<TEntity> : ILogService, IService<userActionLog>
    {
        new IEnumerable<userActionLog> GetLatestUserActionLogs(int take = 10);

        Task<userActionLog> InfoAsync(TEntity entity, int recordId, EventType eventType, string message = null, string entityName = null, string loggedInUserName = null, bool useToString = false);

        userActionLog Info(TEntity entity, int recordId, EventType eventType, string message = null, string entityName = null, string loggedInUserName = null);

        Task<userActionLog> InfoAsync(string message);

        userActionLog Info(string message);
    }
}
