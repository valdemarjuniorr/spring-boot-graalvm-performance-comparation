# It will run performance test on JVM
jvm:
	mvn spring-boot:run
	./scripts/record.sh jvm

# It will run performance test on native image
native:
	mvn -Pnative native:compile
	./scripts/record.sh native
