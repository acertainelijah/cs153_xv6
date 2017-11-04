
_wc:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  printf(1, "%d %d %d %s\n", l, w, c, name);
}

int
main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	be 01 00 00 00       	mov    $0x1,%esi
  16:	83 ec 18             	sub    $0x18,%esp
  19:	8b 01                	mov    (%ecx),%eax
  1b:	8b 59 04             	mov    0x4(%ecx),%ebx
  1e:	83 c3 04             	add    $0x4,%ebx
  int fd, i;

  if(argc <= 1){
  21:	83 f8 01             	cmp    $0x1,%eax
  printf(1, "%d %d %d %s\n", l, w, c, name);
}

int
main(int argc, char *argv[])
{
  24:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  int fd, i;

  if(argc <= 1){
  27:	7e 62                	jle    8b <main+0x8b>
  29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    wc(0, "");
    exit(0);
  }

  for(i = 1; i < argc; i++){
    if((fd = open(argv[i], 0)) < 0){
  30:	83 ec 08             	sub    $0x8,%esp
  33:	6a 00                	push   $0x0
  35:	ff 33                	pushl  (%ebx)
  37:	e8 d6 03 00 00       	call   412 <open>
  3c:	83 c4 10             	add    $0x10,%esp
  3f:	85 c0                	test   %eax,%eax
  41:	89 c7                	mov    %eax,%edi
  43:	78 2b                	js     70 <main+0x70>
      printf(1, "wc: cannot open %s\n", argv[i]);
      exit(0);
    }
    wc(fd, argv[i]);
  45:	83 ec 08             	sub    $0x8,%esp
  48:	ff 33                	pushl  (%ebx)
  if(argc <= 1){
    wc(0, "");
    exit(0);
  }

  for(i = 1; i < argc; i++){
  4a:	83 c6 01             	add    $0x1,%esi
    if((fd = open(argv[i], 0)) < 0){
      printf(1, "wc: cannot open %s\n", argv[i]);
      exit(0);
    }
    wc(fd, argv[i]);
  4d:	50                   	push   %eax
  4e:	83 c3 04             	add    $0x4,%ebx
  51:	e8 5a 00 00 00       	call   b0 <wc>
    close(fd);
  56:	89 3c 24             	mov    %edi,(%esp)
  59:	e8 9c 03 00 00       	call   3fa <close>
  if(argc <= 1){
    wc(0, "");
    exit(0);
  }

  for(i = 1; i < argc; i++){
  5e:	83 c4 10             	add    $0x10,%esp
  61:	39 75 e4             	cmp    %esi,-0x1c(%ebp)
  64:	75 ca                	jne    30 <main+0x30>
      exit(0);
    }
    wc(fd, argv[i]);
    close(fd);
  }
  exit(0);
  66:	83 ec 0c             	sub    $0xc,%esp
  69:	6a 00                	push   $0x0
  6b:	e8 62 03 00 00       	call   3d2 <exit>
    exit(0);
  }

  for(i = 1; i < argc; i++){
    if((fd = open(argv[i], 0)) < 0){
      printf(1, "wc: cannot open %s\n", argv[i]);
  70:	50                   	push   %eax
  71:	ff 33                	pushl  (%ebx)
  73:	68 73 08 00 00       	push   $0x873
  78:	6a 01                	push   $0x1
  7a:	e8 b1 04 00 00       	call   530 <printf>
      exit(0);
  7f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  86:	e8 47 03 00 00       	call   3d2 <exit>
main(int argc, char *argv[])
{
  int fd, i;

  if(argc <= 1){
    wc(0, "");
  8b:	52                   	push   %edx
  8c:	52                   	push   %edx
  8d:	68 65 08 00 00       	push   $0x865
  92:	6a 00                	push   $0x0
  94:	e8 17 00 00 00       	call   b0 <wc>
    exit(0);
  99:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  a0:	e8 2d 03 00 00       	call   3d2 <exit>
  a5:	66 90                	xchg   %ax,%ax
  a7:	66 90                	xchg   %ax,%ax
  a9:	66 90                	xchg   %ax,%ax
  ab:	66 90                	xchg   %ax,%ax
  ad:	66 90                	xchg   %ax,%ax
  af:	90                   	nop

000000b0 <wc>:

char buf[512];

void
wc(int fd, char *name)
{
  b0:	55                   	push   %ebp
  b1:	89 e5                	mov    %esp,%ebp
  b3:	57                   	push   %edi
  b4:	56                   	push   %esi
  b5:	53                   	push   %ebx
  int i, n;
  int l, w, c, inword;

  l = w = c = 0;
  inword = 0;
  b6:	31 f6                	xor    %esi,%esi
wc(int fd, char *name)
{
  int i, n;
  int l, w, c, inword;

  l = w = c = 0;
  b8:	31 db                	xor    %ebx,%ebx

char buf[512];

void
wc(int fd, char *name)
{
  ba:	83 ec 1c             	sub    $0x1c,%esp
  int i, n;
  int l, w, c, inword;

  l = w = c = 0;
  bd:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  c4:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  cb:	90                   	nop
  cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  inword = 0;
  while((n = read(fd, buf, sizeof(buf))) > 0){
  d0:	83 ec 04             	sub    $0x4,%esp
  d3:	68 00 02 00 00       	push   $0x200
  d8:	68 a0 0b 00 00       	push   $0xba0
  dd:	ff 75 08             	pushl  0x8(%ebp)
  e0:	e8 05 03 00 00       	call   3ea <read>
  e5:	83 c4 10             	add    $0x10,%esp
  e8:	83 f8 00             	cmp    $0x0,%eax
  eb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  ee:	7e 5f                	jle    14f <wc+0x9f>
  f0:	31 ff                	xor    %edi,%edi
  f2:	eb 0e                	jmp    102 <wc+0x52>
  f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    for(i=0; i<n; i++){
      c++;
      if(buf[i] == '\n')
        l++;
      if(strchr(" \r\t\n\v", buf[i]))
        inword = 0;
  f8:	31 f6                	xor    %esi,%esi
  int l, w, c, inword;

  l = w = c = 0;
  inword = 0;
  while((n = read(fd, buf, sizeof(buf))) > 0){
    for(i=0; i<n; i++){
  fa:	83 c7 01             	add    $0x1,%edi
  fd:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
 100:	74 3a                	je     13c <wc+0x8c>
      c++;
      if(buf[i] == '\n')
 102:	0f be 87 a0 0b 00 00 	movsbl 0xba0(%edi),%eax
        l++;
 109:	31 c9                	xor    %ecx,%ecx
 10b:	3c 0a                	cmp    $0xa,%al
 10d:	0f 94 c1             	sete   %cl
      if(strchr(" \r\t\n\v", buf[i]))
 110:	83 ec 08             	sub    $0x8,%esp
 113:	50                   	push   %eax
 114:	68 50 08 00 00       	push   $0x850
  inword = 0;
  while((n = read(fd, buf, sizeof(buf))) > 0){
    for(i=0; i<n; i++){
      c++;
      if(buf[i] == '\n')
        l++;
 119:	01 cb                	add    %ecx,%ebx
      if(strchr(" \r\t\n\v", buf[i]))
 11b:	e8 40 01 00 00       	call   260 <strchr>
 120:	83 c4 10             	add    $0x10,%esp
 123:	85 c0                	test   %eax,%eax
 125:	75 d1                	jne    f8 <wc+0x48>
        inword = 0;
      else if(!inword){
 127:	85 f6                	test   %esi,%esi
 129:	75 1d                	jne    148 <wc+0x98>
        w++;
 12b:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
  int l, w, c, inword;

  l = w = c = 0;
  inword = 0;
  while((n = read(fd, buf, sizeof(buf))) > 0){
    for(i=0; i<n; i++){
 12f:	83 c7 01             	add    $0x1,%edi
 132:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
        l++;
      if(strchr(" \r\t\n\v", buf[i]))
        inword = 0;
      else if(!inword){
        w++;
        inword = 1;
 135:	be 01 00 00 00       	mov    $0x1,%esi
  int l, w, c, inword;

  l = w = c = 0;
  inword = 0;
  while((n = read(fd, buf, sizeof(buf))) > 0){
    for(i=0; i<n; i++){
 13a:	75 c6                	jne    102 <wc+0x52>
 13c:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 13f:	01 55 dc             	add    %edx,-0x24(%ebp)
 142:	eb 8c                	jmp    d0 <wc+0x20>
 144:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 148:	be 01 00 00 00       	mov    $0x1,%esi
 14d:	eb ab                	jmp    fa <wc+0x4a>
        w++;
        inword = 1;
      }
    }
  }
  if(n < 0){
 14f:	75 24                	jne    175 <wc+0xc5>
    printf(1, "wc: read error\n");
    exit(0);
  }
  printf(1, "%d %d %d %s\n", l, w, c, name);
 151:	83 ec 08             	sub    $0x8,%esp
 154:	ff 75 0c             	pushl  0xc(%ebp)
 157:	ff 75 dc             	pushl  -0x24(%ebp)
 15a:	ff 75 e0             	pushl  -0x20(%ebp)
 15d:	53                   	push   %ebx
 15e:	68 66 08 00 00       	push   $0x866
 163:	6a 01                	push   $0x1
 165:	e8 c6 03 00 00       	call   530 <printf>
}
 16a:	83 c4 20             	add    $0x20,%esp
 16d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 170:	5b                   	pop    %ebx
 171:	5e                   	pop    %esi
 172:	5f                   	pop    %edi
 173:	5d                   	pop    %ebp
 174:	c3                   	ret    
        inword = 1;
      }
    }
  }
  if(n < 0){
    printf(1, "wc: read error\n");
 175:	83 ec 08             	sub    $0x8,%esp
 178:	68 56 08 00 00       	push   $0x856
 17d:	6a 01                	push   $0x1
 17f:	e8 ac 03 00 00       	call   530 <printf>
    exit(0);
 184:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 18b:	e8 42 02 00 00       	call   3d2 <exit>

00000190 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
 190:	55                   	push   %ebp
 191:	89 e5                	mov    %esp,%ebp
 193:	53                   	push   %ebx
 194:	8b 45 08             	mov    0x8(%ebp),%eax
 197:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 19a:	89 c2                	mov    %eax,%edx
 19c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1a0:	83 c1 01             	add    $0x1,%ecx
 1a3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 1a7:	83 c2 01             	add    $0x1,%edx
 1aa:	84 db                	test   %bl,%bl
 1ac:	88 5a ff             	mov    %bl,-0x1(%edx)
 1af:	75 ef                	jne    1a0 <strcpy+0x10>
    ;
  return os;
}
 1b1:	5b                   	pop    %ebx
 1b2:	5d                   	pop    %ebp
 1b3:	c3                   	ret    
 1b4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1ba:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000001c0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 1c0:	55                   	push   %ebp
 1c1:	89 e5                	mov    %esp,%ebp
 1c3:	56                   	push   %esi
 1c4:	53                   	push   %ebx
 1c5:	8b 55 08             	mov    0x8(%ebp),%edx
 1c8:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 1cb:	0f b6 02             	movzbl (%edx),%eax
 1ce:	0f b6 19             	movzbl (%ecx),%ebx
 1d1:	84 c0                	test   %al,%al
 1d3:	75 1e                	jne    1f3 <strcmp+0x33>
 1d5:	eb 29                	jmp    200 <strcmp+0x40>
 1d7:	89 f6                	mov    %esi,%esi
 1d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 1e0:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 1e3:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 1e6:	8d 71 01             	lea    0x1(%ecx),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 1e9:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 1ed:	84 c0                	test   %al,%al
 1ef:	74 0f                	je     200 <strcmp+0x40>
 1f1:	89 f1                	mov    %esi,%ecx
 1f3:	38 d8                	cmp    %bl,%al
 1f5:	74 e9                	je     1e0 <strcmp+0x20>
    p++, q++;
  return (uchar)*p - (uchar)*q;
 1f7:	29 d8                	sub    %ebx,%eax
}
 1f9:	5b                   	pop    %ebx
 1fa:	5e                   	pop    %esi
 1fb:	5d                   	pop    %ebp
 1fc:	c3                   	ret    
 1fd:	8d 76 00             	lea    0x0(%esi),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 200:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
 202:	29 d8                	sub    %ebx,%eax
}
 204:	5b                   	pop    %ebx
 205:	5e                   	pop    %esi
 206:	5d                   	pop    %ebp
 207:	c3                   	ret    
 208:	90                   	nop
 209:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000210 <strlen>:

uint
strlen(char *s)
{
 210:	55                   	push   %ebp
 211:	89 e5                	mov    %esp,%ebp
 213:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 216:	80 39 00             	cmpb   $0x0,(%ecx)
 219:	74 12                	je     22d <strlen+0x1d>
 21b:	31 d2                	xor    %edx,%edx
 21d:	8d 76 00             	lea    0x0(%esi),%esi
 220:	83 c2 01             	add    $0x1,%edx
 223:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 227:	89 d0                	mov    %edx,%eax
 229:	75 f5                	jne    220 <strlen+0x10>
    ;
  return n;
}
 22b:	5d                   	pop    %ebp
 22c:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
 22d:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
 22f:	5d                   	pop    %ebp
 230:	c3                   	ret    
 231:	eb 0d                	jmp    240 <memset>
 233:	90                   	nop
 234:	90                   	nop
 235:	90                   	nop
 236:	90                   	nop
 237:	90                   	nop
 238:	90                   	nop
 239:	90                   	nop
 23a:	90                   	nop
 23b:	90                   	nop
 23c:	90                   	nop
 23d:	90                   	nop
 23e:	90                   	nop
 23f:	90                   	nop

00000240 <memset>:

void*
memset(void *dst, int c, uint n)
{
 240:	55                   	push   %ebp
 241:	89 e5                	mov    %esp,%ebp
 243:	57                   	push   %edi
 244:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 247:	8b 4d 10             	mov    0x10(%ebp),%ecx
 24a:	8b 45 0c             	mov    0xc(%ebp),%eax
 24d:	89 d7                	mov    %edx,%edi
 24f:	fc                   	cld    
 250:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 252:	89 d0                	mov    %edx,%eax
 254:	5f                   	pop    %edi
 255:	5d                   	pop    %ebp
 256:	c3                   	ret    
 257:	89 f6                	mov    %esi,%esi
 259:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000260 <strchr>:

char*
strchr(const char *s, char c)
{
 260:	55                   	push   %ebp
 261:	89 e5                	mov    %esp,%ebp
 263:	53                   	push   %ebx
 264:	8b 45 08             	mov    0x8(%ebp),%eax
 267:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 26a:	0f b6 10             	movzbl (%eax),%edx
 26d:	84 d2                	test   %dl,%dl
 26f:	74 1d                	je     28e <strchr+0x2e>
    if(*s == c)
 271:	38 d3                	cmp    %dl,%bl
 273:	89 d9                	mov    %ebx,%ecx
 275:	75 0d                	jne    284 <strchr+0x24>
 277:	eb 17                	jmp    290 <strchr+0x30>
 279:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 280:	38 ca                	cmp    %cl,%dl
 282:	74 0c                	je     290 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 284:	83 c0 01             	add    $0x1,%eax
 287:	0f b6 10             	movzbl (%eax),%edx
 28a:	84 d2                	test   %dl,%dl
 28c:	75 f2                	jne    280 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
 28e:	31 c0                	xor    %eax,%eax
}
 290:	5b                   	pop    %ebx
 291:	5d                   	pop    %ebp
 292:	c3                   	ret    
 293:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 299:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002a0 <gets>:

char*
gets(char *buf, int max)
{
 2a0:	55                   	push   %ebp
 2a1:	89 e5                	mov    %esp,%ebp
 2a3:	57                   	push   %edi
 2a4:	56                   	push   %esi
 2a5:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 2a6:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
 2a8:	8d 7d e7             	lea    -0x19(%ebp),%edi
  return 0;
}

char*
gets(char *buf, int max)
{
 2ab:	83 ec 1c             	sub    $0x1c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 2ae:	eb 29                	jmp    2d9 <gets+0x39>
    cc = read(0, &c, 1);
 2b0:	83 ec 04             	sub    $0x4,%esp
 2b3:	6a 01                	push   $0x1
 2b5:	57                   	push   %edi
 2b6:	6a 00                	push   $0x0
 2b8:	e8 2d 01 00 00       	call   3ea <read>
    if(cc < 1)
 2bd:	83 c4 10             	add    $0x10,%esp
 2c0:	85 c0                	test   %eax,%eax
 2c2:	7e 1d                	jle    2e1 <gets+0x41>
      break;
    buf[i++] = c;
 2c4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 2c8:	8b 55 08             	mov    0x8(%ebp),%edx
 2cb:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
 2cd:	3c 0a                	cmp    $0xa,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 2cf:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 2d3:	74 1b                	je     2f0 <gets+0x50>
 2d5:	3c 0d                	cmp    $0xd,%al
 2d7:	74 17                	je     2f0 <gets+0x50>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 2d9:	8d 5e 01             	lea    0x1(%esi),%ebx
 2dc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 2df:	7c cf                	jl     2b0 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 2e1:	8b 45 08             	mov    0x8(%ebp),%eax
 2e4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 2e8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2eb:	5b                   	pop    %ebx
 2ec:	5e                   	pop    %esi
 2ed:	5f                   	pop    %edi
 2ee:	5d                   	pop    %ebp
 2ef:	c3                   	ret    
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 2f0:	8b 45 08             	mov    0x8(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 2f3:	89 de                	mov    %ebx,%esi
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 2f5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 2f9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2fc:	5b                   	pop    %ebx
 2fd:	5e                   	pop    %esi
 2fe:	5f                   	pop    %edi
 2ff:	5d                   	pop    %ebp
 300:	c3                   	ret    
 301:	eb 0d                	jmp    310 <stat>
 303:	90                   	nop
 304:	90                   	nop
 305:	90                   	nop
 306:	90                   	nop
 307:	90                   	nop
 308:	90                   	nop
 309:	90                   	nop
 30a:	90                   	nop
 30b:	90                   	nop
 30c:	90                   	nop
 30d:	90                   	nop
 30e:	90                   	nop
 30f:	90                   	nop

00000310 <stat>:

int
stat(char *n, struct stat *st)
{
 310:	55                   	push   %ebp
 311:	89 e5                	mov    %esp,%ebp
 313:	56                   	push   %esi
 314:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 315:	83 ec 08             	sub    $0x8,%esp
 318:	6a 00                	push   $0x0
 31a:	ff 75 08             	pushl  0x8(%ebp)
 31d:	e8 f0 00 00 00       	call   412 <open>
  if(fd < 0)
 322:	83 c4 10             	add    $0x10,%esp
 325:	85 c0                	test   %eax,%eax
 327:	78 27                	js     350 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 329:	83 ec 08             	sub    $0x8,%esp
 32c:	ff 75 0c             	pushl  0xc(%ebp)
 32f:	89 c3                	mov    %eax,%ebx
 331:	50                   	push   %eax
 332:	e8 f3 00 00 00       	call   42a <fstat>
 337:	89 c6                	mov    %eax,%esi
  close(fd);
 339:	89 1c 24             	mov    %ebx,(%esp)
 33c:	e8 b9 00 00 00       	call   3fa <close>
  return r;
 341:	83 c4 10             	add    $0x10,%esp
 344:	89 f0                	mov    %esi,%eax
}
 346:	8d 65 f8             	lea    -0x8(%ebp),%esp
 349:	5b                   	pop    %ebx
 34a:	5e                   	pop    %esi
 34b:	5d                   	pop    %ebp
 34c:	c3                   	ret    
 34d:	8d 76 00             	lea    0x0(%esi),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
 350:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 355:	eb ef                	jmp    346 <stat+0x36>
 357:	89 f6                	mov    %esi,%esi
 359:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000360 <atoi>:
  return r;
}

int
atoi(const char *s)
{
 360:	55                   	push   %ebp
 361:	89 e5                	mov    %esp,%ebp
 363:	53                   	push   %ebx
 364:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 367:	0f be 11             	movsbl (%ecx),%edx
 36a:	8d 42 d0             	lea    -0x30(%edx),%eax
 36d:	3c 09                	cmp    $0x9,%al
 36f:	b8 00 00 00 00       	mov    $0x0,%eax
 374:	77 1f                	ja     395 <atoi+0x35>
 376:	8d 76 00             	lea    0x0(%esi),%esi
 379:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 380:	8d 04 80             	lea    (%eax,%eax,4),%eax
 383:	83 c1 01             	add    $0x1,%ecx
 386:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 38a:	0f be 11             	movsbl (%ecx),%edx
 38d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 390:	80 fb 09             	cmp    $0x9,%bl
 393:	76 eb                	jbe    380 <atoi+0x20>
    n = n*10 + *s++ - '0';
  return n;
}
 395:	5b                   	pop    %ebx
 396:	5d                   	pop    %ebp
 397:	c3                   	ret    
 398:	90                   	nop
 399:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003a0 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	56                   	push   %esi
 3a4:	53                   	push   %ebx
 3a5:	8b 5d 10             	mov    0x10(%ebp),%ebx
 3a8:	8b 45 08             	mov    0x8(%ebp),%eax
 3ab:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 3ae:	85 db                	test   %ebx,%ebx
 3b0:	7e 14                	jle    3c6 <memmove+0x26>
 3b2:	31 d2                	xor    %edx,%edx
 3b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 3b8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 3bc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 3bf:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 3c2:	39 da                	cmp    %ebx,%edx
 3c4:	75 f2                	jne    3b8 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
 3c6:	5b                   	pop    %ebx
 3c7:	5e                   	pop    %esi
 3c8:	5d                   	pop    %ebp
 3c9:	c3                   	ret    

000003ca <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 3ca:	b8 01 00 00 00       	mov    $0x1,%eax
 3cf:	cd 40                	int    $0x40
 3d1:	c3                   	ret    

000003d2 <exit>:
SYSCALL(exit)
 3d2:	b8 02 00 00 00       	mov    $0x2,%eax
 3d7:	cd 40                	int    $0x40
 3d9:	c3                   	ret    

000003da <wait>:
SYSCALL(wait)
 3da:	b8 03 00 00 00       	mov    $0x3,%eax
 3df:	cd 40                	int    $0x40
 3e1:	c3                   	ret    

000003e2 <pipe>:
SYSCALL(pipe)
 3e2:	b8 04 00 00 00       	mov    $0x4,%eax
 3e7:	cd 40                	int    $0x40
 3e9:	c3                   	ret    

000003ea <read>:
SYSCALL(read)
 3ea:	b8 05 00 00 00       	mov    $0x5,%eax
 3ef:	cd 40                	int    $0x40
 3f1:	c3                   	ret    

000003f2 <write>:
SYSCALL(write)
 3f2:	b8 10 00 00 00       	mov    $0x10,%eax
 3f7:	cd 40                	int    $0x40
 3f9:	c3                   	ret    

000003fa <close>:
SYSCALL(close)
 3fa:	b8 15 00 00 00       	mov    $0x15,%eax
 3ff:	cd 40                	int    $0x40
 401:	c3                   	ret    

00000402 <kill>:
SYSCALL(kill)
 402:	b8 06 00 00 00       	mov    $0x6,%eax
 407:	cd 40                	int    $0x40
 409:	c3                   	ret    

0000040a <exec>:
SYSCALL(exec)
 40a:	b8 07 00 00 00       	mov    $0x7,%eax
 40f:	cd 40                	int    $0x40
 411:	c3                   	ret    

00000412 <open>:
SYSCALL(open)
 412:	b8 0f 00 00 00       	mov    $0xf,%eax
 417:	cd 40                	int    $0x40
 419:	c3                   	ret    

0000041a <mknod>:
SYSCALL(mknod)
 41a:	b8 11 00 00 00       	mov    $0x11,%eax
 41f:	cd 40                	int    $0x40
 421:	c3                   	ret    

00000422 <unlink>:
SYSCALL(unlink)
 422:	b8 12 00 00 00       	mov    $0x12,%eax
 427:	cd 40                	int    $0x40
 429:	c3                   	ret    

0000042a <fstat>:
SYSCALL(fstat)
 42a:	b8 08 00 00 00       	mov    $0x8,%eax
 42f:	cd 40                	int    $0x40
 431:	c3                   	ret    

00000432 <link>:
SYSCALL(link)
 432:	b8 13 00 00 00       	mov    $0x13,%eax
 437:	cd 40                	int    $0x40
 439:	c3                   	ret    

0000043a <mkdir>:
SYSCALL(mkdir)
 43a:	b8 14 00 00 00       	mov    $0x14,%eax
 43f:	cd 40                	int    $0x40
 441:	c3                   	ret    

00000442 <chdir>:
SYSCALL(chdir)
 442:	b8 09 00 00 00       	mov    $0x9,%eax
 447:	cd 40                	int    $0x40
 449:	c3                   	ret    

0000044a <dup>:
SYSCALL(dup)
 44a:	b8 0a 00 00 00       	mov    $0xa,%eax
 44f:	cd 40                	int    $0x40
 451:	c3                   	ret    

00000452 <getpid>:
SYSCALL(getpid)
 452:	b8 0b 00 00 00       	mov    $0xb,%eax
 457:	cd 40                	int    $0x40
 459:	c3                   	ret    

0000045a <sbrk>:
SYSCALL(sbrk)
 45a:	b8 0c 00 00 00       	mov    $0xc,%eax
 45f:	cd 40                	int    $0x40
 461:	c3                   	ret    

00000462 <sleep>:
SYSCALL(sleep)
 462:	b8 0d 00 00 00       	mov    $0xd,%eax
 467:	cd 40                	int    $0x40
 469:	c3                   	ret    

0000046a <uptime>:
SYSCALL(uptime)
 46a:	b8 0e 00 00 00       	mov    $0xe,%eax
 46f:	cd 40                	int    $0x40
 471:	c3                   	ret    

00000472 <waitpid>:
SYSCALL(waitpid)
 472:	b8 16 00 00 00       	mov    $0x16,%eax
 477:	cd 40                	int    $0x40
 479:	c3                   	ret    

0000047a <changepriority>:
SYSCALL(changepriority)
 47a:	b8 17 00 00 00       	mov    $0x17,%eax
 47f:	cd 40                	int    $0x40
 481:	c3                   	ret    
 482:	66 90                	xchg   %ax,%ax
 484:	66 90                	xchg   %ax,%ax
 486:	66 90                	xchg   %ax,%ax
 488:	66 90                	xchg   %ax,%ax
 48a:	66 90                	xchg   %ax,%ax
 48c:	66 90                	xchg   %ax,%ax
 48e:	66 90                	xchg   %ax,%ax

00000490 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 490:	55                   	push   %ebp
 491:	89 e5                	mov    %esp,%ebp
 493:	57                   	push   %edi
 494:	56                   	push   %esi
 495:	53                   	push   %ebx
 496:	89 c6                	mov    %eax,%esi
 498:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 49b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 49e:	85 db                	test   %ebx,%ebx
 4a0:	74 7e                	je     520 <printint+0x90>
 4a2:	89 d0                	mov    %edx,%eax
 4a4:	c1 e8 1f             	shr    $0x1f,%eax
 4a7:	84 c0                	test   %al,%al
 4a9:	74 75                	je     520 <printint+0x90>
    neg = 1;
    x = -xx;
 4ab:	89 d0                	mov    %edx,%eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 4ad:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
 4b4:	f7 d8                	neg    %eax
 4b6:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 4b9:	31 ff                	xor    %edi,%edi
 4bb:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 4be:	89 ce                	mov    %ecx,%esi
 4c0:	eb 08                	jmp    4ca <printint+0x3a>
 4c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 4c8:	89 cf                	mov    %ecx,%edi
 4ca:	31 d2                	xor    %edx,%edx
 4cc:	8d 4f 01             	lea    0x1(%edi),%ecx
 4cf:	f7 f6                	div    %esi
 4d1:	0f b6 92 90 08 00 00 	movzbl 0x890(%edx),%edx
  }while((x /= base) != 0);
 4d8:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 4da:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 4dd:	75 e9                	jne    4c8 <printint+0x38>
  if(neg)
 4df:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 4e2:	8b 75 c0             	mov    -0x40(%ebp),%esi
 4e5:	85 c0                	test   %eax,%eax
 4e7:	74 08                	je     4f1 <printint+0x61>
    buf[i++] = '-';
 4e9:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
 4ee:	8d 4f 02             	lea    0x2(%edi),%ecx
 4f1:	8d 7c 0d d7          	lea    -0x29(%ebp,%ecx,1),%edi
 4f5:	8d 76 00             	lea    0x0(%esi),%esi
 4f8:	0f b6 07             	movzbl (%edi),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 4fb:	83 ec 04             	sub    $0x4,%esp
 4fe:	83 ef 01             	sub    $0x1,%edi
 501:	6a 01                	push   $0x1
 503:	53                   	push   %ebx
 504:	56                   	push   %esi
 505:	88 45 d7             	mov    %al,-0x29(%ebp)
 508:	e8 e5 fe ff ff       	call   3f2 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 50d:	83 c4 10             	add    $0x10,%esp
 510:	39 df                	cmp    %ebx,%edi
 512:	75 e4                	jne    4f8 <printint+0x68>
    putc(fd, buf[i]);
}
 514:	8d 65 f4             	lea    -0xc(%ebp),%esp
 517:	5b                   	pop    %ebx
 518:	5e                   	pop    %esi
 519:	5f                   	pop    %edi
 51a:	5d                   	pop    %ebp
 51b:	c3                   	ret    
 51c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 520:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 522:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 529:	eb 8b                	jmp    4b6 <printint+0x26>
 52b:	90                   	nop
 52c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000530 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 530:	55                   	push   %ebp
 531:	89 e5                	mov    %esp,%ebp
 533:	57                   	push   %edi
 534:	56                   	push   %esi
 535:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 536:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 539:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 53c:	8b 75 0c             	mov    0xc(%ebp),%esi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 53f:	8b 7d 08             	mov    0x8(%ebp),%edi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 542:	89 45 d0             	mov    %eax,-0x30(%ebp)
 545:	0f b6 1e             	movzbl (%esi),%ebx
 548:	83 c6 01             	add    $0x1,%esi
 54b:	84 db                	test   %bl,%bl
 54d:	0f 84 b0 00 00 00    	je     603 <printf+0xd3>
 553:	31 d2                	xor    %edx,%edx
 555:	eb 39                	jmp    590 <printf+0x60>
 557:	89 f6                	mov    %esi,%esi
 559:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 560:	83 f8 25             	cmp    $0x25,%eax
 563:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
 566:	ba 25 00 00 00       	mov    $0x25,%edx
  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 56b:	74 18                	je     585 <printf+0x55>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 56d:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 570:	83 ec 04             	sub    $0x4,%esp
 573:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 576:	6a 01                	push   $0x1
 578:	50                   	push   %eax
 579:	57                   	push   %edi
 57a:	e8 73 fe ff ff       	call   3f2 <write>
 57f:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 582:	83 c4 10             	add    $0x10,%esp
 585:	83 c6 01             	add    $0x1,%esi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 588:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 58c:	84 db                	test   %bl,%bl
 58e:	74 73                	je     603 <printf+0xd3>
    c = fmt[i] & 0xff;
    if(state == 0){
 590:	85 d2                	test   %edx,%edx
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 592:	0f be cb             	movsbl %bl,%ecx
 595:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 598:	74 c6                	je     560 <printf+0x30>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 59a:	83 fa 25             	cmp    $0x25,%edx
 59d:	75 e6                	jne    585 <printf+0x55>
      if(c == 'd'){
 59f:	83 f8 64             	cmp    $0x64,%eax
 5a2:	0f 84 f8 00 00 00    	je     6a0 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 5a8:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 5ae:	83 f9 70             	cmp    $0x70,%ecx
 5b1:	74 5d                	je     610 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 5b3:	83 f8 73             	cmp    $0x73,%eax
 5b6:	0f 84 84 00 00 00    	je     640 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 5bc:	83 f8 63             	cmp    $0x63,%eax
 5bf:	0f 84 ea 00 00 00    	je     6af <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 5c5:	83 f8 25             	cmp    $0x25,%eax
 5c8:	0f 84 c2 00 00 00    	je     690 <printf+0x160>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 5ce:	8d 45 e7             	lea    -0x19(%ebp),%eax
 5d1:	83 ec 04             	sub    $0x4,%esp
 5d4:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 5d8:	6a 01                	push   $0x1
 5da:	50                   	push   %eax
 5db:	57                   	push   %edi
 5dc:	e8 11 fe ff ff       	call   3f2 <write>
 5e1:	83 c4 0c             	add    $0xc,%esp
 5e4:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 5e7:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 5ea:	6a 01                	push   $0x1
 5ec:	50                   	push   %eax
 5ed:	57                   	push   %edi
 5ee:	83 c6 01             	add    $0x1,%esi
 5f1:	e8 fc fd ff ff       	call   3f2 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 5f6:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 5fa:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 5fd:	31 d2                	xor    %edx,%edx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 5ff:	84 db                	test   %bl,%bl
 601:	75 8d                	jne    590 <printf+0x60>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 603:	8d 65 f4             	lea    -0xc(%ebp),%esp
 606:	5b                   	pop    %ebx
 607:	5e                   	pop    %esi
 608:	5f                   	pop    %edi
 609:	5d                   	pop    %ebp
 60a:	c3                   	ret    
 60b:	90                   	nop
 60c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 610:	83 ec 0c             	sub    $0xc,%esp
 613:	b9 10 00 00 00       	mov    $0x10,%ecx
 618:	6a 00                	push   $0x0
 61a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 61d:	89 f8                	mov    %edi,%eax
 61f:	8b 13                	mov    (%ebx),%edx
 621:	e8 6a fe ff ff       	call   490 <printint>
        ap++;
 626:	89 d8                	mov    %ebx,%eax
 628:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 62b:	31 d2                	xor    %edx,%edx
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
 62d:	83 c0 04             	add    $0x4,%eax
 630:	89 45 d0             	mov    %eax,-0x30(%ebp)
 633:	e9 4d ff ff ff       	jmp    585 <printf+0x55>
 638:	90                   	nop
 639:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 640:	8b 45 d0             	mov    -0x30(%ebp),%eax
 643:	8b 18                	mov    (%eax),%ebx
        ap++;
 645:	83 c0 04             	add    $0x4,%eax
 648:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
          s = "(null)";
 64b:	b8 87 08 00 00       	mov    $0x887,%eax
 650:	85 db                	test   %ebx,%ebx
 652:	0f 44 d8             	cmove  %eax,%ebx
        while(*s != 0){
 655:	0f b6 03             	movzbl (%ebx),%eax
 658:	84 c0                	test   %al,%al
 65a:	74 23                	je     67f <printf+0x14f>
 65c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 660:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 663:	8d 45 e3             	lea    -0x1d(%ebp),%eax
 666:	83 ec 04             	sub    $0x4,%esp
 669:	6a 01                	push   $0x1
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 66b:	83 c3 01             	add    $0x1,%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 66e:	50                   	push   %eax
 66f:	57                   	push   %edi
 670:	e8 7d fd ff ff       	call   3f2 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 675:	0f b6 03             	movzbl (%ebx),%eax
 678:	83 c4 10             	add    $0x10,%esp
 67b:	84 c0                	test   %al,%al
 67d:	75 e1                	jne    660 <printf+0x130>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 67f:	31 d2                	xor    %edx,%edx
 681:	e9 ff fe ff ff       	jmp    585 <printf+0x55>
 686:	8d 76 00             	lea    0x0(%esi),%esi
 689:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 690:	83 ec 04             	sub    $0x4,%esp
 693:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 696:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 699:	6a 01                	push   $0x1
 69b:	e9 4c ff ff ff       	jmp    5ec <printf+0xbc>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 6a0:	83 ec 0c             	sub    $0xc,%esp
 6a3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 6a8:	6a 01                	push   $0x1
 6aa:	e9 6b ff ff ff       	jmp    61a <printf+0xea>
 6af:	8b 5d d0             	mov    -0x30(%ebp),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 6b2:	83 ec 04             	sub    $0x4,%esp
 6b5:	8b 03                	mov    (%ebx),%eax
 6b7:	6a 01                	push   $0x1
 6b9:	88 45 e4             	mov    %al,-0x1c(%ebp)
 6bc:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 6bf:	50                   	push   %eax
 6c0:	57                   	push   %edi
 6c1:	e8 2c fd ff ff       	call   3f2 <write>
 6c6:	e9 5b ff ff ff       	jmp    626 <printf+0xf6>
 6cb:	66 90                	xchg   %ax,%ax
 6cd:	66 90                	xchg   %ax,%ax
 6cf:	90                   	nop

000006d0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 6d0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6d1:	a1 80 0b 00 00       	mov    0xb80,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
 6d6:	89 e5                	mov    %esp,%ebp
 6d8:	57                   	push   %edi
 6d9:	56                   	push   %esi
 6da:	53                   	push   %ebx
 6db:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6de:	8b 10                	mov    (%eax),%edx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
 6e0:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6e3:	39 c8                	cmp    %ecx,%eax
 6e5:	73 19                	jae    700 <free+0x30>
 6e7:	89 f6                	mov    %esi,%esi
 6e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 6f0:	39 d1                	cmp    %edx,%ecx
 6f2:	72 1c                	jb     710 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6f4:	39 d0                	cmp    %edx,%eax
 6f6:	73 18                	jae    710 <free+0x40>
static Header base;
static Header *freep;

void
free(void *ap)
{
 6f8:	89 d0                	mov    %edx,%eax
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6fa:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6fc:	8b 10                	mov    (%eax),%edx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6fe:	72 f0                	jb     6f0 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 700:	39 d0                	cmp    %edx,%eax
 702:	72 f4                	jb     6f8 <free+0x28>
 704:	39 d1                	cmp    %edx,%ecx
 706:	73 f0                	jae    6f8 <free+0x28>
 708:	90                   	nop
 709:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
 710:	8b 73 fc             	mov    -0x4(%ebx),%esi
 713:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 716:	39 d7                	cmp    %edx,%edi
 718:	74 19                	je     733 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 71a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 71d:	8b 50 04             	mov    0x4(%eax),%edx
 720:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 723:	39 f1                	cmp    %esi,%ecx
 725:	74 23                	je     74a <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 727:	89 08                	mov    %ecx,(%eax)
  freep = p;
 729:	a3 80 0b 00 00       	mov    %eax,0xb80
}
 72e:	5b                   	pop    %ebx
 72f:	5e                   	pop    %esi
 730:	5f                   	pop    %edi
 731:	5d                   	pop    %ebp
 732:	c3                   	ret    
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
 733:	03 72 04             	add    0x4(%edx),%esi
 736:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 739:	8b 10                	mov    (%eax),%edx
 73b:	8b 12                	mov    (%edx),%edx
 73d:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 740:	8b 50 04             	mov    0x4(%eax),%edx
 743:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 746:	39 f1                	cmp    %esi,%ecx
 748:	75 dd                	jne    727 <free+0x57>
    p->s.size += bp->s.size;
 74a:	03 53 fc             	add    -0x4(%ebx),%edx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
 74d:	a3 80 0b 00 00       	mov    %eax,0xb80
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
 752:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 755:	8b 53 f8             	mov    -0x8(%ebx),%edx
 758:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 75a:	5b                   	pop    %ebx
 75b:	5e                   	pop    %esi
 75c:	5f                   	pop    %edi
 75d:	5d                   	pop    %ebp
 75e:	c3                   	ret    
 75f:	90                   	nop

00000760 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 760:	55                   	push   %ebp
 761:	89 e5                	mov    %esp,%ebp
 763:	57                   	push   %edi
 764:	56                   	push   %esi
 765:	53                   	push   %ebx
 766:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 769:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 76c:	8b 15 80 0b 00 00    	mov    0xb80,%edx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 772:	8d 78 07             	lea    0x7(%eax),%edi
 775:	c1 ef 03             	shr    $0x3,%edi
 778:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 77b:	85 d2                	test   %edx,%edx
 77d:	0f 84 a3 00 00 00    	je     826 <malloc+0xc6>
 783:	8b 02                	mov    (%edx),%eax
 785:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 788:	39 cf                	cmp    %ecx,%edi
 78a:	76 74                	jbe    800 <malloc+0xa0>
 78c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 792:	be 00 10 00 00       	mov    $0x1000,%esi
 797:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
 79e:	0f 43 f7             	cmovae %edi,%esi
 7a1:	ba 00 80 00 00       	mov    $0x8000,%edx
 7a6:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
 7ac:	0f 46 da             	cmovbe %edx,%ebx
 7af:	eb 10                	jmp    7c1 <malloc+0x61>
 7b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 7b8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 7ba:	8b 48 04             	mov    0x4(%eax),%ecx
 7bd:	39 cf                	cmp    %ecx,%edi
 7bf:	76 3f                	jbe    800 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 7c1:	39 05 80 0b 00 00    	cmp    %eax,0xb80
 7c7:	89 c2                	mov    %eax,%edx
 7c9:	75 ed                	jne    7b8 <malloc+0x58>
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
 7cb:	83 ec 0c             	sub    $0xc,%esp
 7ce:	53                   	push   %ebx
 7cf:	e8 86 fc ff ff       	call   45a <sbrk>
  if(p == (char*)-1)
 7d4:	83 c4 10             	add    $0x10,%esp
 7d7:	83 f8 ff             	cmp    $0xffffffff,%eax
 7da:	74 1c                	je     7f8 <malloc+0x98>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
 7dc:	89 70 04             	mov    %esi,0x4(%eax)
  free((void*)(hp + 1));
 7df:	83 ec 0c             	sub    $0xc,%esp
 7e2:	83 c0 08             	add    $0x8,%eax
 7e5:	50                   	push   %eax
 7e6:	e8 e5 fe ff ff       	call   6d0 <free>
  return freep;
 7eb:	8b 15 80 0b 00 00    	mov    0xb80,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
 7f1:	83 c4 10             	add    $0x10,%esp
 7f4:	85 d2                	test   %edx,%edx
 7f6:	75 c0                	jne    7b8 <malloc+0x58>
        return 0;
 7f8:	31 c0                	xor    %eax,%eax
 7fa:	eb 1c                	jmp    818 <malloc+0xb8>
 7fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
 800:	39 cf                	cmp    %ecx,%edi
 802:	74 1c                	je     820 <malloc+0xc0>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
 804:	29 f9                	sub    %edi,%ecx
 806:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 809:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 80c:	89 78 04             	mov    %edi,0x4(%eax)
      }
      freep = prevp;
 80f:	89 15 80 0b 00 00    	mov    %edx,0xb80
      return (void*)(p + 1);
 815:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
 818:	8d 65 f4             	lea    -0xc(%ebp),%esp
 81b:	5b                   	pop    %ebx
 81c:	5e                   	pop    %esi
 81d:	5f                   	pop    %edi
 81e:	5d                   	pop    %ebp
 81f:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
 820:	8b 08                	mov    (%eax),%ecx
 822:	89 0a                	mov    %ecx,(%edx)
 824:	eb e9                	jmp    80f <malloc+0xaf>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 826:	c7 05 80 0b 00 00 84 	movl   $0xb84,0xb80
 82d:	0b 00 00 
 830:	c7 05 84 0b 00 00 84 	movl   $0xb84,0xb84
 837:	0b 00 00 
    base.s.size = 0;
 83a:	b8 84 0b 00 00       	mov    $0xb84,%eax
 83f:	c7 05 88 0b 00 00 00 	movl   $0x0,0xb88
 846:	00 00 00 
 849:	e9 3e ff ff ff       	jmp    78c <malloc+0x2c>
