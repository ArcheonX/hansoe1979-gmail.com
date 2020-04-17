using System.Collections.Generic;

namespace LDMS.Services
{
    public class ServiceResultTyped<T>
    {
        public int Code { get; set; }
        public List<string> Errors { get; set; }
        public List<MessageResult> ErrorResult { get; set; }
        public T Data { get; set; }

        public class MessageResult
        {
            public int ErrorCode { get; set; }
            public string Message { get; set; }
        }
    }
}
