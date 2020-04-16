namespace LDMS.Services
{
    public enum ServiceResultCodes
    {
        /// <summary>
        /// Request Success
        /// </summary>
        Ok = 200,
        /// <summary>
        /// Bad Request
        /// </summary>
        Bad = 400,
        /// <summary>
        /// Access Denied
        /// </summary>
        Denied = 401,
        /// <summary>
        /// Internal Error
        /// </summary>
        Error = 500,
        /// <summary>
        /// Not Found Request
        /// </summary>
        NotFound = 44
    }
}
