# An Assortment of One Liners
!! = requires elevation

## Windows
!! `netstat -anob`
> Displays listening/connected port and where it's bound, the foreign address if there's a connection, the PID of the corresponding process, and the executable that created the connection/listening port.

```
PS C:\Windows\system32> netstat -anob

Active Connections

  Proto  Local Address          Foreign Address        State           PID
  TCP    0.0.0.0:80             0.0.0.0:0              LISTENING       4
 Can not obtain ownership information
  TCP    0.0.0.0:135            0.0.0.0:0              LISTENING       748
  RpcSs
 [svchost.exe]
  TCP    0.0.0.0:445            0.0.0.0:0              LISTENING       4
  ```

`certutil -hashfile C:\path\to\file SHA256`
> Computes the cryptographic hash of a given file. Available hash algorithms are: MD2 MD4 MD5 SHA1 SHA256 SHA384 SHA512.

```
PS C:\Windows\system32> certutil -hashfile C:\windows\bfsvc.exe SHA256
SHA256 hash of file C:\windows\bfsvc.exe:
af84cc5eb47bd4c4d8bc071edc10e3516b82def3b02526f5f6e8077032ae3e4e
CertUtil: -hashfile command completed successfully.

```
