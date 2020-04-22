def build_message(response):
    message = {
        "success": True,
        "error": "",
    }
    if response.status >= 400:
        message["success"] = False
        message["error"] = response.body
    return message


def strtobool(val):
    true_vals = ['yes', 'y', '', '1']
    false_vals = ['no', 'n', '0']
    try:
        val = val.lower().strip()
    except AttributeError:
        val = str(val).lower().strip()
    if val in true_vals:
        return True
    elif val in false_vals:
        return False
    else:
        raise ValueError
