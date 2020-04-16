using System.Collections.Generic;

namespace LDMS.Services
{
    public class CodeServiceResult
    {
        private dynamic _data;
        public int Code { get; set; }
        public List<MessageResult> Errors { get; set; }
        public dynamic Data
        {
            get => _data;
            set => _data = value;
        } 
        public CodeServiceResult()
        {
            Code = ServiceResultCodes.Ok.GetHashCode();
        }

        public bool IsOk()
        {
            return Code == ServiceResultCodes.Ok.GetHashCode();
        }

        public void AddError(int code, string message)
        {
            if (Errors == null)
            {
                Errors = new List<MessageResult>();
            }
            (Errors as List<MessageResult>).Add(new MessageResult() { ErrorCode = code, Message = message });
            Code = (int)ServiceResultCodes.Bad;
        }

        public void AddError(List<MessageResult> messages)
        {
            Code = (int)ServiceResultCodes.Bad;
            Errors = new List<MessageResult>();
            (Errors as List<MessageResult>).AddRange(messages);
        }
    }

    public class MessageResult
    {
        public int ErrorCode { get; set; }
        public string Message { get; set; }
    }
}
