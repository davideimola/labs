import jenkins


def test_jenkins():
    conn = jenkins.Jenkins('http://jenkins.example.com')
    assert conn.get_node_config('node1') == '<?xml version="1.0" encoding="UTF-8"?><slave><slave>'
