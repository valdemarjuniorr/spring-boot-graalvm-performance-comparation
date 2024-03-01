# It will run performance test on JVM
jvm:
	mvn clean package -DskipTests
	./scripts/record.sh jvm

# It will run performance test on native image
native:
	mvn -Pnative native:compile
	./scripts/record.sh native
