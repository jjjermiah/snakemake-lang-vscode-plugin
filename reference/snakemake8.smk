
storage gcs: 
    provider="gs",
    max_requests_per_second="test",
    project="test",
    keep_local="test",
    stay_on_remote="test",
    retries="test",
    username="test",
    password="test",
    active_mode="test",
    endpoint_url="test",
    restricted_access_token="test",
    access_key="test",
    secret_key="test",
    token="test",
    signature_version="test",
    not_sync_mtime="test",
    host="test",
    timeout="test",
    sandbox="test"

rule complex_conversion:
    input:
        storage.gcs("text")
        ANY_VARIABLE = storage.gcs("text"),
        test = storage.ftp("file")
    output:
        "{dataset}/file.{group}.txt"
    shell:
        "somecommand --group {wildcards.group} < {input} > {output}"


