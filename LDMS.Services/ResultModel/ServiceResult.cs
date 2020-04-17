using System;
using System.Collections.Generic; 

namespace LDMS.Services
{
    /// <summary>
    /// 
    /// </summary>
    public class ServiceResult
    { /// <summary>
      /// 
      /// </summary>
        public ServiceResultCodes Code { get; private set; }
        /// <summary>
        /// 
        /// </summary>
        public List<string> Errors { get; private set; }
        /// <summary>
        /// 
        /// </summary>
        public List<MessageResult> ErrorResult { get; private set; }
        /// <summary>
        /// 
        /// </summary>
        public dynamic Data { get; private set; }
        /// <summary>
        /// 
        /// </summary>
        public ServiceResult()
        {
            Code = ServiceResultCodes.Ok;
            ErrorResult = new List<MessageResult>();
            Errors = new List<string>();
        }/// <summary>
         /// 
         /// </summary>
         /// <param name="data"></param>
        public ServiceResult(dynamic data) : this()
        {
            Data = data;
        }/// <summary>
         /// 
         /// </summary>
         /// <param name="ex"></param>
        public ServiceResult(Exception ex) : this()
        {
            Code = ServiceResultCodes.Error;
            Errors = new List<string>
            {
                "Message: " + ex.Message,
                "ExceptionType: " + ex.GetType().ToString(),
                "StackTrace" + ex.StackTrace
            };

            Exception innerException = ex.InnerException;
            while (innerException != null)
            {
                Errors.Add("------------------------------");
                Errors.Add("Message: " + innerException.Message);
                Errors.Add("ExceptionType: " + innerException.GetType().ToString());
                Errors.Add("StackTrace" + innerException.StackTrace);
                innerException = innerException.InnerException;
            }
        }
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public void CreateResponseData(dynamic data)
        {
            Data = data;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public bool IsOk => Code == ServiceResultCodes.Ok;
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns> 
        public bool HasError => Errors != null && Errors.Count > 0;
        /// <summary>
        /// 
        /// </summary>
        /// <param name="message"></param>
        public void AddException(string message)
        {
            Code = ServiceResultCodes.Error;
            Errors.Add("Message: " + message);
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="ex"></param>
        public void AddException(Exception ex)
        {
            Code = ServiceResultCodes.Error;
            Errors = new List<string>
            {
                "Message: " + ex.Message,
                "ExceptionType: " + ex.GetType().ToString(),
                "StackTrace" + ex.StackTrace
            };

            Exception innerException = ex.InnerException;
            while (innerException != null)
            {
                Errors.Add("------------------------------");
                Errors.Add("Message: " + innerException.Message);
                Errors.Add("ExceptionType: " + innerException.GetType().ToString());
                Errors.Add("StackTrace" + innerException.StackTrace);
                innerException = innerException.InnerException;
            }
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="message"></param>
        public void AddError(string message)
        {
            (Errors).Add(message);
            Code =ServiceResultCodes.Bad;
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="message"></param>
        public void AddError(List<string> message)
        {
            if (message != null)
            {
                (Errors).AddRange(message.ToArray());
                Code =ServiceResultCodes.Bad;
            }
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="messages"></param>
        public void AddError(params string[] messages)
        {
            Code =ServiceResultCodes.Bad;
            (Errors).AddRange(messages);
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="code"></param>
        /// <param name="message"></param>
        public void AddError(int code, string message)
        {
            (ErrorResult).Add(new MessageResult() { ErrorCode = code, Message = message });
            AddError(message);
        }
    }
}
