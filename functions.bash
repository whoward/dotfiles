function json_escape(){
   python -c 'import json,sys; print json.dumps(sys.stdin.read())' < $1
}
