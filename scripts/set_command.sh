if [ "$1" == "jvm" ]; then
  DEMO_COMMAND="java -jar target/web-0.0.1-SNAPSHOT.jar -Xmx256m"
  echo "Switched to JIT: $DEMO_COMMAND"
elif [ "$1" == "native" ]; then
  DEMO_COMMAND="./target/web -Xmx256m"
  echo "Switched to AOT native executable: $DEMO_COMMAND"
elif [ "$1" == "native-constrained" ]; then
  DEMO_COMMAND="./target/web -Xmx64m"
else
  echo "USAGE: $0 [jvm|native|native-constrained]"
  exit 255
fi
