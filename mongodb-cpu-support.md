## MongoDB CPU support

MongoDB only supports newer CPUs, like:
- x86_64 that have AVX instruction
- newer arm64, like RasPi4, OrangePi 5, M1 Air arm64

Not supporting these, so need to compile MongoDB for that CPU, or use Qemu:
-  RasPi4 and older RasPi
-  Intel Core 2 Duo, that does not have AVX

Info about requiring newer arm64:
- https://www.mongodb.com/community/forums/t/mongodb-community-6-0-5-illegal-instruction-core-dumped-ubuntu-18-04-on-cortex-a72-aarch64/223970/3

Crosscompiling MongoDB for RasPi4 and older:
- https://github.com/123swk123/mongodb-armv8-a

Compiling MongoDB for x86_64 where CPU does not have AVX instructions:
- https://github.com/GermanAizek/mongodb-without-avx/blob/main/Dockerfile

Error running MongoDB 8 at RasPi4, when not using Qemu:

```
December 06 11:48:49 rpi4b systemd[1]: Started mongod.service - MongoDB Database Server.
December 06 11:48:53 rpi4b mongod[3749]: /usr/bin/mongod: line 4:  3750 Illegal instruction     (core dumped) /usr/bin/mongodreal --co>
December 06 11:48:53 rpi4b systemd[1]: mongod.service: Main process exited, code=exited, status=132/n/a
December 06 11:48:53 rpi4b systemd[1]: mongod.service: Failed with result 'exit-code'.
```

Detecting does x86_64 CPU support AVX:
- https://github.com/wekan/wekan/issues/4321#issuecomment-2469332492

Running MongoDB with Qemu on CPU that does not support AVX, like Intel Core 2 Duo:
- https://github.com/stevekerrison/mongo-qemu-avx
