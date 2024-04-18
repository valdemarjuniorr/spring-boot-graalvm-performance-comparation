# It will run performance test on JVM
jvm:
	./mvnw clean package -DskipTests
	./scripts/record.sh jvm

# It will run performance test on native image
native:
	./mvnw -Pnative native:compile
	./scripts/record.sh native

native-constrained:
	./mvnw -Pnative native:compile
	./scripts/record.sh native-constrained
