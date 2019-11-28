# pam_mates.py

def pam_sm_authenticate(pamh, flags, argv):
    print("Quant es 0! ?")
    resposta=raw_input()
    if int(resposta) == 1:
        return pamh.PAM_SUCCESS
    else:
        return pamh.PAM_AUTHTOK_ERR

def pam_sm_setcred(pamh, flags, argv):
    return pamh.PAM_SUCCESS

def pam_sm_acct_mgmt(pamh, flags, argv):
    return pamh.PAM_SUCCESS

def pam_sm_open_session(pamh, flags, argv):
    return pamh.PAM_SUCCESS

def pam_sm_close_session(pamh, flags, argv):
    return pamh.PAM_SUCCESS

def pam_sm_chauthtok(pamh, flags, argv):
    return pamh.PAM_SUCCESS



