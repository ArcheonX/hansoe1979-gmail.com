namespace LDMS.Services
{
    public enum ErrorCodes
    {
        ServerError = 1000,
        InvalidJson = 1001,
        AccessDenied = 1002,

        #region User
        InvalidUser = 2001,
        #endregion

        #region Claim
        NotFoundClaim = 4002,
        RequiredBillingDate = 4003,
        InvalidBillingDate = 4004,
        InvalidClaimType = 4005,
        NotFoundNationId = 4006,
        InvalidRequestAmount = 4007,
        NotFoundBeneficiary = 4008,
        NoActiveBenefitPlan = 4010,
        InvalidRemainAmount = 4013,
        AlreadyCancelClaim = 4016,
        #endregion

        #region Document
        InvalidFile = 5001,
        RequiredDocType1 = 5005,
        RequiredDocType2 = 5006,
        RequiredDocType3 = 5007,
        RequiredDocType4 = 5008,
        #endregion
    }
}
