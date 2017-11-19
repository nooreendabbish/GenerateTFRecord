# degree of parallelism
p=40

echo gunzipping images with degree of parallelism: $p
time find "CL/" -name '*.gz' -print0 | xargs -0 -I {} -P $p gunzip {}
echo complete

