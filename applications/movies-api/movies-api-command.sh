#/bin/bash
echo "START SCRIPT !!!!"
export DB_URL=$(printenv | grep -i 'mongodb'| grep -i 'addr' | cut -d "=" -f2)
npm start