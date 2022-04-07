host="fabmedical-583546.mongo.cosmos.azure.com"
username="fabmedical-583546"
password="jmpyYm779NLbb6dnNKw507NwoZ1chAdVo8kWNC7VdBEFZ69DJgqesYherDlyW8qzR6jBe7YZbH5BkAY7uqMktg=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
