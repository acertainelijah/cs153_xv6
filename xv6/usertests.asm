
_usertests:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return randstate;
}

int
main(int argc, char *argv[])
{
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	pushl  -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	51                   	push   %ecx
       e:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "usertests starting\n");
      11:	68 be 52 00 00       	push   $0x52be
      16:	6a 01                	push   $0x1
      18:	e8 93 3f 00 00       	call   3fb0 <printf>

  if(open("usertests.ran", 0) >= 0){
      1d:	5a                   	pop    %edx
      1e:	59                   	pop    %ecx
      1f:	6a 00                	push   $0x0
      21:	68 d2 52 00 00       	push   $0x52d2
      26:	e8 77 3e 00 00       	call   3ea2 <open>
      2b:	83 c4 10             	add    $0x10,%esp
      2e:	85 c0                	test   %eax,%eax
      30:	78 1b                	js     4d <main+0x4d>
    printf(1, "already ran user tests -- rebuild fs.img\n");
      32:	83 ec 08             	sub    $0x8,%esp
      35:	68 3c 5a 00 00       	push   $0x5a3c
      3a:	6a 01                	push   $0x1
      3c:	e8 6f 3f 00 00       	call   3fb0 <printf>
    exit(0);
      41:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
      48:	e8 15 3e 00 00       	call   3e62 <exit>
  }
  close(open("usertests.ran", O_CREATE));
      4d:	50                   	push   %eax
      4e:	50                   	push   %eax
      4f:	68 00 02 00 00       	push   $0x200
      54:	68 d2 52 00 00       	push   $0x52d2
      59:	e8 44 3e 00 00       	call   3ea2 <open>
      5e:	89 04 24             	mov    %eax,(%esp)
      61:	e8 24 3e 00 00       	call   3e8a <close>

  argptest();
      66:	e8 25 3b 00 00       	call   3b90 <argptest>
  createdelete();
      6b:	e8 60 13 00 00       	call   13d0 <createdelete>
  linkunlink();
      70:	e8 fb 1c 00 00       	call   1d70 <linkunlink>
  concreate();
      75:	e8 b6 19 00 00       	call   1a30 <concreate>
  fourfiles();
      7a:	e8 11 11 00 00       	call   1190 <fourfiles>
  sharedfd();
      7f:	e8 4c 0f 00 00       	call   fd0 <sharedfd>

  bigargtest();
      84:	e8 67 37 00 00       	call   37f0 <bigargtest>
  bigwrite();
      89:	e8 22 27 00 00       	call   27b0 <bigwrite>
  bigargtest();
      8e:	e8 5d 37 00 00       	call   37f0 <bigargtest>
  bsstest();
      93:	e8 d8 36 00 00       	call   3770 <bsstest>
  sbrktest();
      98:	e8 63 31 00 00       	call   3200 <sbrktest>
  validatetest();
      9d:	e8 0e 36 00 00       	call   36b0 <validatetest>

  opentest();
      a2:	e8 e9 03 00 00       	call   490 <opentest>
  writetest();
      a7:	e8 84 04 00 00       	call   530 <writetest>
  writetest1();
      ac:	e8 8f 06 00 00       	call   740 <writetest1>
  createtest();
      b1:	e8 8a 08 00 00       	call   940 <createtest>

  openiputtest();
      b6:	e8 a5 02 00 00       	call   360 <openiputtest>
  exitiputtest();
      bb:	e8 70 01 00 00       	call   230 <exitiputtest>
  iputtest();
      c0:	e8 6b 00 00 00       	call   130 <iputtest>

  mem();
      c5:	e8 26 0e 00 00       	call   ef0 <mem>
  pipe1();
      ca:	e8 71 0a 00 00       	call   b40 <pipe1>
  preempt();
      cf:	e8 2c 0c 00 00       	call   d00 <preempt>
  exitwait();
      d4:	e8 77 0d 00 00       	call   e50 <exitwait>

  rmdot();
      d9:	e8 22 2b 00 00       	call   2c00 <rmdot>
  fourteen();
      de:	e8 bd 29 00 00       	call   2aa0 <fourteen>
  bigfile();
      e3:	e8 b8 27 00 00       	call   28a0 <bigfile>
  subdir();
      e8:	e8 e3 1e 00 00       	call   1fd0 <subdir>
  linktest();
      ed:	e8 ee 16 00 00       	call   17e0 <linktest>
  unlinkread();
      f2:	e8 29 15 00 00       	call   1620 <unlinkread>
  dirfile();
      f7:	e8 b4 2c 00 00       	call   2db0 <dirfile>
  iref();
      fc:	e8 ef 2e 00 00       	call   2ff0 <iref>
  forktest();
     101:	e8 1a 30 00 00       	call   3120 <forktest>
  bigdir(); // slow
     106:	e8 75 1d 00 00       	call   1e80 <bigdir>

  uio();
     10b:	e8 f0 39 00 00       	call   3b00 <uio>

  exectest();
     110:	e8 db 09 00 00       	call   af0 <exectest>

  exit(0);
     115:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     11c:	e8 41 3d 00 00       	call   3e62 <exit>
     121:	66 90                	xchg   %ax,%ax
     123:	66 90                	xchg   %ax,%ax
     125:	66 90                	xchg   %ax,%ax
     127:	66 90                	xchg   %ax,%ax
     129:	66 90                	xchg   %ax,%ax
     12b:	66 90                	xchg   %ax,%ax
     12d:	66 90                	xchg   %ax,%ax
     12f:	90                   	nop

00000130 <iputtest>:
int stdout = 1;

// does chdir() call iput(p->cwd) in a transaction?
void
iputtest(void)
{
     130:	55                   	push   %ebp
     131:	89 e5                	mov    %esp,%ebp
     133:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "iput test\n");
     136:	68 64 43 00 00       	push   $0x4364
     13b:	ff 35 64 63 00 00    	pushl  0x6364
     141:	e8 6a 3e 00 00       	call   3fb0 <printf>

  if(mkdir("iputdir") < 0){
     146:	c7 04 24 f7 42 00 00 	movl   $0x42f7,(%esp)
     14d:	e8 78 3d 00 00       	call   3eca <mkdir>
     152:	83 c4 10             	add    $0x10,%esp
     155:	85 c0                	test   %eax,%eax
     157:	78 58                	js     1b1 <iputtest+0x81>
    printf(stdout, "mkdir failed\n");
    exit(0);
  }
  if(chdir("iputdir") < 0){
     159:	83 ec 0c             	sub    $0xc,%esp
     15c:	68 f7 42 00 00       	push   $0x42f7
     161:	e8 6c 3d 00 00       	call   3ed2 <chdir>
     166:	83 c4 10             	add    $0x10,%esp
     169:	85 c0                	test   %eax,%eax
     16b:	0f 88 9a 00 00 00    	js     20b <iputtest+0xdb>
    printf(stdout, "chdir iputdir failed\n");
    exit(0);
  }
  if(unlink("../iputdir") < 0){
     171:	83 ec 0c             	sub    $0xc,%esp
     174:	68 f4 42 00 00       	push   $0x42f4
     179:	e8 34 3d 00 00       	call   3eb2 <unlink>
     17e:	83 c4 10             	add    $0x10,%esp
     181:	85 c0                	test   %eax,%eax
     183:	78 68                	js     1ed <iputtest+0xbd>
    printf(stdout, "unlink ../iputdir failed\n");
    exit(0);
  }
  if(chdir("/") < 0){
     185:	83 ec 0c             	sub    $0xc,%esp
     188:	68 19 43 00 00       	push   $0x4319
     18d:	e8 40 3d 00 00       	call   3ed2 <chdir>
     192:	83 c4 10             	add    $0x10,%esp
     195:	85 c0                	test   %eax,%eax
     197:	78 36                	js     1cf <iputtest+0x9f>
    printf(stdout, "chdir / failed\n");
    exit(0);
  }
  printf(stdout, "iput test ok\n");
     199:	83 ec 08             	sub    $0x8,%esp
     19c:	68 9c 43 00 00       	push   $0x439c
     1a1:	ff 35 64 63 00 00    	pushl  0x6364
     1a7:	e8 04 3e 00 00       	call   3fb0 <printf>
}
     1ac:	83 c4 10             	add    $0x10,%esp
     1af:	c9                   	leave  
     1b0:	c3                   	ret    
iputtest(void)
{
  printf(stdout, "iput test\n");

  if(mkdir("iputdir") < 0){
    printf(stdout, "mkdir failed\n");
     1b1:	50                   	push   %eax
     1b2:	50                   	push   %eax
     1b3:	68 d0 42 00 00       	push   $0x42d0
     1b8:	ff 35 64 63 00 00    	pushl  0x6364
     1be:	e8 ed 3d 00 00       	call   3fb0 <printf>
    exit(0);
     1c3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     1ca:	e8 93 3c 00 00       	call   3e62 <exit>
  if(unlink("../iputdir") < 0){
    printf(stdout, "unlink ../iputdir failed\n");
    exit(0);
  }
  if(chdir("/") < 0){
    printf(stdout, "chdir / failed\n");
     1cf:	50                   	push   %eax
     1d0:	50                   	push   %eax
     1d1:	68 1b 43 00 00       	push   $0x431b
     1d6:	ff 35 64 63 00 00    	pushl  0x6364
     1dc:	e8 cf 3d 00 00       	call   3fb0 <printf>
    exit(0);
     1e1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     1e8:	e8 75 3c 00 00       	call   3e62 <exit>
  if(chdir("iputdir") < 0){
    printf(stdout, "chdir iputdir failed\n");
    exit(0);
  }
  if(unlink("../iputdir") < 0){
    printf(stdout, "unlink ../iputdir failed\n");
     1ed:	52                   	push   %edx
     1ee:	52                   	push   %edx
     1ef:	68 ff 42 00 00       	push   $0x42ff
     1f4:	ff 35 64 63 00 00    	pushl  0x6364
     1fa:	e8 b1 3d 00 00       	call   3fb0 <printf>
    exit(0);
     1ff:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     206:	e8 57 3c 00 00       	call   3e62 <exit>
  if(mkdir("iputdir") < 0){
    printf(stdout, "mkdir failed\n");
    exit(0);
  }
  if(chdir("iputdir") < 0){
    printf(stdout, "chdir iputdir failed\n");
     20b:	51                   	push   %ecx
     20c:	51                   	push   %ecx
     20d:	68 de 42 00 00       	push   $0x42de
     212:	ff 35 64 63 00 00    	pushl  0x6364
     218:	e8 93 3d 00 00       	call   3fb0 <printf>
    exit(0);
     21d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     224:	e8 39 3c 00 00       	call   3e62 <exit>
     229:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000230 <exitiputtest>:
}

// does exit(0) call iput(p->cwd) in a transaction?
void
exitiputtest(void)
{
     230:	55                   	push   %ebp
     231:	89 e5                	mov    %esp,%ebp
     233:	83 ec 10             	sub    $0x10,%esp
  int pid;

  printf(stdout, "exitiput test\n");
     236:	68 2b 43 00 00       	push   $0x432b
     23b:	ff 35 64 63 00 00    	pushl  0x6364
     241:	e8 6a 3d 00 00       	call   3fb0 <printf>

  pid = fork();
     246:	e8 0f 3c 00 00       	call   3e5a <fork>
  if(pid < 0){
     24b:	83 c4 10             	add    $0x10,%esp
     24e:	85 c0                	test   %eax,%eax
     250:	0f 88 a1 00 00 00    	js     2f7 <exitiputtest+0xc7>
    printf(stdout, "fork failed\n");
    exit(0);
  }
  if(pid == 0){
     256:	75 58                	jne    2b0 <exitiputtest+0x80>
    if(mkdir("iputdir") < 0){
     258:	83 ec 0c             	sub    $0xc,%esp
     25b:	68 f7 42 00 00       	push   $0x42f7
     260:	e8 65 3c 00 00       	call   3eca <mkdir>
     265:	83 c4 10             	add    $0x10,%esp
     268:	85 c0                	test   %eax,%eax
     26a:	0f 88 c3 00 00 00    	js     333 <exitiputtest+0x103>
      printf(stdout, "mkdir failed\n");
      exit(0);
    }
    if(chdir("iputdir") < 0){
     270:	83 ec 0c             	sub    $0xc,%esp
     273:	68 f7 42 00 00       	push   $0x42f7
     278:	e8 55 3c 00 00       	call   3ed2 <chdir>
     27d:	83 c4 10             	add    $0x10,%esp
     280:	85 c0                	test   %eax,%eax
     282:	0f 88 8d 00 00 00    	js     315 <exitiputtest+0xe5>
      printf(stdout, "child chdir failed\n");
      exit(0);
    }
    if(unlink("../iputdir") < 0){
     288:	83 ec 0c             	sub    $0xc,%esp
     28b:	68 f4 42 00 00       	push   $0x42f4
     290:	e8 1d 3c 00 00       	call   3eb2 <unlink>
     295:	83 c4 10             	add    $0x10,%esp
     298:	85 c0                	test   %eax,%eax
     29a:	78 3c                	js     2d8 <exitiputtest+0xa8>
      printf(stdout, "unlink ../iputdir failed\n");
      exit(0);
    }
    exit(0);
     29c:	83 ec 0c             	sub    $0xc,%esp
     29f:	6a 00                	push   $0x0
     2a1:	e8 bc 3b 00 00       	call   3e62 <exit>
     2a6:	8d 76 00             	lea    0x0(%esi),%esi
     2a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  }
  wait(0);
     2b0:	83 ec 0c             	sub    $0xc,%esp
     2b3:	6a 00                	push   $0x0
     2b5:	e8 b0 3b 00 00       	call   3e6a <wait>
  printf(stdout, "exitiput test ok\n");
     2ba:	58                   	pop    %eax
     2bb:	5a                   	pop    %edx
     2bc:	68 4e 43 00 00       	push   $0x434e
     2c1:	ff 35 64 63 00 00    	pushl  0x6364
     2c7:	e8 e4 3c 00 00       	call   3fb0 <printf>
}
     2cc:	83 c4 10             	add    $0x10,%esp
     2cf:	c9                   	leave  
     2d0:	c3                   	ret    
     2d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(chdir("iputdir") < 0){
      printf(stdout, "child chdir failed\n");
      exit(0);
    }
    if(unlink("../iputdir") < 0){
      printf(stdout, "unlink ../iputdir failed\n");
     2d8:	83 ec 08             	sub    $0x8,%esp
     2db:	68 ff 42 00 00       	push   $0x42ff
     2e0:	ff 35 64 63 00 00    	pushl  0x6364
     2e6:	e8 c5 3c 00 00       	call   3fb0 <printf>
      exit(0);
     2eb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     2f2:	e8 6b 3b 00 00       	call   3e62 <exit>

  printf(stdout, "exitiput test\n");

  pid = fork();
  if(pid < 0){
    printf(stdout, "fork failed\n");
     2f7:	50                   	push   %eax
     2f8:	50                   	push   %eax
     2f9:	68 11 52 00 00       	push   $0x5211
     2fe:	ff 35 64 63 00 00    	pushl  0x6364
     304:	e8 a7 3c 00 00       	call   3fb0 <printf>
    exit(0);
     309:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     310:	e8 4d 3b 00 00       	call   3e62 <exit>
    if(mkdir("iputdir") < 0){
      printf(stdout, "mkdir failed\n");
      exit(0);
    }
    if(chdir("iputdir") < 0){
      printf(stdout, "child chdir failed\n");
     315:	51                   	push   %ecx
     316:	51                   	push   %ecx
     317:	68 3a 43 00 00       	push   $0x433a
     31c:	ff 35 64 63 00 00    	pushl  0x6364
     322:	e8 89 3c 00 00       	call   3fb0 <printf>
      exit(0);
     327:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     32e:	e8 2f 3b 00 00       	call   3e62 <exit>
    printf(stdout, "fork failed\n");
    exit(0);
  }
  if(pid == 0){
    if(mkdir("iputdir") < 0){
      printf(stdout, "mkdir failed\n");
     333:	50                   	push   %eax
     334:	50                   	push   %eax
     335:	68 d0 42 00 00       	push   $0x42d0
     33a:	ff 35 64 63 00 00    	pushl  0x6364
     340:	e8 6b 3c 00 00       	call   3fb0 <printf>
      exit(0);
     345:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     34c:	e8 11 3b 00 00       	call   3e62 <exit>
     351:	eb 0d                	jmp    360 <openiputtest>
     353:	90                   	nop
     354:	90                   	nop
     355:	90                   	nop
     356:	90                   	nop
     357:	90                   	nop
     358:	90                   	nop
     359:	90                   	nop
     35a:	90                   	nop
     35b:	90                   	nop
     35c:	90                   	nop
     35d:	90                   	nop
     35e:	90                   	nop
     35f:	90                   	nop

00000360 <openiputtest>:
//      for(i = 0; i < 10000; i++)
//        yield();
//    }
void
openiputtest(void)
{
     360:	55                   	push   %ebp
     361:	89 e5                	mov    %esp,%ebp
     363:	83 ec 10             	sub    $0x10,%esp
  int pid;

  printf(stdout, "openiput test\n");
     366:	68 60 43 00 00       	push   $0x4360
     36b:	ff 35 64 63 00 00    	pushl  0x6364
     371:	e8 3a 3c 00 00       	call   3fb0 <printf>
  if(mkdir("oidir") < 0){
     376:	c7 04 24 6f 43 00 00 	movl   $0x436f,(%esp)
     37d:	e8 48 3b 00 00       	call   3eca <mkdir>
     382:	83 c4 10             	add    $0x10,%esp
     385:	85 c0                	test   %eax,%eax
     387:	0f 88 9d 00 00 00    	js     42a <openiputtest+0xca>
    printf(stdout, "mkdir oidir failed\n");
    exit(0);
  }
  pid = fork();
     38d:	e8 c8 3a 00 00       	call   3e5a <fork>
  if(pid < 0){
     392:	85 c0                	test   %eax,%eax
     394:	0f 88 ae 00 00 00    	js     448 <openiputtest+0xe8>
    printf(stdout, "fork failed\n");
    exit(0);
  }
  if(pid == 0){
     39a:	75 3c                	jne    3d8 <openiputtest+0x78>
    int fd = open("oidir", O_RDWR);
     39c:	83 ec 08             	sub    $0x8,%esp
     39f:	6a 02                	push   $0x2
     3a1:	68 6f 43 00 00       	push   $0x436f
     3a6:	e8 f7 3a 00 00       	call   3ea2 <open>
    if(fd >= 0){
     3ab:	83 c4 10             	add    $0x10,%esp
     3ae:	85 c0                	test   %eax,%eax
     3b0:	78 6e                	js     420 <openiputtest+0xc0>
      printf(stdout, "open directory for write succeeded\n");
     3b2:	83 ec 08             	sub    $0x8,%esp
     3b5:	68 f4 52 00 00       	push   $0x52f4
     3ba:	ff 35 64 63 00 00    	pushl  0x6364
     3c0:	e8 eb 3b 00 00       	call   3fb0 <printf>
      exit(0);
     3c5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     3cc:	e8 91 3a 00 00       	call   3e62 <exit>
     3d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
    exit(0);
  }
  sleep(1);
     3d8:	83 ec 0c             	sub    $0xc,%esp
     3db:	6a 01                	push   $0x1
     3dd:	e8 10 3b 00 00       	call   3ef2 <sleep>
  if(unlink("oidir") != 0){
     3e2:	c7 04 24 6f 43 00 00 	movl   $0x436f,(%esp)
     3e9:	e8 c4 3a 00 00       	call   3eb2 <unlink>
     3ee:	83 c4 10             	add    $0x10,%esp
     3f1:	85 c0                	test   %eax,%eax
     3f3:	75 71                	jne    466 <openiputtest+0x106>
    printf(stdout, "unlink failed\n");
    exit(0);
  }
  wait(0);
     3f5:	83 ec 0c             	sub    $0xc,%esp
     3f8:	6a 00                	push   $0x0
     3fa:	e8 6b 3a 00 00       	call   3e6a <wait>
  printf(stdout, "openiput test ok\n");
     3ff:	58                   	pop    %eax
     400:	5a                   	pop    %edx
     401:	68 98 43 00 00       	push   $0x4398
     406:	ff 35 64 63 00 00    	pushl  0x6364
     40c:	e8 9f 3b 00 00       	call   3fb0 <printf>
}
     411:	83 c4 10             	add    $0x10,%esp
     414:	c9                   	leave  
     415:	c3                   	ret    
     416:	8d 76 00             	lea    0x0(%esi),%esi
     419:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    int fd = open("oidir", O_RDWR);
    if(fd >= 0){
      printf(stdout, "open directory for write succeeded\n");
      exit(0);
    }
    exit(0);
     420:	83 ec 0c             	sub    $0xc,%esp
     423:	6a 00                	push   $0x0
     425:	e8 38 3a 00 00       	call   3e62 <exit>
{
  int pid;

  printf(stdout, "openiput test\n");
  if(mkdir("oidir") < 0){
    printf(stdout, "mkdir oidir failed\n");
     42a:	50                   	push   %eax
     42b:	50                   	push   %eax
     42c:	68 75 43 00 00       	push   $0x4375
     431:	ff 35 64 63 00 00    	pushl  0x6364
     437:	e8 74 3b 00 00       	call   3fb0 <printf>
    exit(0);
     43c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     443:	e8 1a 3a 00 00       	call   3e62 <exit>
  }
  pid = fork();
  if(pid < 0){
    printf(stdout, "fork failed\n");
     448:	50                   	push   %eax
     449:	50                   	push   %eax
     44a:	68 11 52 00 00       	push   $0x5211
     44f:	ff 35 64 63 00 00    	pushl  0x6364
     455:	e8 56 3b 00 00       	call   3fb0 <printf>
    exit(0);
     45a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     461:	e8 fc 39 00 00       	call   3e62 <exit>
    }
    exit(0);
  }
  sleep(1);
  if(unlink("oidir") != 0){
    printf(stdout, "unlink failed\n");
     466:	51                   	push   %ecx
     467:	51                   	push   %ecx
     468:	68 89 43 00 00       	push   $0x4389
     46d:	ff 35 64 63 00 00    	pushl  0x6364
     473:	e8 38 3b 00 00       	call   3fb0 <printf>
    exit(0);
     478:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     47f:	e8 de 39 00 00       	call   3e62 <exit>
     484:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     48a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000490 <opentest>:

// simple file system tests

void
opentest(void)
{
     490:	55                   	push   %ebp
     491:	89 e5                	mov    %esp,%ebp
     493:	83 ec 10             	sub    $0x10,%esp
  int fd;

  printf(stdout, "open test\n");
     496:	68 aa 43 00 00       	push   $0x43aa
     49b:	ff 35 64 63 00 00    	pushl  0x6364
     4a1:	e8 0a 3b 00 00       	call   3fb0 <printf>
  fd = open("echo", 0);
     4a6:	58                   	pop    %eax
     4a7:	5a                   	pop    %edx
     4a8:	6a 00                	push   $0x0
     4aa:	68 b5 43 00 00       	push   $0x43b5
     4af:	e8 ee 39 00 00       	call   3ea2 <open>
  if(fd < 0){
     4b4:	83 c4 10             	add    $0x10,%esp
     4b7:	85 c0                	test   %eax,%eax
     4b9:	78 36                	js     4f1 <opentest+0x61>
    printf(stdout, "open echo failed!\n");
    exit(0);
  }
  close(fd);
     4bb:	83 ec 0c             	sub    $0xc,%esp
     4be:	50                   	push   %eax
     4bf:	e8 c6 39 00 00       	call   3e8a <close>
  fd = open("doesnotexist", 0);
     4c4:	5a                   	pop    %edx
     4c5:	59                   	pop    %ecx
     4c6:	6a 00                	push   $0x0
     4c8:	68 cd 43 00 00       	push   $0x43cd
     4cd:	e8 d0 39 00 00       	call   3ea2 <open>
  if(fd >= 0){
     4d2:	83 c4 10             	add    $0x10,%esp
     4d5:	85 c0                	test   %eax,%eax
     4d7:	79 36                	jns    50f <opentest+0x7f>
    printf(stdout, "open doesnotexist succeeded!\n");
    exit(0);
  }
  printf(stdout, "open test ok\n");
     4d9:	83 ec 08             	sub    $0x8,%esp
     4dc:	68 f8 43 00 00       	push   $0x43f8
     4e1:	ff 35 64 63 00 00    	pushl  0x6364
     4e7:	e8 c4 3a 00 00       	call   3fb0 <printf>
}
     4ec:	83 c4 10             	add    $0x10,%esp
     4ef:	c9                   	leave  
     4f0:	c3                   	ret    
  int fd;

  printf(stdout, "open test\n");
  fd = open("echo", 0);
  if(fd < 0){
    printf(stdout, "open echo failed!\n");
     4f1:	50                   	push   %eax
     4f2:	50                   	push   %eax
     4f3:	68 ba 43 00 00       	push   $0x43ba
     4f8:	ff 35 64 63 00 00    	pushl  0x6364
     4fe:	e8 ad 3a 00 00       	call   3fb0 <printf>
    exit(0);
     503:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     50a:	e8 53 39 00 00       	call   3e62 <exit>
  }
  close(fd);
  fd = open("doesnotexist", 0);
  if(fd >= 0){
    printf(stdout, "open doesnotexist succeeded!\n");
     50f:	50                   	push   %eax
     510:	50                   	push   %eax
     511:	68 da 43 00 00       	push   $0x43da
     516:	ff 35 64 63 00 00    	pushl  0x6364
     51c:	e8 8f 3a 00 00       	call   3fb0 <printf>
    exit(0);
     521:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     528:	e8 35 39 00 00       	call   3e62 <exit>
     52d:	8d 76 00             	lea    0x0(%esi),%esi

00000530 <writetest>:
  printf(stdout, "open test ok\n");
}

void
writetest(void)
{
     530:	55                   	push   %ebp
     531:	89 e5                	mov    %esp,%ebp
     533:	56                   	push   %esi
     534:	53                   	push   %ebx
  int fd;
  int i;

  printf(stdout, "small file test\n");
     535:	83 ec 08             	sub    $0x8,%esp
     538:	68 06 44 00 00       	push   $0x4406
     53d:	ff 35 64 63 00 00    	pushl  0x6364
     543:	e8 68 3a 00 00       	call   3fb0 <printf>
  fd = open("small", O_CREATE|O_RDWR);
     548:	59                   	pop    %ecx
     549:	5b                   	pop    %ebx
     54a:	68 02 02 00 00       	push   $0x202
     54f:	68 17 44 00 00       	push   $0x4417
     554:	e8 49 39 00 00       	call   3ea2 <open>
  if(fd >= 0){
     559:	83 c4 10             	add    $0x10,%esp
     55c:	85 c0                	test   %eax,%eax
     55e:	0f 88 b2 01 00 00    	js     716 <writetest+0x1e6>
    printf(stdout, "creat small succeeded; ok\n");
     564:	83 ec 08             	sub    $0x8,%esp
     567:	89 c6                	mov    %eax,%esi
  } else {
    printf(stdout, "error: creat small failed!\n");
    exit(0);
  }
  for(i = 0; i < 100; i++){
     569:	31 db                	xor    %ebx,%ebx
  int i;

  printf(stdout, "small file test\n");
  fd = open("small", O_CREATE|O_RDWR);
  if(fd >= 0){
    printf(stdout, "creat small succeeded; ok\n");
     56b:	68 1d 44 00 00       	push   $0x441d
     570:	ff 35 64 63 00 00    	pushl  0x6364
     576:	e8 35 3a 00 00       	call   3fb0 <printf>
     57b:	83 c4 10             	add    $0x10,%esp
     57e:	66 90                	xchg   %ax,%ax
  } else {
    printf(stdout, "error: creat small failed!\n");
    exit(0);
  }
  for(i = 0; i < 100; i++){
    if(write(fd, "aaaaaaaaaa", 10) != 10){
     580:	83 ec 04             	sub    $0x4,%esp
     583:	6a 0a                	push   $0xa
     585:	68 54 44 00 00       	push   $0x4454
     58a:	56                   	push   %esi
     58b:	e8 f2 38 00 00       	call   3e82 <write>
     590:	83 c4 10             	add    $0x10,%esp
     593:	83 f8 0a             	cmp    $0xa,%eax
     596:	0f 85 dd 00 00 00    	jne    679 <writetest+0x149>
      printf(stdout, "error: write aa %d new file failed\n", i);
      exit(0);
    }
    if(write(fd, "bbbbbbbbbb", 10) != 10){
     59c:	83 ec 04             	sub    $0x4,%esp
     59f:	6a 0a                	push   $0xa
     5a1:	68 5f 44 00 00       	push   $0x445f
     5a6:	56                   	push   %esi
     5a7:	e8 d6 38 00 00       	call   3e82 <write>
     5ac:	83 c4 10             	add    $0x10,%esp
     5af:	83 f8 0a             	cmp    $0xa,%eax
     5b2:	0f 85 e1 00 00 00    	jne    699 <writetest+0x169>
    printf(stdout, "creat small succeeded; ok\n");
  } else {
    printf(stdout, "error: creat small failed!\n");
    exit(0);
  }
  for(i = 0; i < 100; i++){
     5b8:	83 c3 01             	add    $0x1,%ebx
     5bb:	83 fb 64             	cmp    $0x64,%ebx
     5be:	75 c0                	jne    580 <writetest+0x50>
    if(write(fd, "bbbbbbbbbb", 10) != 10){
      printf(stdout, "error: write bb %d new file failed\n", i);
      exit(0);
    }
  }
  printf(stdout, "writes ok\n");
     5c0:	83 ec 08             	sub    $0x8,%esp
     5c3:	68 6a 44 00 00       	push   $0x446a
     5c8:	ff 35 64 63 00 00    	pushl  0x6364
     5ce:	e8 dd 39 00 00       	call   3fb0 <printf>
  close(fd);
     5d3:	89 34 24             	mov    %esi,(%esp)
     5d6:	e8 af 38 00 00       	call   3e8a <close>
  fd = open("small", O_RDONLY);
     5db:	58                   	pop    %eax
     5dc:	5a                   	pop    %edx
     5dd:	6a 00                	push   $0x0
     5df:	68 17 44 00 00       	push   $0x4417
     5e4:	e8 b9 38 00 00       	call   3ea2 <open>
  if(fd >= 0){
     5e9:	83 c4 10             	add    $0x10,%esp
     5ec:	85 c0                	test   %eax,%eax
      exit(0);
    }
  }
  printf(stdout, "writes ok\n");
  close(fd);
  fd = open("small", O_RDONLY);
     5ee:	89 c3                	mov    %eax,%ebx
  if(fd >= 0){
     5f0:	0f 88 c3 00 00 00    	js     6b9 <writetest+0x189>
    printf(stdout, "open small succeeded ok\n");
     5f6:	83 ec 08             	sub    $0x8,%esp
     5f9:	68 75 44 00 00       	push   $0x4475
     5fe:	ff 35 64 63 00 00    	pushl  0x6364
     604:	e8 a7 39 00 00       	call   3fb0 <printf>
  } else {
    printf(stdout, "error: open small failed!\n");
    exit(0);
  }
  i = read(fd, buf, 2000);
     609:	83 c4 0c             	add    $0xc,%esp
     60c:	68 d0 07 00 00       	push   $0x7d0
     611:	68 40 8b 00 00       	push   $0x8b40
     616:	53                   	push   %ebx
     617:	e8 5e 38 00 00       	call   3e7a <read>
  if(i == 2000){
     61c:	83 c4 10             	add    $0x10,%esp
     61f:	3d d0 07 00 00       	cmp    $0x7d0,%eax
     624:	0f 85 ae 00 00 00    	jne    6d8 <writetest+0x1a8>
    printf(stdout, "read succeeded ok\n");
     62a:	83 ec 08             	sub    $0x8,%esp
     62d:	68 a9 44 00 00       	push   $0x44a9
     632:	ff 35 64 63 00 00    	pushl  0x6364
     638:	e8 73 39 00 00       	call   3fb0 <printf>
  } else {
    printf(stdout, "read failed\n");
    exit(0);
  }
  close(fd);
     63d:	89 1c 24             	mov    %ebx,(%esp)
     640:	e8 45 38 00 00       	call   3e8a <close>

  if(unlink("small") < 0){
     645:	c7 04 24 17 44 00 00 	movl   $0x4417,(%esp)
     64c:	e8 61 38 00 00       	call   3eb2 <unlink>
     651:	83 c4 10             	add    $0x10,%esp
     654:	85 c0                	test   %eax,%eax
     656:	0f 88 9b 00 00 00    	js     6f7 <writetest+0x1c7>
    printf(stdout, "unlink small failed\n");
    exit(0);
  }
  printf(stdout, "small file test ok\n");
     65c:	83 ec 08             	sub    $0x8,%esp
     65f:	68 d1 44 00 00       	push   $0x44d1
     664:	ff 35 64 63 00 00    	pushl  0x6364
     66a:	e8 41 39 00 00       	call   3fb0 <printf>
}
     66f:	83 c4 10             	add    $0x10,%esp
     672:	8d 65 f8             	lea    -0x8(%ebp),%esp
     675:	5b                   	pop    %ebx
     676:	5e                   	pop    %esi
     677:	5d                   	pop    %ebp
     678:	c3                   	ret    
    printf(stdout, "error: creat small failed!\n");
    exit(0);
  }
  for(i = 0; i < 100; i++){
    if(write(fd, "aaaaaaaaaa", 10) != 10){
      printf(stdout, "error: write aa %d new file failed\n", i);
     679:	83 ec 04             	sub    $0x4,%esp
     67c:	53                   	push   %ebx
     67d:	68 18 53 00 00       	push   $0x5318
     682:	ff 35 64 63 00 00    	pushl  0x6364
     688:	e8 23 39 00 00       	call   3fb0 <printf>
      exit(0);
     68d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     694:	e8 c9 37 00 00       	call   3e62 <exit>
    }
    if(write(fd, "bbbbbbbbbb", 10) != 10){
      printf(stdout, "error: write bb %d new file failed\n", i);
     699:	83 ec 04             	sub    $0x4,%esp
     69c:	53                   	push   %ebx
     69d:	68 3c 53 00 00       	push   $0x533c
     6a2:	ff 35 64 63 00 00    	pushl  0x6364
     6a8:	e8 03 39 00 00       	call   3fb0 <printf>
      exit(0);
     6ad:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     6b4:	e8 a9 37 00 00       	call   3e62 <exit>
  close(fd);
  fd = open("small", O_RDONLY);
  if(fd >= 0){
    printf(stdout, "open small succeeded ok\n");
  } else {
    printf(stdout, "error: open small failed!\n");
     6b9:	83 ec 08             	sub    $0x8,%esp
     6bc:	68 8e 44 00 00       	push   $0x448e
     6c1:	ff 35 64 63 00 00    	pushl  0x6364
     6c7:	e8 e4 38 00 00       	call   3fb0 <printf>
    exit(0);
     6cc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     6d3:	e8 8a 37 00 00       	call   3e62 <exit>
  }
  i = read(fd, buf, 2000);
  if(i == 2000){
    printf(stdout, "read succeeded ok\n");
  } else {
    printf(stdout, "read failed\n");
     6d8:	83 ec 08             	sub    $0x8,%esp
     6db:	68 d5 47 00 00       	push   $0x47d5
     6e0:	ff 35 64 63 00 00    	pushl  0x6364
     6e6:	e8 c5 38 00 00       	call   3fb0 <printf>
    exit(0);
     6eb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     6f2:	e8 6b 37 00 00       	call   3e62 <exit>
  }
  close(fd);

  if(unlink("small") < 0){
    printf(stdout, "unlink small failed\n");
     6f7:	83 ec 08             	sub    $0x8,%esp
     6fa:	68 bc 44 00 00       	push   $0x44bc
     6ff:	ff 35 64 63 00 00    	pushl  0x6364
     705:	e8 a6 38 00 00       	call   3fb0 <printf>
    exit(0);
     70a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     711:	e8 4c 37 00 00       	call   3e62 <exit>
  printf(stdout, "small file test\n");
  fd = open("small", O_CREATE|O_RDWR);
  if(fd >= 0){
    printf(stdout, "creat small succeeded; ok\n");
  } else {
    printf(stdout, "error: creat small failed!\n");
     716:	83 ec 08             	sub    $0x8,%esp
     719:	68 38 44 00 00       	push   $0x4438
     71e:	ff 35 64 63 00 00    	pushl  0x6364
     724:	e8 87 38 00 00       	call   3fb0 <printf>
    exit(0);
     729:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     730:	e8 2d 37 00 00       	call   3e62 <exit>
     735:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     739:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000740 <writetest1>:
  printf(stdout, "small file test ok\n");
}

void
writetest1(void)
{
     740:	55                   	push   %ebp
     741:	89 e5                	mov    %esp,%ebp
     743:	56                   	push   %esi
     744:	53                   	push   %ebx
  int i, fd, n;

  printf(stdout, "big files test\n");
     745:	83 ec 08             	sub    $0x8,%esp
     748:	68 e5 44 00 00       	push   $0x44e5
     74d:	ff 35 64 63 00 00    	pushl  0x6364
     753:	e8 58 38 00 00       	call   3fb0 <printf>

  fd = open("big", O_CREATE|O_RDWR);
     758:	59                   	pop    %ecx
     759:	5b                   	pop    %ebx
     75a:	68 02 02 00 00       	push   $0x202
     75f:	68 5f 45 00 00       	push   $0x455f
     764:	e8 39 37 00 00       	call   3ea2 <open>
  if(fd < 0){
     769:	83 c4 10             	add    $0x10,%esp
     76c:	85 c0                	test   %eax,%eax
     76e:	0f 88 8b 01 00 00    	js     8ff <writetest1+0x1bf>
     774:	89 c6                	mov    %eax,%esi
     776:	31 db                	xor    %ebx,%ebx
     778:	90                   	nop
     779:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    exit(0);
  }

  for(i = 0; i < MAXFILE; i++){
    ((int*)buf)[0] = i;
    if(write(fd, buf, 512) != 512){
     780:	83 ec 04             	sub    $0x4,%esp
    printf(stdout, "error: creat big failed!\n");
    exit(0);
  }

  for(i = 0; i < MAXFILE; i++){
    ((int*)buf)[0] = i;
     783:	89 1d 40 8b 00 00    	mov    %ebx,0x8b40
    if(write(fd, buf, 512) != 512){
     789:	68 00 02 00 00       	push   $0x200
     78e:	68 40 8b 00 00       	push   $0x8b40
     793:	56                   	push   %esi
     794:	e8 e9 36 00 00       	call   3e82 <write>
     799:	83 c4 10             	add    $0x10,%esp
     79c:	3d 00 02 00 00       	cmp    $0x200,%eax
     7a1:	0f 85 b7 00 00 00    	jne    85e <writetest1+0x11e>
  if(fd < 0){
    printf(stdout, "error: creat big failed!\n");
    exit(0);
  }

  for(i = 0; i < MAXFILE; i++){
     7a7:	83 c3 01             	add    $0x1,%ebx
     7aa:	81 fb 8c 00 00 00    	cmp    $0x8c,%ebx
     7b0:	75 ce                	jne    780 <writetest1+0x40>
      printf(stdout, "error: write big file failed\n", i);
      exit(0);
    }
  }

  close(fd);
     7b2:	83 ec 0c             	sub    $0xc,%esp
     7b5:	56                   	push   %esi
     7b6:	e8 cf 36 00 00       	call   3e8a <close>

  fd = open("big", O_RDONLY);
     7bb:	58                   	pop    %eax
     7bc:	5a                   	pop    %edx
     7bd:	6a 00                	push   $0x0
     7bf:	68 5f 45 00 00       	push   $0x455f
     7c4:	e8 d9 36 00 00       	call   3ea2 <open>
  if(fd < 0){
     7c9:	83 c4 10             	add    $0x10,%esp
     7cc:	85 c0                	test   %eax,%eax
    }
  }

  close(fd);

  fd = open("big", O_RDONLY);
     7ce:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     7d0:	0f 88 0a 01 00 00    	js     8e0 <writetest1+0x1a0>
     7d6:	31 db                	xor    %ebx,%ebx
     7d8:	eb 21                	jmp    7fb <writetest1+0xbb>
     7da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(n == MAXFILE - 1){
        printf(stdout, "read only %d blocks from big", n);
        exit(0);
      }
      break;
    } else if(i != 512){
     7e0:	3d 00 02 00 00       	cmp    $0x200,%eax
     7e5:	0f 85 b1 00 00 00    	jne    89c <writetest1+0x15c>
      printf(stdout, "read failed %d\n", i);
      exit(0);
    }
    if(((int*)buf)[0] != n){
     7eb:	a1 40 8b 00 00       	mov    0x8b40,%eax
     7f0:	39 c3                	cmp    %eax,%ebx
     7f2:	0f 85 86 00 00 00    	jne    87e <writetest1+0x13e>
      printf(stdout, "read content of block %d is %d\n",
             n, ((int*)buf)[0]);
      exit(0);
    }
    n++;
     7f8:	83 c3 01             	add    $0x1,%ebx
    exit(0);
  }

  n = 0;
  for(;;){
    i = read(fd, buf, 512);
     7fb:	83 ec 04             	sub    $0x4,%esp
     7fe:	68 00 02 00 00       	push   $0x200
     803:	68 40 8b 00 00       	push   $0x8b40
     808:	56                   	push   %esi
     809:	e8 6c 36 00 00       	call   3e7a <read>
    if(i == 0){
     80e:	83 c4 10             	add    $0x10,%esp
     811:	85 c0                	test   %eax,%eax
     813:	75 cb                	jne    7e0 <writetest1+0xa0>
      if(n == MAXFILE - 1){
     815:	81 fb 8b 00 00 00    	cmp    $0x8b,%ebx
     81b:	0f 84 9b 00 00 00    	je     8bc <writetest1+0x17c>
             n, ((int*)buf)[0]);
      exit(0);
    }
    n++;
  }
  close(fd);
     821:	83 ec 0c             	sub    $0xc,%esp
     824:	56                   	push   %esi
     825:	e8 60 36 00 00       	call   3e8a <close>
  if(unlink("big") < 0){
     82a:	c7 04 24 5f 45 00 00 	movl   $0x455f,(%esp)
     831:	e8 7c 36 00 00       	call   3eb2 <unlink>
     836:	83 c4 10             	add    $0x10,%esp
     839:	85 c0                	test   %eax,%eax
     83b:	0f 88 dd 00 00 00    	js     91e <writetest1+0x1de>
    printf(stdout, "unlink big failed\n");
    exit(0);
  }
  printf(stdout, "big files ok\n");
     841:	83 ec 08             	sub    $0x8,%esp
     844:	68 86 45 00 00       	push   $0x4586
     849:	ff 35 64 63 00 00    	pushl  0x6364
     84f:	e8 5c 37 00 00       	call   3fb0 <printf>
}
     854:	83 c4 10             	add    $0x10,%esp
     857:	8d 65 f8             	lea    -0x8(%ebp),%esp
     85a:	5b                   	pop    %ebx
     85b:	5e                   	pop    %esi
     85c:	5d                   	pop    %ebp
     85d:	c3                   	ret    
  }

  for(i = 0; i < MAXFILE; i++){
    ((int*)buf)[0] = i;
    if(write(fd, buf, 512) != 512){
      printf(stdout, "error: write big file failed\n", i);
     85e:	83 ec 04             	sub    $0x4,%esp
     861:	53                   	push   %ebx
     862:	68 0f 45 00 00       	push   $0x450f
     867:	ff 35 64 63 00 00    	pushl  0x6364
     86d:	e8 3e 37 00 00       	call   3fb0 <printf>
      exit(0);
     872:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     879:	e8 e4 35 00 00       	call   3e62 <exit>
    } else if(i != 512){
      printf(stdout, "read failed %d\n", i);
      exit(0);
    }
    if(((int*)buf)[0] != n){
      printf(stdout, "read content of block %d is %d\n",
     87e:	50                   	push   %eax
     87f:	53                   	push   %ebx
     880:	68 60 53 00 00       	push   $0x5360
     885:	ff 35 64 63 00 00    	pushl  0x6364
     88b:	e8 20 37 00 00       	call   3fb0 <printf>
             n, ((int*)buf)[0]);
      exit(0);
     890:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     897:	e8 c6 35 00 00       	call   3e62 <exit>
        printf(stdout, "read only %d blocks from big", n);
        exit(0);
      }
      break;
    } else if(i != 512){
      printf(stdout, "read failed %d\n", i);
     89c:	83 ec 04             	sub    $0x4,%esp
     89f:	50                   	push   %eax
     8a0:	68 63 45 00 00       	push   $0x4563
     8a5:	ff 35 64 63 00 00    	pushl  0x6364
     8ab:	e8 00 37 00 00       	call   3fb0 <printf>
      exit(0);
     8b0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     8b7:	e8 a6 35 00 00       	call   3e62 <exit>
  n = 0;
  for(;;){
    i = read(fd, buf, 512);
    if(i == 0){
      if(n == MAXFILE - 1){
        printf(stdout, "read only %d blocks from big", n);
     8bc:	83 ec 04             	sub    $0x4,%esp
     8bf:	68 8b 00 00 00       	push   $0x8b
     8c4:	68 46 45 00 00       	push   $0x4546
     8c9:	ff 35 64 63 00 00    	pushl  0x6364
     8cf:	e8 dc 36 00 00       	call   3fb0 <printf>
        exit(0);
     8d4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     8db:	e8 82 35 00 00       	call   3e62 <exit>

  close(fd);

  fd = open("big", O_RDONLY);
  if(fd < 0){
    printf(stdout, "error: open big failed!\n");
     8e0:	83 ec 08             	sub    $0x8,%esp
     8e3:	68 2d 45 00 00       	push   $0x452d
     8e8:	ff 35 64 63 00 00    	pushl  0x6364
     8ee:	e8 bd 36 00 00       	call   3fb0 <printf>
    exit(0);
     8f3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     8fa:	e8 63 35 00 00       	call   3e62 <exit>

  printf(stdout, "big files test\n");

  fd = open("big", O_CREATE|O_RDWR);
  if(fd < 0){
    printf(stdout, "error: creat big failed!\n");
     8ff:	83 ec 08             	sub    $0x8,%esp
     902:	68 f5 44 00 00       	push   $0x44f5
     907:	ff 35 64 63 00 00    	pushl  0x6364
     90d:	e8 9e 36 00 00       	call   3fb0 <printf>
    exit(0);
     912:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     919:	e8 44 35 00 00       	call   3e62 <exit>
    }
    n++;
  }
  close(fd);
  if(unlink("big") < 0){
    printf(stdout, "unlink big failed\n");
     91e:	83 ec 08             	sub    $0x8,%esp
     921:	68 73 45 00 00       	push   $0x4573
     926:	ff 35 64 63 00 00    	pushl  0x6364
     92c:	e8 7f 36 00 00       	call   3fb0 <printf>
    exit(0);
     931:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     938:	e8 25 35 00 00       	call   3e62 <exit>
     93d:	8d 76 00             	lea    0x0(%esi),%esi

00000940 <createtest>:
  printf(stdout, "big files ok\n");
}

void
createtest(void)
{
     940:	55                   	push   %ebp
     941:	89 e5                	mov    %esp,%ebp
     943:	53                   	push   %ebx
  int i, fd;

  printf(stdout, "many creates, followed by unlink test\n");

  name[0] = 'a';
  name[2] = '\0';
     944:	bb 30 00 00 00       	mov    $0x30,%ebx
  printf(stdout, "big files ok\n");
}

void
createtest(void)
{
     949:	83 ec 0c             	sub    $0xc,%esp
  int i, fd;

  printf(stdout, "many creates, followed by unlink test\n");
     94c:	68 80 53 00 00       	push   $0x5380
     951:	ff 35 64 63 00 00    	pushl  0x6364
     957:	e8 54 36 00 00       	call   3fb0 <printf>

  name[0] = 'a';
     95c:	c6 05 40 ab 00 00 61 	movb   $0x61,0xab40
  name[2] = '\0';
     963:	c6 05 42 ab 00 00 00 	movb   $0x0,0xab42
     96a:	83 c4 10             	add    $0x10,%esp
     96d:	8d 76 00             	lea    0x0(%esi),%esi
  for(i = 0; i < 52; i++){
    name[1] = '0' + i;
    fd = open(name, O_CREATE|O_RDWR);
     970:	83 ec 08             	sub    $0x8,%esp
  printf(stdout, "many creates, followed by unlink test\n");

  name[0] = 'a';
  name[2] = '\0';
  for(i = 0; i < 52; i++){
    name[1] = '0' + i;
     973:	88 1d 41 ab 00 00    	mov    %bl,0xab41
     979:	83 c3 01             	add    $0x1,%ebx
    fd = open(name, O_CREATE|O_RDWR);
     97c:	68 02 02 00 00       	push   $0x202
     981:	68 40 ab 00 00       	push   $0xab40
     986:	e8 17 35 00 00       	call   3ea2 <open>
    close(fd);
     98b:	89 04 24             	mov    %eax,(%esp)
     98e:	e8 f7 34 00 00       	call   3e8a <close>

  printf(stdout, "many creates, followed by unlink test\n");

  name[0] = 'a';
  name[2] = '\0';
  for(i = 0; i < 52; i++){
     993:	83 c4 10             	add    $0x10,%esp
     996:	80 fb 64             	cmp    $0x64,%bl
     999:	75 d5                	jne    970 <createtest+0x30>
    name[1] = '0' + i;
    fd = open(name, O_CREATE|O_RDWR);
    close(fd);
  }
  name[0] = 'a';
     99b:	c6 05 40 ab 00 00 61 	movb   $0x61,0xab40
  name[2] = '\0';
     9a2:	c6 05 42 ab 00 00 00 	movb   $0x0,0xab42
     9a9:	bb 30 00 00 00       	mov    $0x30,%ebx
     9ae:	66 90                	xchg   %ax,%ax
  for(i = 0; i < 52; i++){
    name[1] = '0' + i;
    unlink(name);
     9b0:	83 ec 0c             	sub    $0xc,%esp
    close(fd);
  }
  name[0] = 'a';
  name[2] = '\0';
  for(i = 0; i < 52; i++){
    name[1] = '0' + i;
     9b3:	88 1d 41 ab 00 00    	mov    %bl,0xab41
     9b9:	83 c3 01             	add    $0x1,%ebx
    unlink(name);
     9bc:	68 40 ab 00 00       	push   $0xab40
     9c1:	e8 ec 34 00 00       	call   3eb2 <unlink>
    fd = open(name, O_CREATE|O_RDWR);
    close(fd);
  }
  name[0] = 'a';
  name[2] = '\0';
  for(i = 0; i < 52; i++){
     9c6:	83 c4 10             	add    $0x10,%esp
     9c9:	80 fb 64             	cmp    $0x64,%bl
     9cc:	75 e2                	jne    9b0 <createtest+0x70>
    name[1] = '0' + i;
    unlink(name);
  }
  printf(stdout, "many creates, followed by unlink; ok\n");
     9ce:	83 ec 08             	sub    $0x8,%esp
     9d1:	68 a8 53 00 00       	push   $0x53a8
     9d6:	ff 35 64 63 00 00    	pushl  0x6364
     9dc:	e8 cf 35 00 00       	call   3fb0 <printf>
}
     9e1:	83 c4 10             	add    $0x10,%esp
     9e4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     9e7:	c9                   	leave  
     9e8:	c3                   	ret    
     9e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000009f0 <dirtest>:

void dirtest(void)
{
     9f0:	55                   	push   %ebp
     9f1:	89 e5                	mov    %esp,%ebp
     9f3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "mkdir test\n");
     9f6:	68 94 45 00 00       	push   $0x4594
     9fb:	ff 35 64 63 00 00    	pushl  0x6364
     a01:	e8 aa 35 00 00       	call   3fb0 <printf>

  if(mkdir("dir0") < 0){
     a06:	c7 04 24 a0 45 00 00 	movl   $0x45a0,(%esp)
     a0d:	e8 b8 34 00 00       	call   3eca <mkdir>
     a12:	83 c4 10             	add    $0x10,%esp
     a15:	85 c0                	test   %eax,%eax
     a17:	78 58                	js     a71 <dirtest+0x81>
    printf(stdout, "mkdir failed\n");
    exit(0);
  }

  if(chdir("dir0") < 0){
     a19:	83 ec 0c             	sub    $0xc,%esp
     a1c:	68 a0 45 00 00       	push   $0x45a0
     a21:	e8 ac 34 00 00       	call   3ed2 <chdir>
     a26:	83 c4 10             	add    $0x10,%esp
     a29:	85 c0                	test   %eax,%eax
     a2b:	0f 88 9a 00 00 00    	js     acb <dirtest+0xdb>
    printf(stdout, "chdir dir0 failed\n");
    exit(0);
  }

  if(chdir("..") < 0){
     a31:	83 ec 0c             	sub    $0xc,%esp
     a34:	68 45 4b 00 00       	push   $0x4b45
     a39:	e8 94 34 00 00       	call   3ed2 <chdir>
     a3e:	83 c4 10             	add    $0x10,%esp
     a41:	85 c0                	test   %eax,%eax
     a43:	78 68                	js     aad <dirtest+0xbd>
    printf(stdout, "chdir .. failed\n");
    exit(0);
  }

  if(unlink("dir0") < 0){
     a45:	83 ec 0c             	sub    $0xc,%esp
     a48:	68 a0 45 00 00       	push   $0x45a0
     a4d:	e8 60 34 00 00       	call   3eb2 <unlink>
     a52:	83 c4 10             	add    $0x10,%esp
     a55:	85 c0                	test   %eax,%eax
     a57:	78 36                	js     a8f <dirtest+0x9f>
    printf(stdout, "unlink dir0 failed\n");
    exit(0);
  }
  printf(stdout, "mkdir test ok\n");
     a59:	83 ec 08             	sub    $0x8,%esp
     a5c:	68 dd 45 00 00       	push   $0x45dd
     a61:	ff 35 64 63 00 00    	pushl  0x6364
     a67:	e8 44 35 00 00       	call   3fb0 <printf>
}
     a6c:	83 c4 10             	add    $0x10,%esp
     a6f:	c9                   	leave  
     a70:	c3                   	ret    
void dirtest(void)
{
  printf(stdout, "mkdir test\n");

  if(mkdir("dir0") < 0){
    printf(stdout, "mkdir failed\n");
     a71:	50                   	push   %eax
     a72:	50                   	push   %eax
     a73:	68 d0 42 00 00       	push   $0x42d0
     a78:	ff 35 64 63 00 00    	pushl  0x6364
     a7e:	e8 2d 35 00 00       	call   3fb0 <printf>
    exit(0);
     a83:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     a8a:	e8 d3 33 00 00       	call   3e62 <exit>
    printf(stdout, "chdir .. failed\n");
    exit(0);
  }

  if(unlink("dir0") < 0){
    printf(stdout, "unlink dir0 failed\n");
     a8f:	50                   	push   %eax
     a90:	50                   	push   %eax
     a91:	68 c9 45 00 00       	push   $0x45c9
     a96:	ff 35 64 63 00 00    	pushl  0x6364
     a9c:	e8 0f 35 00 00       	call   3fb0 <printf>
    exit(0);
     aa1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     aa8:	e8 b5 33 00 00       	call   3e62 <exit>
    printf(stdout, "chdir dir0 failed\n");
    exit(0);
  }

  if(chdir("..") < 0){
    printf(stdout, "chdir .. failed\n");
     aad:	52                   	push   %edx
     aae:	52                   	push   %edx
     aaf:	68 b8 45 00 00       	push   $0x45b8
     ab4:	ff 35 64 63 00 00    	pushl  0x6364
     aba:	e8 f1 34 00 00       	call   3fb0 <printf>
    exit(0);
     abf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     ac6:	e8 97 33 00 00       	call   3e62 <exit>
    printf(stdout, "mkdir failed\n");
    exit(0);
  }

  if(chdir("dir0") < 0){
    printf(stdout, "chdir dir0 failed\n");
     acb:	51                   	push   %ecx
     acc:	51                   	push   %ecx
     acd:	68 a5 45 00 00       	push   $0x45a5
     ad2:	ff 35 64 63 00 00    	pushl  0x6364
     ad8:	e8 d3 34 00 00       	call   3fb0 <printf>
    exit(0);
     add:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     ae4:	e8 79 33 00 00       	call   3e62 <exit>
     ae9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000af0 <exectest>:
  printf(stdout, "mkdir test ok\n");
}

void
exectest(void)
{
     af0:	55                   	push   %ebp
     af1:	89 e5                	mov    %esp,%ebp
     af3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exec test\n");
     af6:	68 ec 45 00 00       	push   $0x45ec
     afb:	ff 35 64 63 00 00    	pushl  0x6364
     b01:	e8 aa 34 00 00       	call   3fb0 <printf>
  if(exec("echo", echoargv) < 0){
     b06:	5a                   	pop    %edx
     b07:	59                   	pop    %ecx
     b08:	68 68 63 00 00       	push   $0x6368
     b0d:	68 b5 43 00 00       	push   $0x43b5
     b12:	e8 83 33 00 00       	call   3e9a <exec>
     b17:	83 c4 10             	add    $0x10,%esp
     b1a:	85 c0                	test   %eax,%eax
     b1c:	78 02                	js     b20 <exectest+0x30>
    printf(stdout, "exec echo failed\n");
    exit(0);
  }
}
     b1e:	c9                   	leave  
     b1f:	c3                   	ret    
void
exectest(void)
{
  printf(stdout, "exec test\n");
  if(exec("echo", echoargv) < 0){
    printf(stdout, "exec echo failed\n");
     b20:	50                   	push   %eax
     b21:	50                   	push   %eax
     b22:	68 f7 45 00 00       	push   $0x45f7
     b27:	ff 35 64 63 00 00    	pushl  0x6364
     b2d:	e8 7e 34 00 00       	call   3fb0 <printf>
    exit(0);
     b32:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     b39:	e8 24 33 00 00       	call   3e62 <exit>
     b3e:	66 90                	xchg   %ax,%ax

00000b40 <pipe1>:

// simple fork and pipe read/write

void
pipe1(void)
{
     b40:	55                   	push   %ebp
     b41:	89 e5                	mov    %esp,%ebp
     b43:	57                   	push   %edi
     b44:	56                   	push   %esi
     b45:	53                   	push   %ebx
  int fds[2], pid;
  int seq, i, n, cc, total;

  if(pipe(fds) != 0){
     b46:	8d 45 e0             	lea    -0x20(%ebp),%eax

// simple fork and pipe read/write

void
pipe1(void)
{
     b49:	83 ec 38             	sub    $0x38,%esp
  int fds[2], pid;
  int seq, i, n, cc, total;

  if(pipe(fds) != 0){
     b4c:	50                   	push   %eax
     b4d:	e8 20 33 00 00       	call   3e72 <pipe>
     b52:	83 c4 10             	add    $0x10,%esp
     b55:	85 c0                	test   %eax,%eax
     b57:	0f 85 4c 01 00 00    	jne    ca9 <pipe1+0x169>
    printf(1, "pipe() failed\n");
    exit(0);
  }
  pid = fork();
     b5d:	e8 f8 32 00 00       	call   3e5a <fork>
  seq = 0;
  if(pid == 0){
     b62:	83 f8 00             	cmp    $0x0,%eax
     b65:	0f 84 86 00 00 00    	je     bf1 <pipe1+0xb1>
        printf(1, "pipe1 oops 1\n");
        exit(0);
      }
    }
    exit(0);
  } else if(pid > 0){
     b6b:	0f 8e 53 01 00 00    	jle    cc4 <pipe1+0x184>
    close(fds[1]);
     b71:	83 ec 0c             	sub    $0xc,%esp
     b74:	ff 75 e4             	pushl  -0x1c(%ebp)
    total = 0;
    cc = 1;
     b77:	bf 01 00 00 00       	mov    $0x1,%edi
  if(pipe(fds) != 0){
    printf(1, "pipe() failed\n");
    exit(0);
  }
  pid = fork();
  seq = 0;
     b7c:	31 db                	xor    %ebx,%ebx
        exit(0);
      }
    }
    exit(0);
  } else if(pid > 0){
    close(fds[1]);
     b7e:	e8 07 33 00 00       	call   3e8a <close>
    total = 0;
    cc = 1;
    while((n = read(fds[0], buf, cc)) > 0){
     b83:	83 c4 10             	add    $0x10,%esp
      }
    }
    exit(0);
  } else if(pid > 0){
    close(fds[1]);
    total = 0;
     b86:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    cc = 1;
    while((n = read(fds[0], buf, cc)) > 0){
     b8d:	83 ec 04             	sub    $0x4,%esp
     b90:	57                   	push   %edi
     b91:	68 40 8b 00 00       	push   $0x8b40
     b96:	ff 75 e0             	pushl  -0x20(%ebp)
     b99:	e8 dc 32 00 00       	call   3e7a <read>
     b9e:	83 c4 10             	add    $0x10,%esp
     ba1:	85 c0                	test   %eax,%eax
     ba3:	0f 8e ac 00 00 00    	jle    c55 <pipe1+0x115>
      for(i = 0; i < n; i++){
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     ba9:	89 d9                	mov    %ebx,%ecx
     bab:	8d 34 18             	lea    (%eax,%ebx,1),%esi
     bae:	f7 d9                	neg    %ecx
     bb0:	38 9c 0b 40 8b 00 00 	cmp    %bl,0x8b40(%ebx,%ecx,1)
     bb7:	8d 53 01             	lea    0x1(%ebx),%edx
     bba:	75 1b                	jne    bd7 <pipe1+0x97>
  } else if(pid > 0){
    close(fds[1]);
    total = 0;
    cc = 1;
    while((n = read(fds[0], buf, cc)) > 0){
      for(i = 0; i < n; i++){
     bbc:	39 f2                	cmp    %esi,%edx
     bbe:	89 d3                	mov    %edx,%ebx
     bc0:	75 ee                	jne    bb0 <pipe1+0x70>
          printf(1, "pipe1 oops 2\n");
          return;
        }
      }
      total += n;
      cc = cc * 2;
     bc2:	01 ff                	add    %edi,%edi
        if((buf[i] & 0xff) != (seq++ & 0xff)){
          printf(1, "pipe1 oops 2\n");
          return;
        }
      }
      total += n;
     bc4:	01 45 d4             	add    %eax,-0x2c(%ebp)
     bc7:	b8 00 20 00 00       	mov    $0x2000,%eax
     bcc:	81 ff 00 20 00 00    	cmp    $0x2000,%edi
     bd2:	0f 4f f8             	cmovg  %eax,%edi
     bd5:	eb b6                	jmp    b8d <pipe1+0x4d>
    total = 0;
    cc = 1;
    while((n = read(fds[0], buf, cc)) > 0){
      for(i = 0; i < n; i++){
        if((buf[i] & 0xff) != (seq++ & 0xff)){
          printf(1, "pipe1 oops 2\n");
     bd7:	83 ec 08             	sub    $0x8,%esp
     bda:	68 26 46 00 00       	push   $0x4626
     bdf:	6a 01                	push   $0x1
     be1:	e8 ca 33 00 00       	call   3fb0 <printf>
          return;
     be6:	83 c4 10             	add    $0x10,%esp
  } else {
    printf(1, "fork() failed\n");
    exit(0);
  }
  printf(1, "pipe1 ok\n");
}
     be9:	8d 65 f4             	lea    -0xc(%ebp),%esp
     bec:	5b                   	pop    %ebx
     bed:	5e                   	pop    %esi
     bee:	5f                   	pop    %edi
     bef:	5d                   	pop    %ebp
     bf0:	c3                   	ret    
    exit(0);
  }
  pid = fork();
  seq = 0;
  if(pid == 0){
    close(fds[0]);
     bf1:	83 ec 0c             	sub    $0xc,%esp
     bf4:	ff 75 e0             	pushl  -0x20(%ebp)
  if(pipe(fds) != 0){
    printf(1, "pipe() failed\n");
    exit(0);
  }
  pid = fork();
  seq = 0;
     bf7:	31 f6                	xor    %esi,%esi
  if(pid == 0){
    close(fds[0]);
     bf9:	e8 8c 32 00 00       	call   3e8a <close>
     bfe:	83 c4 10             	add    $0x10,%esp
    for(n = 0; n < 5; n++){
      for(i = 0; i < 1033; i++)
        buf[i] = seq++;
     c01:	89 f0                	mov    %esi,%eax
     c03:	8d 96 09 04 00 00    	lea    0x409(%esi),%edx

// simple fork and pipe read/write

void
pipe1(void)
{
     c09:	89 f3                	mov    %esi,%ebx
  seq = 0;
  if(pid == 0){
    close(fds[0]);
    for(n = 0; n < 5; n++){
      for(i = 0; i < 1033; i++)
        buf[i] = seq++;
     c0b:	f7 d8                	neg    %eax
     c0d:	8d 76 00             	lea    0x0(%esi),%esi
     c10:	88 9c 18 40 8b 00 00 	mov    %bl,0x8b40(%eax,%ebx,1)
     c17:	83 c3 01             	add    $0x1,%ebx
  pid = fork();
  seq = 0;
  if(pid == 0){
    close(fds[0]);
    for(n = 0; n < 5; n++){
      for(i = 0; i < 1033; i++)
     c1a:	39 d3                	cmp    %edx,%ebx
     c1c:	75 f2                	jne    c10 <pipe1+0xd0>
        buf[i] = seq++;
      if(write(fds[1], buf, 1033) != 1033){
     c1e:	83 ec 04             	sub    $0x4,%esp
     c21:	89 de                	mov    %ebx,%esi
     c23:	68 09 04 00 00       	push   $0x409
     c28:	68 40 8b 00 00       	push   $0x8b40
     c2d:	ff 75 e4             	pushl  -0x1c(%ebp)
     c30:	e8 4d 32 00 00       	call   3e82 <write>
     c35:	83 c4 10             	add    $0x10,%esp
     c38:	3d 09 04 00 00       	cmp    $0x409,%eax
     c3d:	0f 85 9c 00 00 00    	jne    cdf <pipe1+0x19f>
  }
  pid = fork();
  seq = 0;
  if(pid == 0){
    close(fds[0]);
    for(n = 0; n < 5; n++){
     c43:	81 fb 2d 14 00 00    	cmp    $0x142d,%ebx
     c49:	75 b6                	jne    c01 <pipe1+0xc1>
      if(write(fds[1], buf, 1033) != 1033){
        printf(1, "pipe1 oops 1\n");
        exit(0);
      }
    }
    exit(0);
     c4b:	83 ec 0c             	sub    $0xc,%esp
     c4e:	6a 00                	push   $0x0
     c50:	e8 0d 32 00 00       	call   3e62 <exit>
      total += n;
      cc = cc * 2;
      if(cc > sizeof(buf))
        cc = sizeof(buf);
    }
    if(total != 5 * 1033){
     c55:	81 7d d4 2d 14 00 00 	cmpl   $0x142d,-0x2c(%ebp)
     c5c:	75 2d                	jne    c8b <pipe1+0x14b>
      printf(1, "pipe1 oops 3 total %d\n", total);
      exit(0);
    }
    close(fds[0]);
     c5e:	83 ec 0c             	sub    $0xc,%esp
     c61:	ff 75 e0             	pushl  -0x20(%ebp)
     c64:	e8 21 32 00 00       	call   3e8a <close>
    wait(0);
     c69:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     c70:	e8 f5 31 00 00       	call   3e6a <wait>
  } else {
    printf(1, "fork() failed\n");
    exit(0);
  }
  printf(1, "pipe1 ok\n");
     c75:	58                   	pop    %eax
     c76:	5a                   	pop    %edx
     c77:	68 4b 46 00 00       	push   $0x464b
     c7c:	6a 01                	push   $0x1
     c7e:	e8 2d 33 00 00       	call   3fb0 <printf>
     c83:	83 c4 10             	add    $0x10,%esp
     c86:	e9 5e ff ff ff       	jmp    be9 <pipe1+0xa9>
      cc = cc * 2;
      if(cc > sizeof(buf))
        cc = sizeof(buf);
    }
    if(total != 5 * 1033){
      printf(1, "pipe1 oops 3 total %d\n", total);
     c8b:	83 ec 04             	sub    $0x4,%esp
     c8e:	ff 75 d4             	pushl  -0x2c(%ebp)
     c91:	68 34 46 00 00       	push   $0x4634
     c96:	6a 01                	push   $0x1
     c98:	e8 13 33 00 00       	call   3fb0 <printf>
      exit(0);
     c9d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     ca4:	e8 b9 31 00 00       	call   3e62 <exit>
{
  int fds[2], pid;
  int seq, i, n, cc, total;

  if(pipe(fds) != 0){
    printf(1, "pipe() failed\n");
     ca9:	83 ec 08             	sub    $0x8,%esp
     cac:	68 09 46 00 00       	push   $0x4609
     cb1:	6a 01                	push   $0x1
     cb3:	e8 f8 32 00 00       	call   3fb0 <printf>
    exit(0);
     cb8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     cbf:	e8 9e 31 00 00       	call   3e62 <exit>
      exit(0);
    }
    close(fds[0]);
    wait(0);
  } else {
    printf(1, "fork() failed\n");
     cc4:	83 ec 08             	sub    $0x8,%esp
     cc7:	68 55 46 00 00       	push   $0x4655
     ccc:	6a 01                	push   $0x1
     cce:	e8 dd 32 00 00       	call   3fb0 <printf>
    exit(0);
     cd3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     cda:	e8 83 31 00 00       	call   3e62 <exit>
    close(fds[0]);
    for(n = 0; n < 5; n++){
      for(i = 0; i < 1033; i++)
        buf[i] = seq++;
      if(write(fds[1], buf, 1033) != 1033){
        printf(1, "pipe1 oops 1\n");
     cdf:	83 ec 08             	sub    $0x8,%esp
     ce2:	68 18 46 00 00       	push   $0x4618
     ce7:	6a 01                	push   $0x1
     ce9:	e8 c2 32 00 00       	call   3fb0 <printf>
        exit(0);
     cee:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     cf5:	e8 68 31 00 00       	call   3e62 <exit>
     cfa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000d00 <preempt>:
}

// meant to be run w/ at most two CPUs
void
preempt(void)
{
     d00:	55                   	push   %ebp
     d01:	89 e5                	mov    %esp,%ebp
     d03:	57                   	push   %edi
     d04:	56                   	push   %esi
     d05:	53                   	push   %ebx
     d06:	83 ec 24             	sub    $0x24,%esp
  int pid1, pid2, pid3;
  int pfds[2];

  printf(1, "preempt: ");
     d09:	68 64 46 00 00       	push   $0x4664
     d0e:	6a 01                	push   $0x1
     d10:	e8 9b 32 00 00       	call   3fb0 <printf>
  pid1 = fork();
     d15:	e8 40 31 00 00       	call   3e5a <fork>
  if(pid1 == 0)
     d1a:	83 c4 10             	add    $0x10,%esp
     d1d:	85 c0                	test   %eax,%eax
     d1f:	75 02                	jne    d23 <preempt+0x23>
     d21:	eb fe                	jmp    d21 <preempt+0x21>
     d23:	89 c7                	mov    %eax,%edi
    for(;;)
      ;

  pid2 = fork();
     d25:	e8 30 31 00 00       	call   3e5a <fork>
  if(pid2 == 0)
     d2a:	85 c0                	test   %eax,%eax
  pid1 = fork();
  if(pid1 == 0)
    for(;;)
      ;

  pid2 = fork();
     d2c:	89 c6                	mov    %eax,%esi
  if(pid2 == 0)
     d2e:	75 02                	jne    d32 <preempt+0x32>
     d30:	eb fe                	jmp    d30 <preempt+0x30>
    for(;;)
      ;

  pipe(pfds);
     d32:	8d 45 e0             	lea    -0x20(%ebp),%eax
     d35:	83 ec 0c             	sub    $0xc,%esp
     d38:	50                   	push   %eax
     d39:	e8 34 31 00 00       	call   3e72 <pipe>
  pid3 = fork();
     d3e:	e8 17 31 00 00       	call   3e5a <fork>
  if(pid3 == 0){
     d43:	83 c4 10             	add    $0x10,%esp
     d46:	85 c0                	test   %eax,%eax
  if(pid2 == 0)
    for(;;)
      ;

  pipe(pfds);
  pid3 = fork();
     d48:	89 c3                	mov    %eax,%ebx
  if(pid3 == 0){
     d4a:	75 47                	jne    d93 <preempt+0x93>
    close(pfds[0]);
     d4c:	83 ec 0c             	sub    $0xc,%esp
     d4f:	ff 75 e0             	pushl  -0x20(%ebp)
     d52:	e8 33 31 00 00       	call   3e8a <close>
    if(write(pfds[1], "x", 1) != 1)
     d57:	83 c4 0c             	add    $0xc,%esp
     d5a:	6a 01                	push   $0x1
     d5c:	68 29 4c 00 00       	push   $0x4c29
     d61:	ff 75 e4             	pushl  -0x1c(%ebp)
     d64:	e8 19 31 00 00       	call   3e82 <write>
     d69:	83 c4 10             	add    $0x10,%esp
     d6c:	83 f8 01             	cmp    $0x1,%eax
     d6f:	74 12                	je     d83 <preempt+0x83>
      printf(1, "preempt write error");
     d71:	83 ec 08             	sub    $0x8,%esp
     d74:	68 6e 46 00 00       	push   $0x466e
     d79:	6a 01                	push   $0x1
     d7b:	e8 30 32 00 00       	call   3fb0 <printf>
     d80:	83 c4 10             	add    $0x10,%esp
    close(pfds[1]);
     d83:	83 ec 0c             	sub    $0xc,%esp
     d86:	ff 75 e4             	pushl  -0x1c(%ebp)
     d89:	e8 fc 30 00 00       	call   3e8a <close>
     d8e:	83 c4 10             	add    $0x10,%esp
     d91:	eb fe                	jmp    d91 <preempt+0x91>
    for(;;)
      ;
  }

  close(pfds[1]);
     d93:	83 ec 0c             	sub    $0xc,%esp
     d96:	ff 75 e4             	pushl  -0x1c(%ebp)
     d99:	e8 ec 30 00 00       	call   3e8a <close>
  if(read(pfds[0], buf, sizeof(buf)) != 1){
     d9e:	83 c4 0c             	add    $0xc,%esp
     da1:	68 00 20 00 00       	push   $0x2000
     da6:	68 40 8b 00 00       	push   $0x8b40
     dab:	ff 75 e0             	pushl  -0x20(%ebp)
     dae:	e8 c7 30 00 00       	call   3e7a <read>
     db3:	83 c4 10             	add    $0x10,%esp
     db6:	83 f8 01             	cmp    $0x1,%eax
     db9:	74 1a                	je     dd5 <preempt+0xd5>
    printf(1, "preempt read error");
     dbb:	83 ec 08             	sub    $0x8,%esp
     dbe:	68 82 46 00 00       	push   $0x4682
     dc3:	6a 01                	push   $0x1
     dc5:	e8 e6 31 00 00       	call   3fb0 <printf>
    return;
     dca:	83 c4 10             	add    $0x10,%esp
  printf(1, "wait... ");
  wait(0);
  wait(0);
  wait(0);
  printf(1, "preempt ok\n");
}
     dcd:	8d 65 f4             	lea    -0xc(%ebp),%esp
     dd0:	5b                   	pop    %ebx
     dd1:	5e                   	pop    %esi
     dd2:	5f                   	pop    %edi
     dd3:	5d                   	pop    %ebp
     dd4:	c3                   	ret    
  close(pfds[1]);
  if(read(pfds[0], buf, sizeof(buf)) != 1){
    printf(1, "preempt read error");
    return;
  }
  close(pfds[0]);
     dd5:	83 ec 0c             	sub    $0xc,%esp
     dd8:	ff 75 e0             	pushl  -0x20(%ebp)
     ddb:	e8 aa 30 00 00       	call   3e8a <close>
  printf(1, "kill... ");
     de0:	58                   	pop    %eax
     de1:	5a                   	pop    %edx
     de2:	68 95 46 00 00       	push   $0x4695
     de7:	6a 01                	push   $0x1
     de9:	e8 c2 31 00 00       	call   3fb0 <printf>
  kill(pid1);
     dee:	89 3c 24             	mov    %edi,(%esp)
     df1:	e8 9c 30 00 00       	call   3e92 <kill>
  kill(pid2);
     df6:	89 34 24             	mov    %esi,(%esp)
     df9:	e8 94 30 00 00       	call   3e92 <kill>
  kill(pid3);
     dfe:	89 1c 24             	mov    %ebx,(%esp)
     e01:	e8 8c 30 00 00       	call   3e92 <kill>
  printf(1, "wait... ");
     e06:	59                   	pop    %ecx
     e07:	5b                   	pop    %ebx
     e08:	68 9e 46 00 00       	push   $0x469e
     e0d:	6a 01                	push   $0x1
     e0f:	e8 9c 31 00 00       	call   3fb0 <printf>
  wait(0);
     e14:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     e1b:	e8 4a 30 00 00       	call   3e6a <wait>
  wait(0);
     e20:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     e27:	e8 3e 30 00 00       	call   3e6a <wait>
  wait(0);
     e2c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     e33:	e8 32 30 00 00       	call   3e6a <wait>
  printf(1, "preempt ok\n");
     e38:	5e                   	pop    %esi
     e39:	5f                   	pop    %edi
     e3a:	68 a7 46 00 00       	push   $0x46a7
     e3f:	6a 01                	push   $0x1
     e41:	e8 6a 31 00 00       	call   3fb0 <printf>
     e46:	83 c4 10             	add    $0x10,%esp
     e49:	eb 82                	jmp    dcd <preempt+0xcd>
     e4b:	90                   	nop
     e4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000e50 <exitwait>:
}

// try to find any races between exit and wait
void
exitwait(void)
{
     e50:	55                   	push   %ebp
     e51:	89 e5                	mov    %esp,%ebp
     e53:	56                   	push   %esi
     e54:	be 64 00 00 00       	mov    $0x64,%esi
     e59:	53                   	push   %ebx
     e5a:	eb 1c                	jmp    e78 <exitwait+0x28>
     e5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    pid = fork();
    if(pid < 0){
      printf(1, "fork failed\n");
      return;
    }
    if(pid){
     e60:	74 77                	je     ed9 <exitwait+0x89>
      if(wait(0) != pid){
     e62:	83 ec 0c             	sub    $0xc,%esp
     e65:	6a 00                	push   $0x0
     e67:	e8 fe 2f 00 00       	call   3e6a <wait>
     e6c:	83 c4 10             	add    $0x10,%esp
     e6f:	39 c3                	cmp    %eax,%ebx
     e71:	75 2d                	jne    ea0 <exitwait+0x50>
void
exitwait(void)
{
  int i, pid;

  for(i = 0; i < 100; i++){
     e73:	83 ee 01             	sub    $0x1,%esi
     e76:	74 48                	je     ec0 <exitwait+0x70>
    pid = fork();
     e78:	e8 dd 2f 00 00       	call   3e5a <fork>
    if(pid < 0){
     e7d:	85 c0                	test   %eax,%eax
exitwait(void)
{
  int i, pid;

  for(i = 0; i < 100; i++){
    pid = fork();
     e7f:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
     e81:	79 dd                	jns    e60 <exitwait+0x10>
      printf(1, "fork failed\n");
     e83:	83 ec 08             	sub    $0x8,%esp
     e86:	68 11 52 00 00       	push   $0x5211
     e8b:	6a 01                	push   $0x1
     e8d:	e8 1e 31 00 00       	call   3fb0 <printf>
      return;
     e92:	83 c4 10             	add    $0x10,%esp
    } else {
      exit(0);
    }
  }
  printf(1, "exitwait ok\n");
}
     e95:	8d 65 f8             	lea    -0x8(%ebp),%esp
     e98:	5b                   	pop    %ebx
     e99:	5e                   	pop    %esi
     e9a:	5d                   	pop    %ebp
     e9b:	c3                   	ret    
     e9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(1, "fork failed\n");
      return;
    }
    if(pid){
      if(wait(0) != pid){
        printf(1, "wait wrong pid\n");
     ea0:	83 ec 08             	sub    $0x8,%esp
     ea3:	68 b3 46 00 00       	push   $0x46b3
     ea8:	6a 01                	push   $0x1
     eaa:	e8 01 31 00 00       	call   3fb0 <printf>
        return;
     eaf:	83 c4 10             	add    $0x10,%esp
    } else {
      exit(0);
    }
  }
  printf(1, "exitwait ok\n");
}
     eb2:	8d 65 f8             	lea    -0x8(%ebp),%esp
     eb5:	5b                   	pop    %ebx
     eb6:	5e                   	pop    %esi
     eb7:	5d                   	pop    %ebp
     eb8:	c3                   	ret    
     eb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      }
    } else {
      exit(0);
    }
  }
  printf(1, "exitwait ok\n");
     ec0:	83 ec 08             	sub    $0x8,%esp
     ec3:	68 c3 46 00 00       	push   $0x46c3
     ec8:	6a 01                	push   $0x1
     eca:	e8 e1 30 00 00       	call   3fb0 <printf>
     ecf:	83 c4 10             	add    $0x10,%esp
}
     ed2:	8d 65 f8             	lea    -0x8(%ebp),%esp
     ed5:	5b                   	pop    %ebx
     ed6:	5e                   	pop    %esi
     ed7:	5d                   	pop    %ebp
     ed8:	c3                   	ret    
      if(wait(0) != pid){
        printf(1, "wait wrong pid\n");
        return;
      }
    } else {
      exit(0);
     ed9:	83 ec 0c             	sub    $0xc,%esp
     edc:	6a 00                	push   $0x0
     ede:	e8 7f 2f 00 00       	call   3e62 <exit>
     ee3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     ee9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000ef0 <mem>:
  printf(1, "exitwait ok\n");
}

void
mem(void)
{
     ef0:	55                   	push   %ebp
     ef1:	89 e5                	mov    %esp,%ebp
     ef3:	57                   	push   %edi
     ef4:	56                   	push   %esi
     ef5:	53                   	push   %ebx
     ef6:	83 ec 14             	sub    $0x14,%esp
  void *m1, *m2;
  int pid, ppid;

  printf(1, "mem test\n");
     ef9:	68 d0 46 00 00       	push   $0x46d0
     efe:	6a 01                	push   $0x1
     f00:	e8 ab 30 00 00       	call   3fb0 <printf>
  ppid = getpid();
     f05:	e8 d8 2f 00 00       	call   3ee2 <getpid>
     f0a:	89 c6                	mov    %eax,%esi
  if((pid = fork()) == 0){
     f0c:	e8 49 2f 00 00       	call   3e5a <fork>
     f11:	83 c4 10             	add    $0x10,%esp
     f14:	85 c0                	test   %eax,%eax
     f16:	75 78                	jne    f90 <mem+0xa0>
     f18:	31 db                	xor    %ebx,%ebx
     f1a:	eb 08                	jmp    f24 <mem+0x34>
     f1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    m1 = 0;
    while((m2 = malloc(10001)) != 0){
      *(char**)m2 = m1;
     f20:	89 18                	mov    %ebx,(%eax)
     f22:	89 c3                	mov    %eax,%ebx

  printf(1, "mem test\n");
  ppid = getpid();
  if((pid = fork()) == 0){
    m1 = 0;
    while((m2 = malloc(10001)) != 0){
     f24:	83 ec 0c             	sub    $0xc,%esp
     f27:	68 11 27 00 00       	push   $0x2711
     f2c:	e8 af 32 00 00       	call   41e0 <malloc>
     f31:	83 c4 10             	add    $0x10,%esp
     f34:	85 c0                	test   %eax,%eax
     f36:	75 e8                	jne    f20 <mem+0x30>
      *(char**)m2 = m1;
      m1 = m2;
    }
    while(m1){
     f38:	85 db                	test   %ebx,%ebx
     f3a:	74 18                	je     f54 <mem+0x64>
     f3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      m2 = *(char**)m1;
     f40:	8b 3b                	mov    (%ebx),%edi
      free(m1);
     f42:	83 ec 0c             	sub    $0xc,%esp
     f45:	53                   	push   %ebx
     f46:	89 fb                	mov    %edi,%ebx
     f48:	e8 03 32 00 00       	call   4150 <free>
    m1 = 0;
    while((m2 = malloc(10001)) != 0){
      *(char**)m2 = m1;
      m1 = m2;
    }
    while(m1){
     f4d:	83 c4 10             	add    $0x10,%esp
     f50:	85 db                	test   %ebx,%ebx
     f52:	75 ec                	jne    f40 <mem+0x50>
      m2 = *(char**)m1;
      free(m1);
      m1 = m2;
    }
    m1 = malloc(1024*20);
     f54:	83 ec 0c             	sub    $0xc,%esp
     f57:	68 00 50 00 00       	push   $0x5000
     f5c:	e8 7f 32 00 00       	call   41e0 <malloc>
    if(m1 == 0){
     f61:	83 c4 10             	add    $0x10,%esp
     f64:	85 c0                	test   %eax,%eax
     f66:	74 40                	je     fa8 <mem+0xb8>
      printf(1, "couldn't allocate mem?!!\n");
      kill(ppid);
      exit(0);
    }
    free(m1);
     f68:	83 ec 0c             	sub    $0xc,%esp
     f6b:	50                   	push   %eax
     f6c:	e8 df 31 00 00       	call   4150 <free>
    printf(1, "mem ok\n");
     f71:	58                   	pop    %eax
     f72:	5a                   	pop    %edx
     f73:	68 f4 46 00 00       	push   $0x46f4
     f78:	6a 01                	push   $0x1
     f7a:	e8 31 30 00 00       	call   3fb0 <printf>
    exit(0);
     f7f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     f86:	e8 d7 2e 00 00       	call   3e62 <exit>
     f8b:	90                   	nop
     f8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  } else {
    wait(0);
     f90:	83 ec 0c             	sub    $0xc,%esp
     f93:	6a 00                	push   $0x0
     f95:	e8 d0 2e 00 00       	call   3e6a <wait>
  }
}
     f9a:	83 c4 10             	add    $0x10,%esp
     f9d:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fa0:	5b                   	pop    %ebx
     fa1:	5e                   	pop    %esi
     fa2:	5f                   	pop    %edi
     fa3:	5d                   	pop    %ebp
     fa4:	c3                   	ret    
     fa5:	8d 76 00             	lea    0x0(%esi),%esi
      free(m1);
      m1 = m2;
    }
    m1 = malloc(1024*20);
    if(m1 == 0){
      printf(1, "couldn't allocate mem?!!\n");
     fa8:	83 ec 08             	sub    $0x8,%esp
     fab:	68 da 46 00 00       	push   $0x46da
     fb0:	6a 01                	push   $0x1
     fb2:	e8 f9 2f 00 00       	call   3fb0 <printf>
      kill(ppid);
     fb7:	89 34 24             	mov    %esi,(%esp)
     fba:	e8 d3 2e 00 00       	call   3e92 <kill>
      exit(0);
     fbf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     fc6:	e8 97 2e 00 00       	call   3e62 <exit>
     fcb:	90                   	nop
     fcc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000fd0 <sharedfd>:

// two processes write to the same file descriptor
// is the offset shared? does inode locking work?
void
sharedfd(void)
{
     fd0:	55                   	push   %ebp
     fd1:	89 e5                	mov    %esp,%ebp
     fd3:	57                   	push   %edi
     fd4:	56                   	push   %esi
     fd5:	53                   	push   %ebx
     fd6:	83 ec 34             	sub    $0x34,%esp
  int fd, pid, i, n, nc, np;
  char buf[10];

  printf(1, "sharedfd test\n");
     fd9:	68 fc 46 00 00       	push   $0x46fc
     fde:	6a 01                	push   $0x1
     fe0:	e8 cb 2f 00 00       	call   3fb0 <printf>

  unlink("sharedfd");
     fe5:	c7 04 24 0b 47 00 00 	movl   $0x470b,(%esp)
     fec:	e8 c1 2e 00 00       	call   3eb2 <unlink>
  fd = open("sharedfd", O_CREATE|O_RDWR);
     ff1:	5b                   	pop    %ebx
     ff2:	5e                   	pop    %esi
     ff3:	68 02 02 00 00       	push   $0x202
     ff8:	68 0b 47 00 00       	push   $0x470b
     ffd:	e8 a0 2e 00 00       	call   3ea2 <open>
  if(fd < 0){
    1002:	83 c4 10             	add    $0x10,%esp
    1005:	85 c0                	test   %eax,%eax
    1007:	0f 88 29 01 00 00    	js     1136 <sharedfd+0x166>
    100d:	89 c7                	mov    %eax,%edi
    printf(1, "fstests: cannot open sharedfd for writing");
    return;
  }
  pid = fork();
  memset(buf, pid==0?'c':'p', sizeof(buf));
    100f:	8d 75 de             	lea    -0x22(%ebp),%esi
    1012:	bb e8 03 00 00       	mov    $0x3e8,%ebx
  fd = open("sharedfd", O_CREATE|O_RDWR);
  if(fd < 0){
    printf(1, "fstests: cannot open sharedfd for writing");
    return;
  }
  pid = fork();
    1017:	e8 3e 2e 00 00       	call   3e5a <fork>
  memset(buf, pid==0?'c':'p', sizeof(buf));
    101c:	83 f8 01             	cmp    $0x1,%eax
  fd = open("sharedfd", O_CREATE|O_RDWR);
  if(fd < 0){
    printf(1, "fstests: cannot open sharedfd for writing");
    return;
  }
  pid = fork();
    101f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  memset(buf, pid==0?'c':'p', sizeof(buf));
    1022:	19 c0                	sbb    %eax,%eax
    1024:	83 ec 04             	sub    $0x4,%esp
    1027:	83 e0 f3             	and    $0xfffffff3,%eax
    102a:	6a 0a                	push   $0xa
    102c:	83 c0 70             	add    $0x70,%eax
    102f:	50                   	push   %eax
    1030:	56                   	push   %esi
    1031:	e8 9a 2c 00 00       	call   3cd0 <memset>
    1036:	83 c4 10             	add    $0x10,%esp
    1039:	eb 0a                	jmp    1045 <sharedfd+0x75>
    103b:	90                   	nop
    103c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(i = 0; i < 1000; i++){
    1040:	83 eb 01             	sub    $0x1,%ebx
    1043:	74 26                	je     106b <sharedfd+0x9b>
    if(write(fd, buf, sizeof(buf)) != sizeof(buf)){
    1045:	83 ec 04             	sub    $0x4,%esp
    1048:	6a 0a                	push   $0xa
    104a:	56                   	push   %esi
    104b:	57                   	push   %edi
    104c:	e8 31 2e 00 00       	call   3e82 <write>
    1051:	83 c4 10             	add    $0x10,%esp
    1054:	83 f8 0a             	cmp    $0xa,%eax
    1057:	74 e7                	je     1040 <sharedfd+0x70>
      printf(1, "fstests: write sharedfd failed\n");
    1059:	83 ec 08             	sub    $0x8,%esp
    105c:	68 fc 53 00 00       	push   $0x53fc
    1061:	6a 01                	push   $0x1
    1063:	e8 48 2f 00 00       	call   3fb0 <printf>
      break;
    1068:	83 c4 10             	add    $0x10,%esp
    }
  }
  if(pid == 0)
    106b:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
    106e:	85 c9                	test   %ecx,%ecx
    1070:	0f 84 f4 00 00 00    	je     116a <sharedfd+0x19a>
    exit(0);
  else
    wait(0);
    1076:	83 ec 0c             	sub    $0xc,%esp
    1079:	31 db                	xor    %ebx,%ebx
    107b:	6a 00                	push   $0x0
    107d:	e8 e8 2d 00 00       	call   3e6a <wait>
  close(fd);
    1082:	89 3c 24             	mov    %edi,(%esp)
    1085:	8d 7d e8             	lea    -0x18(%ebp),%edi
    1088:	e8 fd 2d 00 00       	call   3e8a <close>
  fd = open("sharedfd", 0);
    108d:	58                   	pop    %eax
    108e:	5a                   	pop    %edx
    108f:	6a 00                	push   $0x0
    1091:	68 0b 47 00 00       	push   $0x470b
    1096:	e8 07 2e 00 00       	call   3ea2 <open>
  if(fd < 0){
    109b:	83 c4 10             	add    $0x10,%esp
    109e:	31 d2                	xor    %edx,%edx
    10a0:	85 c0                	test   %eax,%eax
  if(pid == 0)
    exit(0);
  else
    wait(0);
  close(fd);
  fd = open("sharedfd", 0);
    10a2:	89 45 d0             	mov    %eax,-0x30(%ebp)
  if(fd < 0){
    10a5:	0f 88 a5 00 00 00    	js     1150 <sharedfd+0x180>
    10ab:	90                   	nop
    10ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "fstests: cannot open sharedfd for reading\n");
    return;
  }
  nc = np = 0;
  while((n = read(fd, buf, sizeof(buf))) > 0){
    10b0:	83 ec 04             	sub    $0x4,%esp
    10b3:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    10b6:	6a 0a                	push   $0xa
    10b8:	56                   	push   %esi
    10b9:	ff 75 d0             	pushl  -0x30(%ebp)
    10bc:	e8 b9 2d 00 00       	call   3e7a <read>
    10c1:	83 c4 10             	add    $0x10,%esp
    10c4:	85 c0                	test   %eax,%eax
    10c6:	7e 27                	jle    10ef <sharedfd+0x11f>
    10c8:	89 f0                	mov    %esi,%eax
    10ca:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    10cd:	eb 13                	jmp    10e2 <sharedfd+0x112>
    10cf:	90                   	nop
    for(i = 0; i < sizeof(buf); i++){
      if(buf[i] == 'c')
        nc++;
      if(buf[i] == 'p')
        np++;
    10d0:	80 f9 70             	cmp    $0x70,%cl
    10d3:	0f 94 c1             	sete   %cl
    10d6:	0f b6 c9             	movzbl %cl,%ecx
    10d9:	01 cb                	add    %ecx,%ebx
    10db:	83 c0 01             	add    $0x1,%eax
    printf(1, "fstests: cannot open sharedfd for reading\n");
    return;
  }
  nc = np = 0;
  while((n = read(fd, buf, sizeof(buf))) > 0){
    for(i = 0; i < sizeof(buf); i++){
    10de:	39 c7                	cmp    %eax,%edi
    10e0:	74 ce                	je     10b0 <sharedfd+0xe0>
      if(buf[i] == 'c')
    10e2:	0f b6 08             	movzbl (%eax),%ecx
    10e5:	80 f9 63             	cmp    $0x63,%cl
    10e8:	75 e6                	jne    10d0 <sharedfd+0x100>
        nc++;
    10ea:	83 c2 01             	add    $0x1,%edx
    10ed:	eb ec                	jmp    10db <sharedfd+0x10b>
      if(buf[i] == 'p')
        np++;
    }
  }
  close(fd);
    10ef:	83 ec 0c             	sub    $0xc,%esp
    10f2:	ff 75 d0             	pushl  -0x30(%ebp)
    10f5:	e8 90 2d 00 00       	call   3e8a <close>
  unlink("sharedfd");
    10fa:	c7 04 24 0b 47 00 00 	movl   $0x470b,(%esp)
    1101:	e8 ac 2d 00 00       	call   3eb2 <unlink>
  if(nc == 10000 && np == 10000){
    1106:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    1109:	83 c4 10             	add    $0x10,%esp
    110c:	81 fa 10 27 00 00    	cmp    $0x2710,%edx
    1112:	75 60                	jne    1174 <sharedfd+0x1a4>
    1114:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
    111a:	75 58                	jne    1174 <sharedfd+0x1a4>
    printf(1, "sharedfd ok\n");
    111c:	83 ec 08             	sub    $0x8,%esp
    111f:	68 14 47 00 00       	push   $0x4714
    1124:	6a 01                	push   $0x1
    1126:	e8 85 2e 00 00       	call   3fb0 <printf>
    112b:	83 c4 10             	add    $0x10,%esp
  } else {
    printf(1, "sharedfd oops %d %d\n", nc, np);
    exit(0);
  }
}
    112e:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1131:	5b                   	pop    %ebx
    1132:	5e                   	pop    %esi
    1133:	5f                   	pop    %edi
    1134:	5d                   	pop    %ebp
    1135:	c3                   	ret    
  printf(1, "sharedfd test\n");

  unlink("sharedfd");
  fd = open("sharedfd", O_CREATE|O_RDWR);
  if(fd < 0){
    printf(1, "fstests: cannot open sharedfd for writing");
    1136:	83 ec 08             	sub    $0x8,%esp
    1139:	68 d0 53 00 00       	push   $0x53d0
    113e:	6a 01                	push   $0x1
    1140:	e8 6b 2e 00 00       	call   3fb0 <printf>
    return;
    1145:	83 c4 10             	add    $0x10,%esp
    printf(1, "sharedfd ok\n");
  } else {
    printf(1, "sharedfd oops %d %d\n", nc, np);
    exit(0);
  }
}
    1148:	8d 65 f4             	lea    -0xc(%ebp),%esp
    114b:	5b                   	pop    %ebx
    114c:	5e                   	pop    %esi
    114d:	5f                   	pop    %edi
    114e:	5d                   	pop    %ebp
    114f:	c3                   	ret    
  else
    wait(0);
  close(fd);
  fd = open("sharedfd", 0);
  if(fd < 0){
    printf(1, "fstests: cannot open sharedfd for reading\n");
    1150:	83 ec 08             	sub    $0x8,%esp
    1153:	68 1c 54 00 00       	push   $0x541c
    1158:	6a 01                	push   $0x1
    115a:	e8 51 2e 00 00       	call   3fb0 <printf>
    return;
    115f:	83 c4 10             	add    $0x10,%esp
    printf(1, "sharedfd ok\n");
  } else {
    printf(1, "sharedfd oops %d %d\n", nc, np);
    exit(0);
  }
}
    1162:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1165:	5b                   	pop    %ebx
    1166:	5e                   	pop    %esi
    1167:	5f                   	pop    %edi
    1168:	5d                   	pop    %ebp
    1169:	c3                   	ret    
      printf(1, "fstests: write sharedfd failed\n");
      break;
    }
  }
  if(pid == 0)
    exit(0);
    116a:	83 ec 0c             	sub    $0xc,%esp
    116d:	6a 00                	push   $0x0
    116f:	e8 ee 2c 00 00       	call   3e62 <exit>
  close(fd);
  unlink("sharedfd");
  if(nc == 10000 && np == 10000){
    printf(1, "sharedfd ok\n");
  } else {
    printf(1, "sharedfd oops %d %d\n", nc, np);
    1174:	53                   	push   %ebx
    1175:	52                   	push   %edx
    1176:	68 21 47 00 00       	push   $0x4721
    117b:	6a 01                	push   $0x1
    117d:	e8 2e 2e 00 00       	call   3fb0 <printf>
    exit(0);
    1182:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1189:	e8 d4 2c 00 00       	call   3e62 <exit>
    118e:	66 90                	xchg   %ax,%ax

00001190 <fourfiles>:

// four processes write different files at the same
// time, to test block allocation.
void
fourfiles(void)
{
    1190:	55                   	push   %ebp
    1191:	89 e5                	mov    %esp,%ebp
    1193:	57                   	push   %edi
    1194:	56                   	push   %esi
    1195:	53                   	push   %ebx
  int fd, pid, i, j, n, total, pi;
  char *names[] = { "f0", "f1", "f2", "f3" };
  char *fname;

  printf(1, "fourfiles test\n");
    1196:	be 36 47 00 00       	mov    $0x4736,%esi

  for(pi = 0; pi < 4; pi++){
    119b:	31 db                	xor    %ebx,%ebx

// four processes write different files at the same
// time, to test block allocation.
void
fourfiles(void)
{
    119d:	83 ec 34             	sub    $0x34,%esp
  int fd, pid, i, j, n, total, pi;
  char *names[] = { "f0", "f1", "f2", "f3" };
    11a0:	c7 45 d8 36 47 00 00 	movl   $0x4736,-0x28(%ebp)
    11a7:	c7 45 dc 7f 48 00 00 	movl   $0x487f,-0x24(%ebp)
  char *fname;

  printf(1, "fourfiles test\n");
    11ae:	68 3c 47 00 00       	push   $0x473c
    11b3:	6a 01                	push   $0x1
// time, to test block allocation.
void
fourfiles(void)
{
  int fd, pid, i, j, n, total, pi;
  char *names[] = { "f0", "f1", "f2", "f3" };
    11b5:	c7 45 e0 83 48 00 00 	movl   $0x4883,-0x20(%ebp)
    11bc:	c7 45 e4 39 47 00 00 	movl   $0x4739,-0x1c(%ebp)
  char *fname;

  printf(1, "fourfiles test\n");
    11c3:	e8 e8 2d 00 00       	call   3fb0 <printf>
    11c8:	83 c4 10             	add    $0x10,%esp

  for(pi = 0; pi < 4; pi++){
    fname = names[pi];
    unlink(fname);
    11cb:	83 ec 0c             	sub    $0xc,%esp
    11ce:	56                   	push   %esi
    11cf:	e8 de 2c 00 00       	call   3eb2 <unlink>

    pid = fork();
    11d4:	e8 81 2c 00 00       	call   3e5a <fork>
    if(pid < 0){
    11d9:	83 c4 10             	add    $0x10,%esp
    11dc:	85 c0                	test   %eax,%eax
    11de:	0f 88 c4 01 00 00    	js     13a8 <fourfiles+0x218>
      printf(1, "fork failed\n");
      exit(0);
    }

    if(pid == 0){
    11e4:	0f 84 0a 01 00 00    	je     12f4 <fourfiles+0x164>
  char *names[] = { "f0", "f1", "f2", "f3" };
  char *fname;

  printf(1, "fourfiles test\n");

  for(pi = 0; pi < 4; pi++){
    11ea:	83 c3 01             	add    $0x1,%ebx
    11ed:	83 fb 04             	cmp    $0x4,%ebx
    11f0:	74 06                	je     11f8 <fourfiles+0x68>
    11f2:	8b 74 9d d8          	mov    -0x28(%ebp,%ebx,4),%esi
    11f6:	eb d3                	jmp    11cb <fourfiles+0x3b>
      exit(0);
    }
  }

  for(pi = 0; pi < 4; pi++){
    wait(0);
    11f8:	83 ec 0c             	sub    $0xc,%esp
    11fb:	bf 30 00 00 00       	mov    $0x30,%edi
    1200:	6a 00                	push   $0x0
    1202:	e8 63 2c 00 00       	call   3e6a <wait>
    1207:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    120e:	e8 57 2c 00 00       	call   3e6a <wait>
    1213:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    121a:	e8 4b 2c 00 00       	call   3e6a <wait>
    121f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1226:	e8 3f 2c 00 00       	call   3e6a <wait>
    122b:	83 c4 10             	add    $0x10,%esp
    122e:	c7 45 d4 36 47 00 00 	movl   $0x4736,-0x2c(%ebp)
  }

  for(i = 0; i < 2; i++){
    fname = names[i];
    fd = open(fname, 0);
    1235:	83 ec 08             	sub    $0x8,%esp
    total = 0;
    1238:	31 db                	xor    %ebx,%ebx
    wait(0);
  }

  for(i = 0; i < 2; i++){
    fname = names[i];
    fd = open(fname, 0);
    123a:	6a 00                	push   $0x0
    123c:	ff 75 d4             	pushl  -0x2c(%ebp)
    123f:	e8 5e 2c 00 00       	call   3ea2 <open>
    total = 0;
    while((n = read(fd, buf, sizeof(buf))) > 0){
    1244:	83 c4 10             	add    $0x10,%esp
    wait(0);
  }

  for(i = 0; i < 2; i++){
    fname = names[i];
    fd = open(fname, 0);
    1247:	89 c6                	mov    %eax,%esi
    1249:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    total = 0;
    while((n = read(fd, buf, sizeof(buf))) > 0){
    1250:	83 ec 04             	sub    $0x4,%esp
    1253:	68 00 20 00 00       	push   $0x2000
    1258:	68 40 8b 00 00       	push   $0x8b40
    125d:	56                   	push   %esi
    125e:	e8 17 2c 00 00       	call   3e7a <read>
    1263:	83 c4 10             	add    $0x10,%esp
    1266:	85 c0                	test   %eax,%eax
    1268:	7e 1c                	jle    1286 <fourfiles+0xf6>
    126a:	31 d2                	xor    %edx,%edx
    126c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      for(j = 0; j < n; j++){
        if(buf[j] != '0'+i){
    1270:	0f be 8a 40 8b 00 00 	movsbl 0x8b40(%edx),%ecx
    1277:	39 f9                	cmp    %edi,%ecx
    1279:	75 5e                	jne    12d9 <fourfiles+0x149>
  for(i = 0; i < 2; i++){
    fname = names[i];
    fd = open(fname, 0);
    total = 0;
    while((n = read(fd, buf, sizeof(buf))) > 0){
      for(j = 0; j < n; j++){
    127b:	83 c2 01             	add    $0x1,%edx
    127e:	39 d0                	cmp    %edx,%eax
    1280:	75 ee                	jne    1270 <fourfiles+0xe0>
        if(buf[j] != '0'+i){
          printf(1, "wrong char\n");
          exit(0);
        }
      }
      total += n;
    1282:	01 c3                	add    %eax,%ebx
    1284:	eb ca                	jmp    1250 <fourfiles+0xc0>
    }
    close(fd);
    1286:	83 ec 0c             	sub    $0xc,%esp
    1289:	56                   	push   %esi
    128a:	e8 fb 2b 00 00       	call   3e8a <close>
    if(total != 12*500){
    128f:	83 c4 10             	add    $0x10,%esp
    1292:	81 fb 70 17 00 00    	cmp    $0x1770,%ebx
    1298:	0f 85 ee 00 00 00    	jne    138c <fourfiles+0x1fc>
      printf(1, "wrong length %d\n", total);
      exit(0);
    }
    unlink(fname);
    129e:	83 ec 0c             	sub    $0xc,%esp
    12a1:	ff 75 d4             	pushl  -0x2c(%ebp)
    12a4:	83 c7 01             	add    $0x1,%edi
    12a7:	e8 06 2c 00 00       	call   3eb2 <unlink>

  for(pi = 0; pi < 4; pi++){
    wait(0);
  }

  for(i = 0; i < 2; i++){
    12ac:	83 c4 10             	add    $0x10,%esp
    12af:	83 ff 32             	cmp    $0x32,%edi
    12b2:	75 1a                	jne    12ce <fourfiles+0x13e>
      exit(0);
    }
    unlink(fname);
  }

  printf(1, "fourfiles ok\n");
    12b4:	83 ec 08             	sub    $0x8,%esp
    12b7:	68 7a 47 00 00       	push   $0x477a
    12bc:	6a 01                	push   $0x1
    12be:	e8 ed 2c 00 00       	call   3fb0 <printf>
}
    12c3:	83 c4 10             	add    $0x10,%esp
    12c6:	8d 65 f4             	lea    -0xc(%ebp),%esp
    12c9:	5b                   	pop    %ebx
    12ca:	5e                   	pop    %esi
    12cb:	5f                   	pop    %edi
    12cc:	5d                   	pop    %ebp
    12cd:	c3                   	ret    
    12ce:	8b 45 dc             	mov    -0x24(%ebp),%eax
    12d1:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    12d4:	e9 5c ff ff ff       	jmp    1235 <fourfiles+0xa5>
    fd = open(fname, 0);
    total = 0;
    while((n = read(fd, buf, sizeof(buf))) > 0){
      for(j = 0; j < n; j++){
        if(buf[j] != '0'+i){
          printf(1, "wrong char\n");
    12d9:	83 ec 08             	sub    $0x8,%esp
    12dc:	68 5d 47 00 00       	push   $0x475d
    12e1:	6a 01                	push   $0x1
    12e3:	e8 c8 2c 00 00       	call   3fb0 <printf>
          exit(0);
    12e8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    12ef:	e8 6e 2b 00 00       	call   3e62 <exit>
      printf(1, "fork failed\n");
      exit(0);
    }

    if(pid == 0){
      fd = open(fname, O_CREATE | O_RDWR);
    12f4:	83 ec 08             	sub    $0x8,%esp
    12f7:	68 02 02 00 00       	push   $0x202
    12fc:	56                   	push   %esi
    12fd:	e8 a0 2b 00 00       	call   3ea2 <open>
      if(fd < 0){
    1302:	83 c4 10             	add    $0x10,%esp
    1305:	85 c0                	test   %eax,%eax
      printf(1, "fork failed\n");
      exit(0);
    }

    if(pid == 0){
      fd = open(fname, O_CREATE | O_RDWR);
    1307:	89 c6                	mov    %eax,%esi
      if(fd < 0){
    1309:	78 66                	js     1371 <fourfiles+0x1e1>
        printf(1, "create failed\n");
        exit(0);
      }

      memset(buf, '0'+pi, 512);
    130b:	83 ec 04             	sub    $0x4,%esp
    130e:	83 c3 30             	add    $0x30,%ebx
    1311:	68 00 02 00 00       	push   $0x200
    1316:	53                   	push   %ebx
    1317:	bb 0c 00 00 00       	mov    $0xc,%ebx
    131c:	68 40 8b 00 00       	push   $0x8b40
    1321:	e8 aa 29 00 00       	call   3cd0 <memset>
    1326:	83 c4 10             	add    $0x10,%esp
      for(i = 0; i < 12; i++){
        if((n = write(fd, buf, 500)) != 500){
    1329:	83 ec 04             	sub    $0x4,%esp
    132c:	68 f4 01 00 00       	push   $0x1f4
    1331:	68 40 8b 00 00       	push   $0x8b40
    1336:	56                   	push   %esi
    1337:	e8 46 2b 00 00       	call   3e82 <write>
    133c:	83 c4 10             	add    $0x10,%esp
    133f:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    1344:	75 0f                	jne    1355 <fourfiles+0x1c5>
        printf(1, "create failed\n");
        exit(0);
      }

      memset(buf, '0'+pi, 512);
      for(i = 0; i < 12; i++){
    1346:	83 eb 01             	sub    $0x1,%ebx
    1349:	75 de                	jne    1329 <fourfiles+0x199>
        if((n = write(fd, buf, 500)) != 500){
          printf(1, "write failed %d\n", n);
          exit(0);
        }
      }
      exit(0);
    134b:	83 ec 0c             	sub    $0xc,%esp
    134e:	6a 00                	push   $0x0
    1350:	e8 0d 2b 00 00       	call   3e62 <exit>
      }

      memset(buf, '0'+pi, 512);
      for(i = 0; i < 12; i++){
        if((n = write(fd, buf, 500)) != 500){
          printf(1, "write failed %d\n", n);
    1355:	83 ec 04             	sub    $0x4,%esp
    1358:	50                   	push   %eax
    1359:	68 4c 47 00 00       	push   $0x474c
    135e:	6a 01                	push   $0x1
    1360:	e8 4b 2c 00 00       	call   3fb0 <printf>
          exit(0);
    1365:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    136c:	e8 f1 2a 00 00       	call   3e62 <exit>
    }

    if(pid == 0){
      fd = open(fname, O_CREATE | O_RDWR);
      if(fd < 0){
        printf(1, "create failed\n");
    1371:	83 ec 08             	sub    $0x8,%esp
    1374:	68 d7 49 00 00       	push   $0x49d7
    1379:	6a 01                	push   $0x1
    137b:	e8 30 2c 00 00       	call   3fb0 <printf>
        exit(0);
    1380:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1387:	e8 d6 2a 00 00       	call   3e62 <exit>
      }
      total += n;
    }
    close(fd);
    if(total != 12*500){
      printf(1, "wrong length %d\n", total);
    138c:	83 ec 04             	sub    $0x4,%esp
    138f:	53                   	push   %ebx
    1390:	68 69 47 00 00       	push   $0x4769
    1395:	6a 01                	push   $0x1
    1397:	e8 14 2c 00 00       	call   3fb0 <printf>
      exit(0);
    139c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    13a3:	e8 ba 2a 00 00       	call   3e62 <exit>
    fname = names[pi];
    unlink(fname);

    pid = fork();
    if(pid < 0){
      printf(1, "fork failed\n");
    13a8:	83 ec 08             	sub    $0x8,%esp
    13ab:	68 11 52 00 00       	push   $0x5211
    13b0:	6a 01                	push   $0x1
    13b2:	e8 f9 2b 00 00       	call   3fb0 <printf>
      exit(0);
    13b7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    13be:	e8 9f 2a 00 00       	call   3e62 <exit>
    13c3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    13c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000013d0 <createdelete>:
}

// four processes create and delete different files in same directory
void
createdelete(void)
{
    13d0:	55                   	push   %ebp
    13d1:	89 e5                	mov    %esp,%ebp
    13d3:	57                   	push   %edi
    13d4:	56                   	push   %esi
    13d5:	53                   	push   %ebx
  int pid, i, fd, pi;
  char name[32];

  printf(1, "createdelete test\n");

  for(pi = 0; pi < 4; pi++){
    13d6:	31 db                	xor    %ebx,%ebx
}

// four processes create and delete different files in same directory
void
createdelete(void)
{
    13d8:	83 ec 44             	sub    $0x44,%esp
  enum { N = 20 };
  int pid, i, fd, pi;
  char name[32];

  printf(1, "createdelete test\n");
    13db:	68 88 47 00 00       	push   $0x4788
    13e0:	6a 01                	push   $0x1
    13e2:	e8 c9 2b 00 00       	call   3fb0 <printf>
    13e7:	83 c4 10             	add    $0x10,%esp

  for(pi = 0; pi < 4; pi++){
    pid = fork();
    13ea:	e8 6b 2a 00 00       	call   3e5a <fork>
    if(pid < 0){
    13ef:	85 c0                	test   %eax,%eax
    13f1:	0f 88 ea 01 00 00    	js     15e1 <createdelete+0x211>
      printf(1, "fork failed\n");
      exit(0);
    }

    if(pid == 0){
    13f7:	0f 84 0e 01 00 00    	je     150b <createdelete+0x13b>
  int pid, i, fd, pi;
  char name[32];

  printf(1, "createdelete test\n");

  for(pi = 0; pi < 4; pi++){
    13fd:	83 c3 01             	add    $0x1,%ebx
    1400:	83 fb 04             	cmp    $0x4,%ebx
    1403:	75 e5                	jne    13ea <createdelete+0x1a>
      exit(0);
    }
  }

  for(pi = 0; pi < 4; pi++){
    wait(0);
    1405:	83 ec 0c             	sub    $0xc,%esp
    1408:	8d 7d c8             	lea    -0x38(%ebp),%edi
  }

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    140b:	31 f6                	xor    %esi,%esi
      exit(0);
    }
  }

  for(pi = 0; pi < 4; pi++){
    wait(0);
    140d:	6a 00                	push   $0x0
    140f:	e8 56 2a 00 00       	call   3e6a <wait>
    1414:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    141b:	e8 4a 2a 00 00       	call   3e6a <wait>
    1420:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1427:	e8 3e 2a 00 00       	call   3e6a <wait>
    142c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1433:	e8 32 2a 00 00       	call   3e6a <wait>
  }

  name[0] = name[1] = name[2] = 0;
    1438:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    143c:	83 c4 10             	add    $0x10,%esp
    143f:	90                   	nop
    1440:	8d 46 30             	lea    0x30(%esi),%eax
    1443:	83 fe 09             	cmp    $0x9,%esi
      exit(0);
    }

    if(pid == 0){
      name[0] = 'p' + pi;
      name[2] = '\0';
    1446:	bb 70 00 00 00       	mov    $0x70,%ebx
    144b:	0f 9f c2             	setg   %dl
    144e:	85 f6                	test   %esi,%esi
    1450:	88 45 c7             	mov    %al,-0x39(%ebp)
    1453:	0f 94 c0             	sete   %al
    1456:	09 c2                	or     %eax,%edx
      name[1] = '0' + i;
      fd = open(name, 0);
      if((i == 0 || i >= N/2) && fd < 0){
        printf(1, "oops createdelete %s didn't exist\n", name);
        exit(0);
      } else if((i >= 1 && i < N/2) && fd >= 0){
    1458:	8d 46 ff             	lea    -0x1(%esi),%eax
    145b:	88 55 c6             	mov    %dl,-0x3a(%ebp)
    145e:	89 45 c0             	mov    %eax,-0x40(%ebp)

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + pi;
      name[1] = '0' + i;
    1461:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
      fd = open(name, 0);
    1465:	83 ec 08             	sub    $0x8,%esp
  }

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + pi;
    1468:	88 5d c8             	mov    %bl,-0x38(%ebp)
      name[1] = '0' + i;
      fd = open(name, 0);
    146b:	6a 00                	push   $0x0
    146d:	57                   	push   %edi

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + pi;
      name[1] = '0' + i;
    146e:	88 45 c9             	mov    %al,-0x37(%ebp)
      fd = open(name, 0);
    1471:	e8 2c 2a 00 00       	call   3ea2 <open>
      if((i == 0 || i >= N/2) && fd < 0){
    1476:	89 c1                	mov    %eax,%ecx
    1478:	83 c4 10             	add    $0x10,%esp
    147b:	c1 e9 1f             	shr    $0x1f,%ecx
    147e:	84 c9                	test   %cl,%cl
    1480:	74 0a                	je     148c <createdelete+0xbc>
    1482:	80 7d c6 00          	cmpb   $0x0,-0x3a(%ebp)
    1486:	0f 85 1e 01 00 00    	jne    15aa <createdelete+0x1da>
        printf(1, "oops createdelete %s didn't exist\n", name);
        exit(0);
      } else if((i >= 1 && i < N/2) && fd >= 0){
    148c:	83 7d c0 08          	cmpl   $0x8,-0x40(%ebp)
    1490:	0f 86 66 01 00 00    	jbe    15fc <createdelete+0x22c>
        printf(1, "oops createdelete %s did exist\n", name);
        exit(0);
      }
      if(fd >= 0)
    1496:	85 c0                	test   %eax,%eax
    1498:	78 0c                	js     14a6 <createdelete+0xd6>
        close(fd);
    149a:	83 ec 0c             	sub    $0xc,%esp
    149d:	50                   	push   %eax
    149e:	e8 e7 29 00 00       	call   3e8a <close>
    14a3:	83 c4 10             	add    $0x10,%esp
    14a6:	83 c3 01             	add    $0x1,%ebx
    wait(0);
  }

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
    14a9:	80 fb 74             	cmp    $0x74,%bl
    14ac:	75 b3                	jne    1461 <createdelete+0x91>
  for(pi = 0; pi < 4; pi++){
    wait(0);
  }

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    14ae:	83 c6 01             	add    $0x1,%esi
    14b1:	83 fe 14             	cmp    $0x14,%esi
    14b4:	75 8a                	jne    1440 <createdelete+0x70>
    14b6:	be 70 00 00 00       	mov    $0x70,%esi
    14bb:	90                   	nop
    14bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    14c0:	8d 46 c0             	lea    -0x40(%esi),%eax
    14c3:	bb 04 00 00 00       	mov    $0x4,%ebx
    14c8:	88 45 c7             	mov    %al,-0x39(%ebp)
    }
  }

  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + i;
    14cb:	89 f0                	mov    %esi,%eax
      name[1] = '0' + i;
      unlink(name);
    14cd:	83 ec 0c             	sub    $0xc,%esp
    }
  }

  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + i;
    14d0:	88 45 c8             	mov    %al,-0x38(%ebp)
      name[1] = '0' + i;
    14d3:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
      unlink(name);
    14d7:	57                   	push   %edi
  }

  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + i;
      name[1] = '0' + i;
    14d8:	88 45 c9             	mov    %al,-0x37(%ebp)
      unlink(name);
    14db:	e8 d2 29 00 00       	call   3eb2 <unlink>
        close(fd);
    }
  }

  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
    14e0:	83 c4 10             	add    $0x10,%esp
    14e3:	83 eb 01             	sub    $0x1,%ebx
    14e6:	75 e3                	jne    14cb <createdelete+0xfb>
    14e8:	83 c6 01             	add    $0x1,%esi
      if(fd >= 0)
        close(fd);
    }
  }

  for(i = 0; i < N; i++){
    14eb:	89 f0                	mov    %esi,%eax
    14ed:	3c 84                	cmp    $0x84,%al
    14ef:	75 cf                	jne    14c0 <createdelete+0xf0>
      name[1] = '0' + i;
      unlink(name);
    }
  }

  printf(1, "createdelete ok\n");
    14f1:	83 ec 08             	sub    $0x8,%esp
    14f4:	68 9b 47 00 00       	push   $0x479b
    14f9:	6a 01                	push   $0x1
    14fb:	e8 b0 2a 00 00       	call   3fb0 <printf>
}
    1500:	83 c4 10             	add    $0x10,%esp
    1503:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1506:	5b                   	pop    %ebx
    1507:	5e                   	pop    %esi
    1508:	5f                   	pop    %edi
    1509:	5d                   	pop    %ebp
    150a:	c3                   	ret    
      printf(1, "fork failed\n");
      exit(0);
    }

    if(pid == 0){
      name[0] = 'p' + pi;
    150b:	83 c3 70             	add    $0x70,%ebx
      name[2] = '\0';
    150e:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    1512:	be 01 00 00 00       	mov    $0x1,%esi
      printf(1, "fork failed\n");
      exit(0);
    }

    if(pid == 0){
      name[0] = 'p' + pi;
    1517:	88 5d c8             	mov    %bl,-0x38(%ebp)
    151a:	8d 7d c8             	lea    -0x38(%ebp),%edi
      name[2] = '\0';
    151d:	31 db                	xor    %ebx,%ebx
    151f:	eb 12                	jmp    1533 <createdelete+0x163>
    1521:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      for(i = 0; i < N; i++){
    1528:	83 fe 14             	cmp    $0x14,%esi
    152b:	74 73                	je     15a0 <createdelete+0x1d0>
    152d:	83 c3 01             	add    $0x1,%ebx
    1530:	83 c6 01             	add    $0x1,%esi
        name[1] = '0' + i;
        fd = open(name, O_CREATE | O_RDWR);
    1533:	83 ec 08             	sub    $0x8,%esp

    if(pid == 0){
      name[0] = 'p' + pi;
      name[2] = '\0';
      for(i = 0; i < N; i++){
        name[1] = '0' + i;
    1536:	8d 43 30             	lea    0x30(%ebx),%eax
        fd = open(name, O_CREATE | O_RDWR);
    1539:	68 02 02 00 00       	push   $0x202
    153e:	57                   	push   %edi

    if(pid == 0){
      name[0] = 'p' + pi;
      name[2] = '\0';
      for(i = 0; i < N; i++){
        name[1] = '0' + i;
    153f:	88 45 c9             	mov    %al,-0x37(%ebp)
        fd = open(name, O_CREATE | O_RDWR);
    1542:	e8 5b 29 00 00       	call   3ea2 <open>
        if(fd < 0){
    1547:	83 c4 10             	add    $0x10,%esp
    154a:	85 c0                	test   %eax,%eax
    154c:	78 78                	js     15c6 <createdelete+0x1f6>
          printf(1, "create failed\n");
          exit(0);
        }
        close(fd);
    154e:	83 ec 0c             	sub    $0xc,%esp
    1551:	50                   	push   %eax
    1552:	e8 33 29 00 00       	call   3e8a <close>
        if(i > 0 && (i % 2 ) == 0){
    1557:	83 c4 10             	add    $0x10,%esp
    155a:	85 db                	test   %ebx,%ebx
    155c:	74 cf                	je     152d <createdelete+0x15d>
    155e:	f6 c3 01             	test   $0x1,%bl
    1561:	75 c5                	jne    1528 <createdelete+0x158>
          name[1] = '0' + (i / 2);
          if(unlink(name) < 0){
    1563:	83 ec 0c             	sub    $0xc,%esp
          printf(1, "create failed\n");
          exit(0);
        }
        close(fd);
        if(i > 0 && (i % 2 ) == 0){
          name[1] = '0' + (i / 2);
    1566:	89 d8                	mov    %ebx,%eax
    1568:	d1 f8                	sar    %eax
          if(unlink(name) < 0){
    156a:	57                   	push   %edi
          printf(1, "create failed\n");
          exit(0);
        }
        close(fd);
        if(i > 0 && (i % 2 ) == 0){
          name[1] = '0' + (i / 2);
    156b:	83 c0 30             	add    $0x30,%eax
    156e:	88 45 c9             	mov    %al,-0x37(%ebp)
          if(unlink(name) < 0){
    1571:	e8 3c 29 00 00       	call   3eb2 <unlink>
    1576:	83 c4 10             	add    $0x10,%esp
    1579:	85 c0                	test   %eax,%eax
    157b:	79 ab                	jns    1528 <createdelete+0x158>
            printf(1, "unlink failed\n");
    157d:	83 ec 08             	sub    $0x8,%esp
    1580:	68 89 43 00 00       	push   $0x4389
    1585:	6a 01                	push   $0x1
    1587:	e8 24 2a 00 00       	call   3fb0 <printf>
            exit(0);
    158c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1593:	e8 ca 28 00 00       	call   3e62 <exit>
    1598:	90                   	nop
    1599:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
          }
        }
      }
      exit(0);
    15a0:	83 ec 0c             	sub    $0xc,%esp
    15a3:	6a 00                	push   $0x0
    15a5:	e8 b8 28 00 00       	call   3e62 <exit>
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + pi;
      name[1] = '0' + i;
      fd = open(name, 0);
      if((i == 0 || i >= N/2) && fd < 0){
        printf(1, "oops createdelete %s didn't exist\n", name);
    15aa:	83 ec 04             	sub    $0x4,%esp
    15ad:	57                   	push   %edi
    15ae:	68 48 54 00 00       	push   $0x5448
    15b3:	6a 01                	push   $0x1
    15b5:	e8 f6 29 00 00       	call   3fb0 <printf>
        exit(0);
    15ba:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    15c1:	e8 9c 28 00 00       	call   3e62 <exit>
      name[2] = '\0';
      for(i = 0; i < N; i++){
        name[1] = '0' + i;
        fd = open(name, O_CREATE | O_RDWR);
        if(fd < 0){
          printf(1, "create failed\n");
    15c6:	83 ec 08             	sub    $0x8,%esp
    15c9:	68 d7 49 00 00       	push   $0x49d7
    15ce:	6a 01                	push   $0x1
    15d0:	e8 db 29 00 00       	call   3fb0 <printf>
          exit(0);
    15d5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    15dc:	e8 81 28 00 00       	call   3e62 <exit>
  printf(1, "createdelete test\n");

  for(pi = 0; pi < 4; pi++){
    pid = fork();
    if(pid < 0){
      printf(1, "fork failed\n");
    15e1:	83 ec 08             	sub    $0x8,%esp
    15e4:	68 11 52 00 00       	push   $0x5211
    15e9:	6a 01                	push   $0x1
    15eb:	e8 c0 29 00 00       	call   3fb0 <printf>
      exit(0);
    15f0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    15f7:	e8 66 28 00 00       	call   3e62 <exit>
      name[1] = '0' + i;
      fd = open(name, 0);
      if((i == 0 || i >= N/2) && fd < 0){
        printf(1, "oops createdelete %s didn't exist\n", name);
        exit(0);
      } else if((i >= 1 && i < N/2) && fd >= 0){
    15fc:	85 c0                	test   %eax,%eax
    15fe:	0f 88 a2 fe ff ff    	js     14a6 <createdelete+0xd6>
        printf(1, "oops createdelete %s did exist\n", name);
    1604:	83 ec 04             	sub    $0x4,%esp
    1607:	57                   	push   %edi
    1608:	68 6c 54 00 00       	push   $0x546c
    160d:	6a 01                	push   $0x1
    160f:	e8 9c 29 00 00       	call   3fb0 <printf>
        exit(0);
    1614:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    161b:	e8 42 28 00 00       	call   3e62 <exit>

00001620 <unlinkread>:
}

// can I unlink a file and still read it?
void
unlinkread(void)
{
    1620:	55                   	push   %ebp
    1621:	89 e5                	mov    %esp,%ebp
    1623:	56                   	push   %esi
    1624:	53                   	push   %ebx
  int fd, fd1;

  printf(1, "unlinkread test\n");
    1625:	83 ec 08             	sub    $0x8,%esp
    1628:	68 ac 47 00 00       	push   $0x47ac
    162d:	6a 01                	push   $0x1
    162f:	e8 7c 29 00 00       	call   3fb0 <printf>
  fd = open("unlinkread", O_CREATE | O_RDWR);
    1634:	5b                   	pop    %ebx
    1635:	5e                   	pop    %esi
    1636:	68 02 02 00 00       	push   $0x202
    163b:	68 bd 47 00 00       	push   $0x47bd
    1640:	e8 5d 28 00 00       	call   3ea2 <open>
  if(fd < 0){
    1645:	83 c4 10             	add    $0x10,%esp
    1648:	85 c0                	test   %eax,%eax
    164a:	0f 88 e6 00 00 00    	js     1736 <unlinkread+0x116>
    printf(1, "create unlinkread failed\n");
    exit(0);
  }
  write(fd, "hello", 5);
    1650:	83 ec 04             	sub    $0x4,%esp
    1653:	89 c3                	mov    %eax,%ebx
    1655:	6a 05                	push   $0x5
    1657:	68 e2 47 00 00       	push   $0x47e2
    165c:	50                   	push   %eax
    165d:	e8 20 28 00 00       	call   3e82 <write>
  close(fd);
    1662:	89 1c 24             	mov    %ebx,(%esp)
    1665:	e8 20 28 00 00       	call   3e8a <close>

  fd = open("unlinkread", O_RDWR);
    166a:	58                   	pop    %eax
    166b:	5a                   	pop    %edx
    166c:	6a 02                	push   $0x2
    166e:	68 bd 47 00 00       	push   $0x47bd
    1673:	e8 2a 28 00 00       	call   3ea2 <open>
  if(fd < 0){
    1678:	83 c4 10             	add    $0x10,%esp
    167b:	85 c0                	test   %eax,%eax
    exit(0);
  }
  write(fd, "hello", 5);
  close(fd);

  fd = open("unlinkread", O_RDWR);
    167d:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    167f:	0f 88 33 01 00 00    	js     17b8 <unlinkread+0x198>
    printf(1, "open unlinkread failed\n");
    exit(0);
  }
  if(unlink("unlinkread") != 0){
    1685:	83 ec 0c             	sub    $0xc,%esp
    1688:	68 bd 47 00 00       	push   $0x47bd
    168d:	e8 20 28 00 00       	call   3eb2 <unlink>
    1692:	83 c4 10             	add    $0x10,%esp
    1695:	85 c0                	test   %eax,%eax
    1697:	0f 85 01 01 00 00    	jne    179e <unlinkread+0x17e>
    printf(1, "unlink unlinkread failed\n");
    exit(0);
  }

  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    169d:	83 ec 08             	sub    $0x8,%esp
    16a0:	68 02 02 00 00       	push   $0x202
    16a5:	68 bd 47 00 00       	push   $0x47bd
    16aa:	e8 f3 27 00 00       	call   3ea2 <open>
  write(fd1, "yyy", 3);
    16af:	83 c4 0c             	add    $0xc,%esp
  if(unlink("unlinkread") != 0){
    printf(1, "unlink unlinkread failed\n");
    exit(0);
  }

  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    16b2:	89 c6                	mov    %eax,%esi
  write(fd1, "yyy", 3);
    16b4:	6a 03                	push   $0x3
    16b6:	68 1a 48 00 00       	push   $0x481a
    16bb:	50                   	push   %eax
    16bc:	e8 c1 27 00 00       	call   3e82 <write>
  close(fd1);
    16c1:	89 34 24             	mov    %esi,(%esp)
    16c4:	e8 c1 27 00 00       	call   3e8a <close>

  if(read(fd, buf, sizeof(buf)) != 5){
    16c9:	83 c4 0c             	add    $0xc,%esp
    16cc:	68 00 20 00 00       	push   $0x2000
    16d1:	68 40 8b 00 00       	push   $0x8b40
    16d6:	53                   	push   %ebx
    16d7:	e8 9e 27 00 00       	call   3e7a <read>
    16dc:	83 c4 10             	add    $0x10,%esp
    16df:	83 f8 05             	cmp    $0x5,%eax
    16e2:	0f 85 9c 00 00 00    	jne    1784 <unlinkread+0x164>
    printf(1, "unlinkread read failed");
    exit(0);
  }
  if(buf[0] != 'h'){
    16e8:	80 3d 40 8b 00 00 68 	cmpb   $0x68,0x8b40
    16ef:	75 79                	jne    176a <unlinkread+0x14a>
    printf(1, "unlinkread wrong data\n");
    exit(0);
  }
  if(write(fd, buf, 10) != 10){
    16f1:	83 ec 04             	sub    $0x4,%esp
    16f4:	6a 0a                	push   $0xa
    16f6:	68 40 8b 00 00       	push   $0x8b40
    16fb:	53                   	push   %ebx
    16fc:	e8 81 27 00 00       	call   3e82 <write>
    1701:	83 c4 10             	add    $0x10,%esp
    1704:	83 f8 0a             	cmp    $0xa,%eax
    1707:	75 47                	jne    1750 <unlinkread+0x130>
    printf(1, "unlinkread write failed\n");
    exit(0);
  }
  close(fd);
    1709:	83 ec 0c             	sub    $0xc,%esp
    170c:	53                   	push   %ebx
    170d:	e8 78 27 00 00       	call   3e8a <close>
  unlink("unlinkread");
    1712:	c7 04 24 bd 47 00 00 	movl   $0x47bd,(%esp)
    1719:	e8 94 27 00 00       	call   3eb2 <unlink>
  printf(1, "unlinkread ok\n");
    171e:	58                   	pop    %eax
    171f:	5a                   	pop    %edx
    1720:	68 65 48 00 00       	push   $0x4865
    1725:	6a 01                	push   $0x1
    1727:	e8 84 28 00 00       	call   3fb0 <printf>
}
    172c:	83 c4 10             	add    $0x10,%esp
    172f:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1732:	5b                   	pop    %ebx
    1733:	5e                   	pop    %esi
    1734:	5d                   	pop    %ebp
    1735:	c3                   	ret    
  int fd, fd1;

  printf(1, "unlinkread test\n");
  fd = open("unlinkread", O_CREATE | O_RDWR);
  if(fd < 0){
    printf(1, "create unlinkread failed\n");
    1736:	51                   	push   %ecx
    1737:	51                   	push   %ecx
    1738:	68 c8 47 00 00       	push   $0x47c8
    173d:	6a 01                	push   $0x1
    173f:	e8 6c 28 00 00       	call   3fb0 <printf>
    exit(0);
    1744:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    174b:	e8 12 27 00 00       	call   3e62 <exit>
  if(buf[0] != 'h'){
    printf(1, "unlinkread wrong data\n");
    exit(0);
  }
  if(write(fd, buf, 10) != 10){
    printf(1, "unlinkread write failed\n");
    1750:	51                   	push   %ecx
    1751:	51                   	push   %ecx
    1752:	68 4c 48 00 00       	push   $0x484c
    1757:	6a 01                	push   $0x1
    1759:	e8 52 28 00 00       	call   3fb0 <printf>
    exit(0);
    175e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1765:	e8 f8 26 00 00       	call   3e62 <exit>
  if(read(fd, buf, sizeof(buf)) != 5){
    printf(1, "unlinkread read failed");
    exit(0);
  }
  if(buf[0] != 'h'){
    printf(1, "unlinkread wrong data\n");
    176a:	53                   	push   %ebx
    176b:	53                   	push   %ebx
    176c:	68 35 48 00 00       	push   $0x4835
    1771:	6a 01                	push   $0x1
    1773:	e8 38 28 00 00       	call   3fb0 <printf>
    exit(0);
    1778:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    177f:	e8 de 26 00 00       	call   3e62 <exit>
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
  write(fd1, "yyy", 3);
  close(fd1);

  if(read(fd, buf, sizeof(buf)) != 5){
    printf(1, "unlinkread read failed");
    1784:	56                   	push   %esi
    1785:	56                   	push   %esi
    1786:	68 1e 48 00 00       	push   $0x481e
    178b:	6a 01                	push   $0x1
    178d:	e8 1e 28 00 00       	call   3fb0 <printf>
    exit(0);
    1792:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1799:	e8 c4 26 00 00       	call   3e62 <exit>
  if(fd < 0){
    printf(1, "open unlinkread failed\n");
    exit(0);
  }
  if(unlink("unlinkread") != 0){
    printf(1, "unlink unlinkread failed\n");
    179e:	50                   	push   %eax
    179f:	50                   	push   %eax
    17a0:	68 00 48 00 00       	push   $0x4800
    17a5:	6a 01                	push   $0x1
    17a7:	e8 04 28 00 00       	call   3fb0 <printf>
    exit(0);
    17ac:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    17b3:	e8 aa 26 00 00       	call   3e62 <exit>
  write(fd, "hello", 5);
  close(fd);

  fd = open("unlinkread", O_RDWR);
  if(fd < 0){
    printf(1, "open unlinkread failed\n");
    17b8:	50                   	push   %eax
    17b9:	50                   	push   %eax
    17ba:	68 e8 47 00 00       	push   $0x47e8
    17bf:	6a 01                	push   $0x1
    17c1:	e8 ea 27 00 00       	call   3fb0 <printf>
    exit(0);
    17c6:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    17cd:	e8 90 26 00 00       	call   3e62 <exit>
    17d2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    17d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000017e0 <linktest>:
  printf(1, "unlinkread ok\n");
}

void
linktest(void)
{
    17e0:	55                   	push   %ebp
    17e1:	89 e5                	mov    %esp,%ebp
    17e3:	53                   	push   %ebx
    17e4:	83 ec 0c             	sub    $0xc,%esp
  int fd;

  printf(1, "linktest\n");
    17e7:	68 74 48 00 00       	push   $0x4874
    17ec:	6a 01                	push   $0x1
    17ee:	e8 bd 27 00 00       	call   3fb0 <printf>

  unlink("lf1");
    17f3:	c7 04 24 7e 48 00 00 	movl   $0x487e,(%esp)
    17fa:	e8 b3 26 00 00       	call   3eb2 <unlink>
  unlink("lf2");
    17ff:	c7 04 24 82 48 00 00 	movl   $0x4882,(%esp)
    1806:	e8 a7 26 00 00       	call   3eb2 <unlink>

  fd = open("lf1", O_CREATE|O_RDWR);
    180b:	58                   	pop    %eax
    180c:	5a                   	pop    %edx
    180d:	68 02 02 00 00       	push   $0x202
    1812:	68 7e 48 00 00       	push   $0x487e
    1817:	e8 86 26 00 00       	call   3ea2 <open>
  if(fd < 0){
    181c:	83 c4 10             	add    $0x10,%esp
    181f:	85 c0                	test   %eax,%eax
    1821:	0f 88 1e 01 00 00    	js     1945 <linktest+0x165>
    printf(1, "create lf1 failed\n");
    exit(0);
  }
  if(write(fd, "hello", 5) != 5){
    1827:	83 ec 04             	sub    $0x4,%esp
    182a:	89 c3                	mov    %eax,%ebx
    182c:	6a 05                	push   $0x5
    182e:	68 e2 47 00 00       	push   $0x47e2
    1833:	50                   	push   %eax
    1834:	e8 49 26 00 00       	call   3e82 <write>
    1839:	83 c4 10             	add    $0x10,%esp
    183c:	83 f8 05             	cmp    $0x5,%eax
    183f:	0f 85 d0 01 00 00    	jne    1a15 <linktest+0x235>
    printf(1, "write lf1 failed\n");
    exit(0);
  }
  close(fd);
    1845:	83 ec 0c             	sub    $0xc,%esp
    1848:	53                   	push   %ebx
    1849:	e8 3c 26 00 00       	call   3e8a <close>

  if(link("lf1", "lf2") < 0){
    184e:	5b                   	pop    %ebx
    184f:	58                   	pop    %eax
    1850:	68 82 48 00 00       	push   $0x4882
    1855:	68 7e 48 00 00       	push   $0x487e
    185a:	e8 63 26 00 00       	call   3ec2 <link>
    185f:	83 c4 10             	add    $0x10,%esp
    1862:	85 c0                	test   %eax,%eax
    1864:	0f 88 91 01 00 00    	js     19fb <linktest+0x21b>
    printf(1, "link lf1 lf2 failed\n");
    exit(0);
  }
  unlink("lf1");
    186a:	83 ec 0c             	sub    $0xc,%esp
    186d:	68 7e 48 00 00       	push   $0x487e
    1872:	e8 3b 26 00 00       	call   3eb2 <unlink>

  if(open("lf1", 0) >= 0){
    1877:	58                   	pop    %eax
    1878:	5a                   	pop    %edx
    1879:	6a 00                	push   $0x0
    187b:	68 7e 48 00 00       	push   $0x487e
    1880:	e8 1d 26 00 00       	call   3ea2 <open>
    1885:	83 c4 10             	add    $0x10,%esp
    1888:	85 c0                	test   %eax,%eax
    188a:	0f 89 51 01 00 00    	jns    19e1 <linktest+0x201>
    printf(1, "unlinked lf1 but it is still there!\n");
    exit(0);
  }

  fd = open("lf2", 0);
    1890:	83 ec 08             	sub    $0x8,%esp
    1893:	6a 00                	push   $0x0
    1895:	68 82 48 00 00       	push   $0x4882
    189a:	e8 03 26 00 00       	call   3ea2 <open>
  if(fd < 0){
    189f:	83 c4 10             	add    $0x10,%esp
    18a2:	85 c0                	test   %eax,%eax
  if(open("lf1", 0) >= 0){
    printf(1, "unlinked lf1 but it is still there!\n");
    exit(0);
  }

  fd = open("lf2", 0);
    18a4:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    18a6:	0f 88 1b 01 00 00    	js     19c7 <linktest+0x1e7>
    printf(1, "open lf2 failed\n");
    exit(0);
  }
  if(read(fd, buf, sizeof(buf)) != 5){
    18ac:	83 ec 04             	sub    $0x4,%esp
    18af:	68 00 20 00 00       	push   $0x2000
    18b4:	68 40 8b 00 00       	push   $0x8b40
    18b9:	50                   	push   %eax
    18ba:	e8 bb 25 00 00       	call   3e7a <read>
    18bf:	83 c4 10             	add    $0x10,%esp
    18c2:	83 f8 05             	cmp    $0x5,%eax
    18c5:	0f 85 e2 00 00 00    	jne    19ad <linktest+0x1cd>
    printf(1, "read lf2 failed\n");
    exit(0);
  }
  close(fd);
    18cb:	83 ec 0c             	sub    $0xc,%esp
    18ce:	53                   	push   %ebx
    18cf:	e8 b6 25 00 00       	call   3e8a <close>

  if(link("lf2", "lf2") >= 0){
    18d4:	58                   	pop    %eax
    18d5:	5a                   	pop    %edx
    18d6:	68 82 48 00 00       	push   $0x4882
    18db:	68 82 48 00 00       	push   $0x4882
    18e0:	e8 dd 25 00 00       	call   3ec2 <link>
    18e5:	83 c4 10             	add    $0x10,%esp
    18e8:	85 c0                	test   %eax,%eax
    18ea:	0f 89 a3 00 00 00    	jns    1993 <linktest+0x1b3>
    printf(1, "link lf2 lf2 succeeded! oops\n");
    exit(0);
  }

  unlink("lf2");
    18f0:	83 ec 0c             	sub    $0xc,%esp
    18f3:	68 82 48 00 00       	push   $0x4882
    18f8:	e8 b5 25 00 00       	call   3eb2 <unlink>
  if(link("lf2", "lf1") >= 0){
    18fd:	59                   	pop    %ecx
    18fe:	5b                   	pop    %ebx
    18ff:	68 7e 48 00 00       	push   $0x487e
    1904:	68 82 48 00 00       	push   $0x4882
    1909:	e8 b4 25 00 00       	call   3ec2 <link>
    190e:	83 c4 10             	add    $0x10,%esp
    1911:	85 c0                	test   %eax,%eax
    1913:	79 64                	jns    1979 <linktest+0x199>
    printf(1, "link non-existant succeeded! oops\n");
    exit(0);
  }

  if(link(".", "lf1") >= 0){
    1915:	83 ec 08             	sub    $0x8,%esp
    1918:	68 7e 48 00 00       	push   $0x487e
    191d:	68 46 4b 00 00       	push   $0x4b46
    1922:	e8 9b 25 00 00       	call   3ec2 <link>
    1927:	83 c4 10             	add    $0x10,%esp
    192a:	85 c0                	test   %eax,%eax
    192c:	79 31                	jns    195f <linktest+0x17f>
    printf(1, "link . lf1 succeeded! oops\n");
    exit(0);
  }

  printf(1, "linktest ok\n");
    192e:	83 ec 08             	sub    $0x8,%esp
    1931:	68 1c 49 00 00       	push   $0x491c
    1936:	6a 01                	push   $0x1
    1938:	e8 73 26 00 00       	call   3fb0 <printf>
}
    193d:	83 c4 10             	add    $0x10,%esp
    1940:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1943:	c9                   	leave  
    1944:	c3                   	ret    
  unlink("lf1");
  unlink("lf2");

  fd = open("lf1", O_CREATE|O_RDWR);
  if(fd < 0){
    printf(1, "create lf1 failed\n");
    1945:	50                   	push   %eax
    1946:	50                   	push   %eax
    1947:	68 86 48 00 00       	push   $0x4886
    194c:	6a 01                	push   $0x1
    194e:	e8 5d 26 00 00       	call   3fb0 <printf>
    exit(0);
    1953:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    195a:	e8 03 25 00 00       	call   3e62 <exit>
    printf(1, "link non-existant succeeded! oops\n");
    exit(0);
  }

  if(link(".", "lf1") >= 0){
    printf(1, "link . lf1 succeeded! oops\n");
    195f:	50                   	push   %eax
    1960:	50                   	push   %eax
    1961:	68 00 49 00 00       	push   $0x4900
    1966:	6a 01                	push   $0x1
    1968:	e8 43 26 00 00       	call   3fb0 <printf>
    exit(0);
    196d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1974:	e8 e9 24 00 00       	call   3e62 <exit>
    exit(0);
  }

  unlink("lf2");
  if(link("lf2", "lf1") >= 0){
    printf(1, "link non-existant succeeded! oops\n");
    1979:	52                   	push   %edx
    197a:	52                   	push   %edx
    197b:	68 b4 54 00 00       	push   $0x54b4
    1980:	6a 01                	push   $0x1
    1982:	e8 29 26 00 00       	call   3fb0 <printf>
    exit(0);
    1987:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    198e:	e8 cf 24 00 00       	call   3e62 <exit>
    exit(0);
  }
  close(fd);

  if(link("lf2", "lf2") >= 0){
    printf(1, "link lf2 lf2 succeeded! oops\n");
    1993:	50                   	push   %eax
    1994:	50                   	push   %eax
    1995:	68 e2 48 00 00       	push   $0x48e2
    199a:	6a 01                	push   $0x1
    199c:	e8 0f 26 00 00       	call   3fb0 <printf>
    exit(0);
    19a1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    19a8:	e8 b5 24 00 00       	call   3e62 <exit>
  if(fd < 0){
    printf(1, "open lf2 failed\n");
    exit(0);
  }
  if(read(fd, buf, sizeof(buf)) != 5){
    printf(1, "read lf2 failed\n");
    19ad:	51                   	push   %ecx
    19ae:	51                   	push   %ecx
    19af:	68 d1 48 00 00       	push   $0x48d1
    19b4:	6a 01                	push   $0x1
    19b6:	e8 f5 25 00 00       	call   3fb0 <printf>
    exit(0);
    19bb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    19c2:	e8 9b 24 00 00       	call   3e62 <exit>
    exit(0);
  }

  fd = open("lf2", 0);
  if(fd < 0){
    printf(1, "open lf2 failed\n");
    19c7:	53                   	push   %ebx
    19c8:	53                   	push   %ebx
    19c9:	68 c0 48 00 00       	push   $0x48c0
    19ce:	6a 01                	push   $0x1
    19d0:	e8 db 25 00 00       	call   3fb0 <printf>
    exit(0);
    19d5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    19dc:	e8 81 24 00 00       	call   3e62 <exit>
    exit(0);
  }
  unlink("lf1");

  if(open("lf1", 0) >= 0){
    printf(1, "unlinked lf1 but it is still there!\n");
    19e1:	50                   	push   %eax
    19e2:	50                   	push   %eax
    19e3:	68 8c 54 00 00       	push   $0x548c
    19e8:	6a 01                	push   $0x1
    19ea:	e8 c1 25 00 00       	call   3fb0 <printf>
    exit(0);
    19ef:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    19f6:	e8 67 24 00 00       	call   3e62 <exit>
    exit(0);
  }
  close(fd);

  if(link("lf1", "lf2") < 0){
    printf(1, "link lf1 lf2 failed\n");
    19fb:	51                   	push   %ecx
    19fc:	51                   	push   %ecx
    19fd:	68 ab 48 00 00       	push   $0x48ab
    1a02:	6a 01                	push   $0x1
    1a04:	e8 a7 25 00 00       	call   3fb0 <printf>
    exit(0);
    1a09:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1a10:	e8 4d 24 00 00       	call   3e62 <exit>
  if(fd < 0){
    printf(1, "create lf1 failed\n");
    exit(0);
  }
  if(write(fd, "hello", 5) != 5){
    printf(1, "write lf1 failed\n");
    1a15:	50                   	push   %eax
    1a16:	50                   	push   %eax
    1a17:	68 99 48 00 00       	push   $0x4899
    1a1c:	6a 01                	push   $0x1
    1a1e:	e8 8d 25 00 00       	call   3fb0 <printf>
    exit(0);
    1a23:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1a2a:	e8 33 24 00 00       	call   3e62 <exit>
    1a2f:	90                   	nop

00001a30 <concreate>:
}

// test concurrent create/link/unlink of the same file
void
concreate(void)
{
    1a30:	55                   	push   %ebp
    1a31:	89 e5                	mov    %esp,%ebp
    1a33:	57                   	push   %edi
    1a34:	56                   	push   %esi
    1a35:	53                   	push   %ebx
  } de;

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    1a36:	31 f6                	xor    %esi,%esi
    1a38:	8d 5d ad             	lea    -0x53(%ebp),%ebx
    file[1] = '0' + i;
    unlink(file);
    pid = fork();
    if(pid && (i % 3) == 1){
    1a3b:	bf 56 55 55 55       	mov    $0x55555556,%edi
}

// test concurrent create/link/unlink of the same file
void
concreate(void)
{
    1a40:	83 ec 64             	sub    $0x64,%esp
  struct {
    ushort inum;
    char name[14];
  } de;

  printf(1, "concreate test\n");
    1a43:	68 29 49 00 00       	push   $0x4929
    1a48:	6a 01                	push   $0x1
    1a4a:	e8 61 25 00 00       	call   3fb0 <printf>
  file[0] = 'C';
    1a4f:	c6 45 ad 43          	movb   $0x43,-0x53(%ebp)
  file[2] = '\0';
    1a53:	c6 45 af 00          	movb   $0x0,-0x51(%ebp)
    1a57:	83 c4 10             	add    $0x10,%esp
    1a5a:	eb 59                	jmp    1ab5 <concreate+0x85>
    1a5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    unlink(file);
    pid = fork();
    if(pid && (i % 3) == 1){
    1a60:	89 f0                	mov    %esi,%eax
    1a62:	89 f1                	mov    %esi,%ecx
    1a64:	f7 ef                	imul   %edi
    1a66:	89 f0                	mov    %esi,%eax
    1a68:	c1 f8 1f             	sar    $0x1f,%eax
    1a6b:	29 c2                	sub    %eax,%edx
    1a6d:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1a70:	29 c1                	sub    %eax,%ecx
    1a72:	83 f9 01             	cmp    $0x1,%ecx
    1a75:	0f 84 cd 00 00 00    	je     1b48 <concreate+0x118>
      link("C0", file);
    } else if(pid == 0 && (i % 5) == 1){
      link("C0", file);
    } else {
      fd = open(file, O_CREATE | O_RDWR);
    1a7b:	83 ec 08             	sub    $0x8,%esp
    1a7e:	68 02 02 00 00       	push   $0x202
    1a83:	53                   	push   %ebx
    1a84:	e8 19 24 00 00       	call   3ea2 <open>
      if(fd < 0){
    1a89:	83 c4 10             	add    $0x10,%esp
    1a8c:	85 c0                	test   %eax,%eax
    1a8e:	78 75                	js     1b05 <concreate+0xd5>
        printf(1, "concreate create %s failed\n", file);
        exit(0);
      }
      close(fd);
    1a90:	83 ec 0c             	sub    $0xc,%esp
    1a93:	50                   	push   %eax
    1a94:	e8 f1 23 00 00       	call   3e8a <close>
    1a99:	83 c4 10             	add    $0x10,%esp
    }
    if(pid == 0)
      exit(0);
    else
      wait(0);
    1a9c:	83 ec 0c             	sub    $0xc,%esp
  } de;

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    1a9f:	83 c6 01             	add    $0x1,%esi
      close(fd);
    }
    if(pid == 0)
      exit(0);
    else
      wait(0);
    1aa2:	6a 00                	push   $0x0
    1aa4:	e8 c1 23 00 00       	call   3e6a <wait>
  } de;

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    1aa9:	83 c4 10             	add    $0x10,%esp
    1aac:	83 fe 28             	cmp    $0x28,%esi
    1aaf:	0f 84 ab 00 00 00    	je     1b60 <concreate+0x130>
    file[1] = '0' + i;
    unlink(file);
    1ab5:	83 ec 0c             	sub    $0xc,%esp

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    1ab8:	8d 46 30             	lea    0x30(%esi),%eax
    unlink(file);
    1abb:	53                   	push   %ebx

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    1abc:	88 45 ae             	mov    %al,-0x52(%ebp)
    unlink(file);
    1abf:	e8 ee 23 00 00       	call   3eb2 <unlink>
    pid = fork();
    1ac4:	e8 91 23 00 00       	call   3e5a <fork>
    if(pid && (i % 3) == 1){
    1ac9:	83 c4 10             	add    $0x10,%esp
    1acc:	85 c0                	test   %eax,%eax
    1ace:	75 90                	jne    1a60 <concreate+0x30>
      link("C0", file);
    } else if(pid == 0 && (i % 5) == 1){
    1ad0:	89 f0                	mov    %esi,%eax
    1ad2:	ba 67 66 66 66       	mov    $0x66666667,%edx
    1ad7:	f7 ea                	imul   %edx
    1ad9:	89 f0                	mov    %esi,%eax
    1adb:	c1 f8 1f             	sar    $0x1f,%eax
    1ade:	d1 fa                	sar    %edx
    1ae0:	29 c2                	sub    %eax,%edx
    1ae2:	8d 04 92             	lea    (%edx,%edx,4),%eax
    1ae5:	29 c6                	sub    %eax,%esi
    1ae7:	83 fe 01             	cmp    $0x1,%esi
    1aea:	74 3c                	je     1b28 <concreate+0xf8>
      link("C0", file);
    } else {
      fd = open(file, O_CREATE | O_RDWR);
    1aec:	83 ec 08             	sub    $0x8,%esp
    1aef:	68 02 02 00 00       	push   $0x202
    1af4:	53                   	push   %ebx
    1af5:	e8 a8 23 00 00       	call   3ea2 <open>
      if(fd < 0){
    1afa:	83 c4 10             	add    $0x10,%esp
    1afd:	85 c0                	test   %eax,%eax
    1aff:	0f 89 56 02 00 00    	jns    1d5b <concreate+0x32b>
        printf(1, "concreate create %s failed\n", file);
    1b05:	83 ec 04             	sub    $0x4,%esp
    1b08:	53                   	push   %ebx
    1b09:	68 3c 49 00 00       	push   $0x493c
    1b0e:	6a 01                	push   $0x1
    1b10:	e8 9b 24 00 00       	call   3fb0 <printf>
        exit(0);
    1b15:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1b1c:	e8 41 23 00 00       	call   3e62 <exit>
    1b21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    unlink(file);
    pid = fork();
    if(pid && (i % 3) == 1){
      link("C0", file);
    } else if(pid == 0 && (i % 5) == 1){
      link("C0", file);
    1b28:	83 ec 08             	sub    $0x8,%esp
    1b2b:	53                   	push   %ebx
    1b2c:	68 39 49 00 00       	push   $0x4939
    1b31:	e8 8c 23 00 00       	call   3ec2 <link>
    1b36:	83 c4 10             	add    $0x10,%esp
        exit(0);
      }
      close(fd);
    }
    if(pid == 0)
      exit(0);
    1b39:	83 ec 0c             	sub    $0xc,%esp
    1b3c:	6a 00                	push   $0x0
    1b3e:	e8 1f 23 00 00       	call   3e62 <exit>
    1b43:	90                   	nop
    1b44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    unlink(file);
    pid = fork();
    if(pid && (i % 3) == 1){
      link("C0", file);
    1b48:	83 ec 08             	sub    $0x8,%esp
    1b4b:	53                   	push   %ebx
    1b4c:	68 39 49 00 00       	push   $0x4939
    1b51:	e8 6c 23 00 00       	call   3ec2 <link>
    1b56:	83 c4 10             	add    $0x10,%esp
    1b59:	e9 3e ff ff ff       	jmp    1a9c <concreate+0x6c>
    1b5e:	66 90                	xchg   %ax,%ax
      exit(0);
    else
      wait(0);
  }

  memset(fa, 0, sizeof(fa));
    1b60:	8d 45 c0             	lea    -0x40(%ebp),%eax
    1b63:	83 ec 04             	sub    $0x4,%esp
    1b66:	8d 7d b0             	lea    -0x50(%ebp),%edi
    1b69:	6a 28                	push   $0x28
    1b6b:	6a 00                	push   $0x0
    1b6d:	50                   	push   %eax
    1b6e:	e8 5d 21 00 00       	call   3cd0 <memset>
  fd = open(".", 0);
    1b73:	59                   	pop    %ecx
    1b74:	5e                   	pop    %esi
    1b75:	6a 00                	push   $0x0
    1b77:	68 46 4b 00 00       	push   $0x4b46
    1b7c:	e8 21 23 00 00       	call   3ea2 <open>
  n = 0;
  while(read(fd, &de, sizeof(de)) > 0){
    1b81:	83 c4 10             	add    $0x10,%esp
    else
      wait(0);
  }

  memset(fa, 0, sizeof(fa));
  fd = open(".", 0);
    1b84:	89 c6                	mov    %eax,%esi
  n = 0;
    1b86:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
    1b8d:	8d 76 00             	lea    0x0(%esi),%esi
  while(read(fd, &de, sizeof(de)) > 0){
    1b90:	83 ec 04             	sub    $0x4,%esp
    1b93:	6a 10                	push   $0x10
    1b95:	57                   	push   %edi
    1b96:	56                   	push   %esi
    1b97:	e8 de 22 00 00       	call   3e7a <read>
    1b9c:	83 c4 10             	add    $0x10,%esp
    1b9f:	85 c0                	test   %eax,%eax
    1ba1:	7e 3d                	jle    1be0 <concreate+0x1b0>
    if(de.inum == 0)
    1ba3:	66 83 7d b0 00       	cmpw   $0x0,-0x50(%ebp)
    1ba8:	74 e6                	je     1b90 <concreate+0x160>
      continue;
    if(de.name[0] == 'C' && de.name[2] == '\0'){
    1baa:	80 7d b2 43          	cmpb   $0x43,-0x4e(%ebp)
    1bae:	75 e0                	jne    1b90 <concreate+0x160>
    1bb0:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
    1bb4:	75 da                	jne    1b90 <concreate+0x160>
      i = de.name[1] - '0';
    1bb6:	0f be 45 b3          	movsbl -0x4d(%ebp),%eax
    1bba:	83 e8 30             	sub    $0x30,%eax
      if(i < 0 || i >= sizeof(fa)){
    1bbd:	83 f8 27             	cmp    $0x27,%eax
    1bc0:	0f 87 76 01 00 00    	ja     1d3c <concreate+0x30c>
        printf(1, "concreate weird file %s\n", de.name);
        exit(0);
      }
      if(fa[i]){
    1bc6:	80 7c 05 c0 00       	cmpb   $0x0,-0x40(%ebp,%eax,1)
    1bcb:	0f 85 4c 01 00 00    	jne    1d1d <concreate+0x2ed>
        printf(1, "concreate duplicate file %s\n", de.name);
        exit(0);
      }
      fa[i] = 1;
    1bd1:	c6 44 05 c0 01       	movb   $0x1,-0x40(%ebp,%eax,1)
      n++;
    1bd6:	83 45 a4 01          	addl   $0x1,-0x5c(%ebp)
    1bda:	eb b4                	jmp    1b90 <concreate+0x160>
    1bdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    }
  }
  close(fd);
    1be0:	83 ec 0c             	sub    $0xc,%esp
    1be3:	56                   	push   %esi
    1be4:	e8 a1 22 00 00       	call   3e8a <close>

  if(n != 40){
    1be9:	83 c4 10             	add    $0x10,%esp
    1bec:	83 7d a4 28          	cmpl   $0x28,-0x5c(%ebp)
    1bf0:	0f 85 0c 01 00 00    	jne    1d02 <concreate+0x2d2>
    1bf6:	31 f6                	xor    %esi,%esi
    1bf8:	eb 78                	jmp    1c72 <concreate+0x242>
    1bfa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(pid < 0){
      printf(1, "fork failed\n");
      exit(0);
    }
    if(((i % 3) == 0 && pid == 0) ||
       ((i % 3) == 1 && pid != 0)){
    1c00:	83 fa 01             	cmp    $0x1,%edx
    1c03:	0f 85 a1 00 00 00    	jne    1caa <concreate+0x27a>
      close(open(file, 0));
    1c09:	83 ec 08             	sub    $0x8,%esp
    1c0c:	6a 00                	push   $0x0
    1c0e:	53                   	push   %ebx
    1c0f:	e8 8e 22 00 00       	call   3ea2 <open>
    1c14:	89 04 24             	mov    %eax,(%esp)
    1c17:	e8 6e 22 00 00       	call   3e8a <close>
      close(open(file, 0));
    1c1c:	58                   	pop    %eax
    1c1d:	5a                   	pop    %edx
    1c1e:	6a 00                	push   $0x0
    1c20:	53                   	push   %ebx
    1c21:	e8 7c 22 00 00       	call   3ea2 <open>
    1c26:	89 04 24             	mov    %eax,(%esp)
    1c29:	e8 5c 22 00 00       	call   3e8a <close>
      close(open(file, 0));
    1c2e:	59                   	pop    %ecx
    1c2f:	58                   	pop    %eax
    1c30:	6a 00                	push   $0x0
    1c32:	53                   	push   %ebx
    1c33:	e8 6a 22 00 00       	call   3ea2 <open>
    1c38:	89 04 24             	mov    %eax,(%esp)
    1c3b:	e8 4a 22 00 00       	call   3e8a <close>
      close(open(file, 0));
    1c40:	58                   	pop    %eax
    1c41:	5a                   	pop    %edx
    1c42:	6a 00                	push   $0x0
    1c44:	53                   	push   %ebx
    1c45:	e8 58 22 00 00       	call   3ea2 <open>
    1c4a:	89 04 24             	mov    %eax,(%esp)
    1c4d:	e8 38 22 00 00       	call   3e8a <close>
    1c52:	83 c4 10             	add    $0x10,%esp
      unlink(file);
      unlink(file);
      unlink(file);
      unlink(file);
    }
    if(pid == 0)
    1c55:	85 ff                	test   %edi,%edi
    1c57:	0f 84 dc fe ff ff    	je     1b39 <concreate+0x109>
      exit(0);
    else
      wait(0);
    1c5d:	83 ec 0c             	sub    $0xc,%esp
  if(n != 40){
    printf(1, "concreate not enough files in directory listing\n");
    exit(0);
  }

  for(i = 0; i < 40; i++){
    1c60:	83 c6 01             	add    $0x1,%esi
      unlink(file);
    }
    if(pid == 0)
      exit(0);
    else
      wait(0);
    1c63:	6a 00                	push   $0x0
    1c65:	e8 00 22 00 00       	call   3e6a <wait>
  if(n != 40){
    printf(1, "concreate not enough files in directory listing\n");
    exit(0);
  }

  for(i = 0; i < 40; i++){
    1c6a:	83 c4 10             	add    $0x10,%esp
    1c6d:	83 fe 28             	cmp    $0x28,%esi
    1c70:	74 5e                	je     1cd0 <concreate+0x2a0>
    file[1] = '0' + i;
    1c72:	8d 46 30             	lea    0x30(%esi),%eax
    1c75:	88 45 ae             	mov    %al,-0x52(%ebp)
    pid = fork();
    1c78:	e8 dd 21 00 00       	call   3e5a <fork>
    if(pid < 0){
    1c7d:	85 c0                	test   %eax,%eax
    exit(0);
  }

  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    pid = fork();
    1c7f:	89 c7                	mov    %eax,%edi
    if(pid < 0){
    1c81:	78 64                	js     1ce7 <concreate+0x2b7>
      printf(1, "fork failed\n");
      exit(0);
    }
    if(((i % 3) == 0 && pid == 0) ||
    1c83:	b8 56 55 55 55       	mov    $0x55555556,%eax
    1c88:	f7 ee                	imul   %esi
    1c8a:	89 f0                	mov    %esi,%eax
    1c8c:	c1 f8 1f             	sar    $0x1f,%eax
    1c8f:	29 c2                	sub    %eax,%edx
    1c91:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1c94:	89 f2                	mov    %esi,%edx
    1c96:	29 c2                	sub    %eax,%edx
    1c98:	89 f8                	mov    %edi,%eax
    1c9a:	09 d0                	or     %edx,%eax
    1c9c:	0f 84 67 ff ff ff    	je     1c09 <concreate+0x1d9>
       ((i % 3) == 1 && pid != 0)){
    1ca2:	85 ff                	test   %edi,%edi
    1ca4:	0f 85 56 ff ff ff    	jne    1c00 <concreate+0x1d0>
      close(open(file, 0));
      close(open(file, 0));
      close(open(file, 0));
      close(open(file, 0));
    } else {
      unlink(file);
    1caa:	83 ec 0c             	sub    $0xc,%esp
    1cad:	53                   	push   %ebx
    1cae:	e8 ff 21 00 00       	call   3eb2 <unlink>
      unlink(file);
    1cb3:	89 1c 24             	mov    %ebx,(%esp)
    1cb6:	e8 f7 21 00 00       	call   3eb2 <unlink>
      unlink(file);
    1cbb:	89 1c 24             	mov    %ebx,(%esp)
    1cbe:	e8 ef 21 00 00       	call   3eb2 <unlink>
      unlink(file);
    1cc3:	89 1c 24             	mov    %ebx,(%esp)
    1cc6:	e8 e7 21 00 00       	call   3eb2 <unlink>
    1ccb:	83 c4 10             	add    $0x10,%esp
    1cce:	eb 85                	jmp    1c55 <concreate+0x225>
      exit(0);
    else
      wait(0);
  }

  printf(1, "concreate ok\n");
    1cd0:	83 ec 08             	sub    $0x8,%esp
    1cd3:	68 8e 49 00 00       	push   $0x498e
    1cd8:	6a 01                	push   $0x1
    1cda:	e8 d1 22 00 00       	call   3fb0 <printf>
}
    1cdf:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1ce2:	5b                   	pop    %ebx
    1ce3:	5e                   	pop    %esi
    1ce4:	5f                   	pop    %edi
    1ce5:	5d                   	pop    %ebp
    1ce6:	c3                   	ret    

  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    pid = fork();
    if(pid < 0){
      printf(1, "fork failed\n");
    1ce7:	83 ec 08             	sub    $0x8,%esp
    1cea:	68 11 52 00 00       	push   $0x5211
    1cef:	6a 01                	push   $0x1
    1cf1:	e8 ba 22 00 00       	call   3fb0 <printf>
      exit(0);
    1cf6:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1cfd:	e8 60 21 00 00       	call   3e62 <exit>
    }
  }
  close(fd);

  if(n != 40){
    printf(1, "concreate not enough files in directory listing\n");
    1d02:	83 ec 08             	sub    $0x8,%esp
    1d05:	68 d8 54 00 00       	push   $0x54d8
    1d0a:	6a 01                	push   $0x1
    1d0c:	e8 9f 22 00 00       	call   3fb0 <printf>
    exit(0);
    1d11:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1d18:	e8 45 21 00 00       	call   3e62 <exit>
      if(i < 0 || i >= sizeof(fa)){
        printf(1, "concreate weird file %s\n", de.name);
        exit(0);
      }
      if(fa[i]){
        printf(1, "concreate duplicate file %s\n", de.name);
    1d1d:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1d20:	83 ec 04             	sub    $0x4,%esp
    1d23:	50                   	push   %eax
    1d24:	68 71 49 00 00       	push   $0x4971
    1d29:	6a 01                	push   $0x1
    1d2b:	e8 80 22 00 00       	call   3fb0 <printf>
        exit(0);
    1d30:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1d37:	e8 26 21 00 00       	call   3e62 <exit>
    if(de.inum == 0)
      continue;
    if(de.name[0] == 'C' && de.name[2] == '\0'){
      i = de.name[1] - '0';
      if(i < 0 || i >= sizeof(fa)){
        printf(1, "concreate weird file %s\n", de.name);
    1d3c:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1d3f:	83 ec 04             	sub    $0x4,%esp
    1d42:	50                   	push   %eax
    1d43:	68 58 49 00 00       	push   $0x4958
    1d48:	6a 01                	push   $0x1
    1d4a:	e8 61 22 00 00       	call   3fb0 <printf>
        exit(0);
    1d4f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1d56:	e8 07 21 00 00       	call   3e62 <exit>
      fd = open(file, O_CREATE | O_RDWR);
      if(fd < 0){
        printf(1, "concreate create %s failed\n", file);
        exit(0);
      }
      close(fd);
    1d5b:	83 ec 0c             	sub    $0xc,%esp
    1d5e:	50                   	push   %eax
    1d5f:	e8 26 21 00 00       	call   3e8a <close>
    1d64:	83 c4 10             	add    $0x10,%esp
    1d67:	e9 cd fd ff ff       	jmp    1b39 <concreate+0x109>
    1d6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001d70 <linkunlink>:

// another concurrent link/unlink/create test,
// to look for deadlocks.
void
linkunlink()
{
    1d70:	55                   	push   %ebp
    1d71:	89 e5                	mov    %esp,%ebp
    1d73:	57                   	push   %edi
    1d74:	56                   	push   %esi
    1d75:	53                   	push   %ebx
    1d76:	83 ec 24             	sub    $0x24,%esp
  int pid, i;

  printf(1, "linkunlink test\n");
    1d79:	68 9c 49 00 00       	push   $0x499c
    1d7e:	6a 01                	push   $0x1
    1d80:	e8 2b 22 00 00       	call   3fb0 <printf>

  unlink("x");
    1d85:	c7 04 24 29 4c 00 00 	movl   $0x4c29,(%esp)
    1d8c:	e8 21 21 00 00       	call   3eb2 <unlink>
  pid = fork();
    1d91:	e8 c4 20 00 00       	call   3e5a <fork>
  if(pid < 0){
    1d96:	83 c4 10             	add    $0x10,%esp
    1d99:	85 c0                	test   %eax,%eax
  int pid, i;

  printf(1, "linkunlink test\n");

  unlink("x");
  pid = fork();
    1d9b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(pid < 0){
    1d9e:	0f 88 b6 00 00 00    	js     1e5a <linkunlink+0xea>
    printf(1, "fork failed\n");
    exit(0);
  }

  unsigned int x = (pid ? 1 : 97);
    1da4:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    1da8:	bb 64 00 00 00       	mov    $0x64,%ebx
  for(i = 0; i < 100; i++){
    x = x * 1103515245 + 12345;
    if((x % 3) == 0){
    1dad:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
  if(pid < 0){
    printf(1, "fork failed\n");
    exit(0);
  }

  unsigned int x = (pid ? 1 : 97);
    1db2:	19 ff                	sbb    %edi,%edi
    1db4:	83 e7 60             	and    $0x60,%edi
    1db7:	83 c7 01             	add    $0x1,%edi
    1dba:	eb 1e                	jmp    1dda <linkunlink+0x6a>
    1dbc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(i = 0; i < 100; i++){
    x = x * 1103515245 + 12345;
    if((x % 3) == 0){
      close(open("x", O_RDWR | O_CREATE));
    } else if((x % 3) == 1){
    1dc0:	83 fa 01             	cmp    $0x1,%edx
    1dc3:	74 7b                	je     1e40 <linkunlink+0xd0>
      link("cat", "x");
    } else {
      unlink("x");
    1dc5:	83 ec 0c             	sub    $0xc,%esp
    1dc8:	68 29 4c 00 00       	push   $0x4c29
    1dcd:	e8 e0 20 00 00       	call   3eb2 <unlink>
    1dd2:	83 c4 10             	add    $0x10,%esp
    printf(1, "fork failed\n");
    exit(0);
  }

  unsigned int x = (pid ? 1 : 97);
  for(i = 0; i < 100; i++){
    1dd5:	83 eb 01             	sub    $0x1,%ebx
    1dd8:	74 3d                	je     1e17 <linkunlink+0xa7>
    x = x * 1103515245 + 12345;
    1dda:	69 cf 6d 4e c6 41    	imul   $0x41c64e6d,%edi,%ecx
    1de0:	8d b9 39 30 00 00    	lea    0x3039(%ecx),%edi
    if((x % 3) == 0){
    1de6:	89 f8                	mov    %edi,%eax
    1de8:	f7 e6                	mul    %esi
    1dea:	d1 ea                	shr    %edx
    1dec:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1def:	89 fa                	mov    %edi,%edx
    1df1:	29 c2                	sub    %eax,%edx
    1df3:	75 cb                	jne    1dc0 <linkunlink+0x50>
      close(open("x", O_RDWR | O_CREATE));
    1df5:	83 ec 08             	sub    $0x8,%esp
    1df8:	68 02 02 00 00       	push   $0x202
    1dfd:	68 29 4c 00 00       	push   $0x4c29
    1e02:	e8 9b 20 00 00       	call   3ea2 <open>
    1e07:	89 04 24             	mov    %eax,(%esp)
    1e0a:	e8 7b 20 00 00       	call   3e8a <close>
    1e0f:	83 c4 10             	add    $0x10,%esp
    printf(1, "fork failed\n");
    exit(0);
  }

  unsigned int x = (pid ? 1 : 97);
  for(i = 0; i < 100; i++){
    1e12:	83 eb 01             	sub    $0x1,%ebx
    1e15:	75 c3                	jne    1dda <linkunlink+0x6a>
    } else {
      unlink("x");
    }
  }

  if(pid)
    1e17:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
    1e1a:	85 c9                	test   %ecx,%ecx
    1e1c:	74 57                	je     1e75 <linkunlink+0x105>
    wait(0);
    1e1e:	83 ec 0c             	sub    $0xc,%esp
    1e21:	6a 00                	push   $0x0
    1e23:	e8 42 20 00 00       	call   3e6a <wait>
  else
    exit(0);

  printf(1, "linkunlink ok\n");
    1e28:	58                   	pop    %eax
    1e29:	5a                   	pop    %edx
    1e2a:	68 b1 49 00 00       	push   $0x49b1
    1e2f:	6a 01                	push   $0x1
    1e31:	e8 7a 21 00 00       	call   3fb0 <printf>
}
    1e36:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1e39:	5b                   	pop    %ebx
    1e3a:	5e                   	pop    %esi
    1e3b:	5f                   	pop    %edi
    1e3c:	5d                   	pop    %ebp
    1e3d:	c3                   	ret    
    1e3e:	66 90                	xchg   %ax,%ax
  for(i = 0; i < 100; i++){
    x = x * 1103515245 + 12345;
    if((x % 3) == 0){
      close(open("x", O_RDWR | O_CREATE));
    } else if((x % 3) == 1){
      link("cat", "x");
    1e40:	83 ec 08             	sub    $0x8,%esp
    1e43:	68 29 4c 00 00       	push   $0x4c29
    1e48:	68 ad 49 00 00       	push   $0x49ad
    1e4d:	e8 70 20 00 00       	call   3ec2 <link>
    1e52:	83 c4 10             	add    $0x10,%esp
    1e55:	e9 7b ff ff ff       	jmp    1dd5 <linkunlink+0x65>
  printf(1, "linkunlink test\n");

  unlink("x");
  pid = fork();
  if(pid < 0){
    printf(1, "fork failed\n");
    1e5a:	83 ec 08             	sub    $0x8,%esp
    1e5d:	68 11 52 00 00       	push   $0x5211
    1e62:	6a 01                	push   $0x1
    1e64:	e8 47 21 00 00       	call   3fb0 <printf>
    exit(0);
    1e69:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1e70:	e8 ed 1f 00 00       	call   3e62 <exit>
  }

  if(pid)
    wait(0);
  else
    exit(0);
    1e75:	83 ec 0c             	sub    $0xc,%esp
    1e78:	6a 00                	push   $0x0
    1e7a:	e8 e3 1f 00 00       	call   3e62 <exit>
    1e7f:	90                   	nop

00001e80 <bigdir>:
}

// directory that uses indirect blocks
void
bigdir(void)
{
    1e80:	55                   	push   %ebp
    1e81:	89 e5                	mov    %esp,%ebp
    1e83:	56                   	push   %esi
    1e84:	53                   	push   %ebx
    1e85:	83 ec 18             	sub    $0x18,%esp
  int i, fd;
  char name[10];

  printf(1, "bigdir test\n");
    1e88:	68 c0 49 00 00       	push   $0x49c0
    1e8d:	6a 01                	push   $0x1
    1e8f:	e8 1c 21 00 00       	call   3fb0 <printf>
  unlink("bd");
    1e94:	c7 04 24 cd 49 00 00 	movl   $0x49cd,(%esp)
    1e9b:	e8 12 20 00 00       	call   3eb2 <unlink>

  fd = open("bd", O_CREATE);
    1ea0:	58                   	pop    %eax
    1ea1:	5a                   	pop    %edx
    1ea2:	68 00 02 00 00       	push   $0x200
    1ea7:	68 cd 49 00 00       	push   $0x49cd
    1eac:	e8 f1 1f 00 00       	call   3ea2 <open>
  if(fd < 0){
    1eb1:	83 c4 10             	add    $0x10,%esp
    1eb4:	85 c0                	test   %eax,%eax
    1eb6:	0f 88 ec 00 00 00    	js     1fa8 <bigdir+0x128>
    printf(1, "bigdir create failed\n");
    exit(0);
  }
  close(fd);
    1ebc:	83 ec 0c             	sub    $0xc,%esp
    1ebf:	8d 75 ee             	lea    -0x12(%ebp),%esi

  for(i = 0; i < 500; i++){
    1ec2:	31 db                	xor    %ebx,%ebx
  fd = open("bd", O_CREATE);
  if(fd < 0){
    printf(1, "bigdir create failed\n");
    exit(0);
  }
  close(fd);
    1ec4:	50                   	push   %eax
    1ec5:	e8 c0 1f 00 00       	call   3e8a <close>
    1eca:	83 c4 10             	add    $0x10,%esp
    1ecd:	8d 76 00             	lea    0x0(%esi),%esi

  for(i = 0; i < 500; i++){
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    1ed0:	89 d8                	mov    %ebx,%eax
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    if(link("bd", name) != 0){
    1ed2:	83 ec 08             	sub    $0x8,%esp
    exit(0);
  }
  close(fd);

  for(i = 0; i < 500; i++){
    name[0] = 'x';
    1ed5:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    name[1] = '0' + (i / 64);
    1ed9:	c1 f8 06             	sar    $0x6,%eax
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    if(link("bd", name) != 0){
    1edc:	56                   	push   %esi
    1edd:	68 cd 49 00 00       	push   $0x49cd
  }
  close(fd);

  for(i = 0; i < 500; i++){
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    1ee2:	83 c0 30             	add    $0x30,%eax
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    1ee5:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
  }
  close(fd);

  for(i = 0; i < 500; i++){
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    1ee9:	88 45 ef             	mov    %al,-0x11(%ebp)
    name[2] = '0' + (i % 64);
    1eec:	89 d8                	mov    %ebx,%eax
    1eee:	83 e0 3f             	and    $0x3f,%eax
    1ef1:	83 c0 30             	add    $0x30,%eax
    1ef4:	88 45 f0             	mov    %al,-0x10(%ebp)
    name[3] = '\0';
    if(link("bd", name) != 0){
    1ef7:	e8 c6 1f 00 00       	call   3ec2 <link>
    1efc:	83 c4 10             	add    $0x10,%esp
    1eff:	85 c0                	test   %eax,%eax
    1f01:	75 6f                	jne    1f72 <bigdir+0xf2>
    printf(1, "bigdir create failed\n");
    exit(0);
  }
  close(fd);

  for(i = 0; i < 500; i++){
    1f03:	83 c3 01             	add    $0x1,%ebx
    1f06:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1f0c:	75 c2                	jne    1ed0 <bigdir+0x50>
      printf(1, "bigdir link failed\n");
      exit(0);
    }
  }

  unlink("bd");
    1f0e:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 500; i++){
    1f11:	31 db                	xor    %ebx,%ebx
      printf(1, "bigdir link failed\n");
      exit(0);
    }
  }

  unlink("bd");
    1f13:	68 cd 49 00 00       	push   $0x49cd
    1f18:	e8 95 1f 00 00       	call   3eb2 <unlink>
    1f1d:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 500; i++){
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    1f20:	89 d8                	mov    %ebx,%eax
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    if(unlink(name) != 0){
    1f22:	83 ec 0c             	sub    $0xc,%esp
    }
  }

  unlink("bd");
  for(i = 0; i < 500; i++){
    name[0] = 'x';
    1f25:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    name[1] = '0' + (i / 64);
    1f29:	c1 f8 06             	sar    $0x6,%eax
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    if(unlink(name) != 0){
    1f2c:	56                   	push   %esi
  unlink("bd");
  for(i = 0; i < 500; i++){
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    1f2d:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
  }

  unlink("bd");
  for(i = 0; i < 500; i++){
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    1f31:	83 c0 30             	add    $0x30,%eax
    1f34:	88 45 ef             	mov    %al,-0x11(%ebp)
    name[2] = '0' + (i % 64);
    1f37:	89 d8                	mov    %ebx,%eax
    1f39:	83 e0 3f             	and    $0x3f,%eax
    1f3c:	83 c0 30             	add    $0x30,%eax
    1f3f:	88 45 f0             	mov    %al,-0x10(%ebp)
    name[3] = '\0';
    if(unlink(name) != 0){
    1f42:	e8 6b 1f 00 00       	call   3eb2 <unlink>
    1f47:	83 c4 10             	add    $0x10,%esp
    1f4a:	85 c0                	test   %eax,%eax
    1f4c:	75 3f                	jne    1f8d <bigdir+0x10d>
      exit(0);
    }
  }

  unlink("bd");
  for(i = 0; i < 500; i++){
    1f4e:	83 c3 01             	add    $0x1,%ebx
    1f51:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1f57:	75 c7                	jne    1f20 <bigdir+0xa0>
      printf(1, "bigdir unlink failed");
      exit(0);
    }
  }

  printf(1, "bigdir ok\n");
    1f59:	83 ec 08             	sub    $0x8,%esp
    1f5c:	68 0f 4a 00 00       	push   $0x4a0f
    1f61:	6a 01                	push   $0x1
    1f63:	e8 48 20 00 00       	call   3fb0 <printf>
}
    1f68:	83 c4 10             	add    $0x10,%esp
    1f6b:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1f6e:	5b                   	pop    %ebx
    1f6f:	5e                   	pop    %esi
    1f70:	5d                   	pop    %ebp
    1f71:	c3                   	ret    
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    if(link("bd", name) != 0){
      printf(1, "bigdir link failed\n");
    1f72:	83 ec 08             	sub    $0x8,%esp
    1f75:	68 e6 49 00 00       	push   $0x49e6
    1f7a:	6a 01                	push   $0x1
    1f7c:	e8 2f 20 00 00       	call   3fb0 <printf>
      exit(0);
    1f81:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1f88:	e8 d5 1e 00 00       	call   3e62 <exit>
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    if(unlink(name) != 0){
      printf(1, "bigdir unlink failed");
    1f8d:	83 ec 08             	sub    $0x8,%esp
    1f90:	68 fa 49 00 00       	push   $0x49fa
    1f95:	6a 01                	push   $0x1
    1f97:	e8 14 20 00 00       	call   3fb0 <printf>
      exit(0);
    1f9c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1fa3:	e8 ba 1e 00 00       	call   3e62 <exit>
  printf(1, "bigdir test\n");
  unlink("bd");

  fd = open("bd", O_CREATE);
  if(fd < 0){
    printf(1, "bigdir create failed\n");
    1fa8:	83 ec 08             	sub    $0x8,%esp
    1fab:	68 d0 49 00 00       	push   $0x49d0
    1fb0:	6a 01                	push   $0x1
    1fb2:	e8 f9 1f 00 00       	call   3fb0 <printf>
    exit(0);
    1fb7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1fbe:	e8 9f 1e 00 00       	call   3e62 <exit>
    1fc3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1fc9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001fd0 <subdir>:
  printf(1, "bigdir ok\n");
}

void
subdir(void)
{
    1fd0:	55                   	push   %ebp
    1fd1:	89 e5                	mov    %esp,%ebp
    1fd3:	53                   	push   %ebx
    1fd4:	83 ec 0c             	sub    $0xc,%esp
  int fd, cc;

  printf(1, "subdir test\n");
    1fd7:	68 1a 4a 00 00       	push   $0x4a1a
    1fdc:	6a 01                	push   $0x1
    1fde:	e8 cd 1f 00 00       	call   3fb0 <printf>

  unlink("ff");
    1fe3:	c7 04 24 a3 4a 00 00 	movl   $0x4aa3,(%esp)
    1fea:	e8 c3 1e 00 00       	call   3eb2 <unlink>
  if(mkdir("dd") != 0){
    1fef:	c7 04 24 40 4b 00 00 	movl   $0x4b40,(%esp)
    1ff6:	e8 cf 1e 00 00       	call   3eca <mkdir>
    1ffb:	83 c4 10             	add    $0x10,%esp
    1ffe:	85 c0                	test   %eax,%eax
    2000:	0f 85 4d 06 00 00    	jne    2653 <subdir+0x683>
    printf(1, "subdir mkdir dd failed\n");
    exit(0);
  }

  fd = open("dd/ff", O_CREATE | O_RDWR);
    2006:	83 ec 08             	sub    $0x8,%esp
    2009:	68 02 02 00 00       	push   $0x202
    200e:	68 79 4a 00 00       	push   $0x4a79
    2013:	e8 8a 1e 00 00       	call   3ea2 <open>
  if(fd < 0){
    2018:	83 c4 10             	add    $0x10,%esp
    201b:	85 c0                	test   %eax,%eax
  if(mkdir("dd") != 0){
    printf(1, "subdir mkdir dd failed\n");
    exit(0);
  }

  fd = open("dd/ff", O_CREATE | O_RDWR);
    201d:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    201f:	0f 88 14 06 00 00    	js     2639 <subdir+0x669>
    printf(1, "create dd/ff failed\n");
    exit(0);
  }
  write(fd, "ff", 2);
    2025:	83 ec 04             	sub    $0x4,%esp
    2028:	6a 02                	push   $0x2
    202a:	68 a3 4a 00 00       	push   $0x4aa3
    202f:	50                   	push   %eax
    2030:	e8 4d 1e 00 00       	call   3e82 <write>
  close(fd);
    2035:	89 1c 24             	mov    %ebx,(%esp)
    2038:	e8 4d 1e 00 00       	call   3e8a <close>

  if(unlink("dd") >= 0){
    203d:	c7 04 24 40 4b 00 00 	movl   $0x4b40,(%esp)
    2044:	e8 69 1e 00 00       	call   3eb2 <unlink>
    2049:	83 c4 10             	add    $0x10,%esp
    204c:	85 c0                	test   %eax,%eax
    204e:	0f 89 cb 05 00 00    	jns    261f <subdir+0x64f>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    exit(0);
  }

  if(mkdir("/dd/dd") != 0){
    2054:	83 ec 0c             	sub    $0xc,%esp
    2057:	68 54 4a 00 00       	push   $0x4a54
    205c:	e8 69 1e 00 00       	call   3eca <mkdir>
    2061:	83 c4 10             	add    $0x10,%esp
    2064:	85 c0                	test   %eax,%eax
    2066:	0f 85 99 05 00 00    	jne    2605 <subdir+0x635>
    printf(1, "subdir mkdir dd/dd failed\n");
    exit(0);
  }

  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    206c:	83 ec 08             	sub    $0x8,%esp
    206f:	68 02 02 00 00       	push   $0x202
    2074:	68 76 4a 00 00       	push   $0x4a76
    2079:	e8 24 1e 00 00       	call   3ea2 <open>
  if(fd < 0){
    207e:	83 c4 10             	add    $0x10,%esp
    2081:	85 c0                	test   %eax,%eax
  if(mkdir("/dd/dd") != 0){
    printf(1, "subdir mkdir dd/dd failed\n");
    exit(0);
  }

  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    2083:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2085:	0f 88 5c 04 00 00    	js     24e7 <subdir+0x517>
    printf(1, "create dd/dd/ff failed\n");
    exit(0);
  }
  write(fd, "FF", 2);
    208b:	83 ec 04             	sub    $0x4,%esp
    208e:	6a 02                	push   $0x2
    2090:	68 97 4a 00 00       	push   $0x4a97
    2095:	50                   	push   %eax
    2096:	e8 e7 1d 00 00       	call   3e82 <write>
  close(fd);
    209b:	89 1c 24             	mov    %ebx,(%esp)
    209e:	e8 e7 1d 00 00       	call   3e8a <close>

  fd = open("dd/dd/../ff", 0);
    20a3:	58                   	pop    %eax
    20a4:	5a                   	pop    %edx
    20a5:	6a 00                	push   $0x0
    20a7:	68 9a 4a 00 00       	push   $0x4a9a
    20ac:	e8 f1 1d 00 00       	call   3ea2 <open>
  if(fd < 0){
    20b1:	83 c4 10             	add    $0x10,%esp
    20b4:	85 c0                	test   %eax,%eax
    exit(0);
  }
  write(fd, "FF", 2);
  close(fd);

  fd = open("dd/dd/../ff", 0);
    20b6:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    20b8:	0f 88 0f 04 00 00    	js     24cd <subdir+0x4fd>
    printf(1, "open dd/dd/../ff failed\n");
    exit(0);
  }
  cc = read(fd, buf, sizeof(buf));
    20be:	83 ec 04             	sub    $0x4,%esp
    20c1:	68 00 20 00 00       	push   $0x2000
    20c6:	68 40 8b 00 00       	push   $0x8b40
    20cb:	50                   	push   %eax
    20cc:	e8 a9 1d 00 00       	call   3e7a <read>
  if(cc != 2 || buf[0] != 'f'){
    20d1:	83 c4 10             	add    $0x10,%esp
    20d4:	83 f8 02             	cmp    $0x2,%eax
    20d7:	0f 85 3a 03 00 00    	jne    2417 <subdir+0x447>
    20dd:	80 3d 40 8b 00 00 66 	cmpb   $0x66,0x8b40
    20e4:	0f 85 2d 03 00 00    	jne    2417 <subdir+0x447>
    printf(1, "dd/dd/../ff wrong content\n");
    exit(0);
  }
  close(fd);
    20ea:	83 ec 0c             	sub    $0xc,%esp
    20ed:	53                   	push   %ebx
    20ee:	e8 97 1d 00 00       	call   3e8a <close>

  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    20f3:	5b                   	pop    %ebx
    20f4:	58                   	pop    %eax
    20f5:	68 da 4a 00 00       	push   $0x4ada
    20fa:	68 76 4a 00 00       	push   $0x4a76
    20ff:	e8 be 1d 00 00       	call   3ec2 <link>
    2104:	83 c4 10             	add    $0x10,%esp
    2107:	85 c0                	test   %eax,%eax
    2109:	0f 85 0c 04 00 00    	jne    251b <subdir+0x54b>
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    exit(0);
  }

  if(unlink("dd/dd/ff") != 0){
    210f:	83 ec 0c             	sub    $0xc,%esp
    2112:	68 76 4a 00 00       	push   $0x4a76
    2117:	e8 96 1d 00 00       	call   3eb2 <unlink>
    211c:	83 c4 10             	add    $0x10,%esp
    211f:	85 c0                	test   %eax,%eax
    2121:	0f 85 24 03 00 00    	jne    244b <subdir+0x47b>
    printf(1, "unlink dd/dd/ff failed\n");
    exit(0);
  }
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    2127:	83 ec 08             	sub    $0x8,%esp
    212a:	6a 00                	push   $0x0
    212c:	68 76 4a 00 00       	push   $0x4a76
    2131:	e8 6c 1d 00 00       	call   3ea2 <open>
    2136:	83 c4 10             	add    $0x10,%esp
    2139:	85 c0                	test   %eax,%eax
    213b:	0f 89 aa 04 00 00    	jns    25eb <subdir+0x61b>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    exit(0);
  }

  if(chdir("dd") != 0){
    2141:	83 ec 0c             	sub    $0xc,%esp
    2144:	68 40 4b 00 00       	push   $0x4b40
    2149:	e8 84 1d 00 00       	call   3ed2 <chdir>
    214e:	83 c4 10             	add    $0x10,%esp
    2151:	85 c0                	test   %eax,%eax
    2153:	0f 85 78 04 00 00    	jne    25d1 <subdir+0x601>
    printf(1, "chdir dd failed\n");
    exit(0);
  }
  if(chdir("dd/../../dd") != 0){
    2159:	83 ec 0c             	sub    $0xc,%esp
    215c:	68 0e 4b 00 00       	push   $0x4b0e
    2161:	e8 6c 1d 00 00       	call   3ed2 <chdir>
    2166:	83 c4 10             	add    $0x10,%esp
    2169:	85 c0                	test   %eax,%eax
    216b:	0f 85 c0 02 00 00    	jne    2431 <subdir+0x461>
    printf(1, "chdir dd/../../dd failed\n");
    exit(0);
  }
  if(chdir("dd/../../../dd") != 0){
    2171:	83 ec 0c             	sub    $0xc,%esp
    2174:	68 34 4b 00 00       	push   $0x4b34
    2179:	e8 54 1d 00 00       	call   3ed2 <chdir>
    217e:	83 c4 10             	add    $0x10,%esp
    2181:	85 c0                	test   %eax,%eax
    2183:	0f 85 a8 02 00 00    	jne    2431 <subdir+0x461>
    printf(1, "chdir dd/../../dd failed\n");
    exit(0);
  }
  if(chdir("./..") != 0){
    2189:	83 ec 0c             	sub    $0xc,%esp
    218c:	68 43 4b 00 00       	push   $0x4b43
    2191:	e8 3c 1d 00 00       	call   3ed2 <chdir>
    2196:	83 c4 10             	add    $0x10,%esp
    2199:	85 c0                	test   %eax,%eax
    219b:	0f 85 60 03 00 00    	jne    2501 <subdir+0x531>
    printf(1, "chdir ./.. failed\n");
    exit(0);
  }

  fd = open("dd/dd/ffff", 0);
    21a1:	83 ec 08             	sub    $0x8,%esp
    21a4:	6a 00                	push   $0x0
    21a6:	68 da 4a 00 00       	push   $0x4ada
    21ab:	e8 f2 1c 00 00       	call   3ea2 <open>
  if(fd < 0){
    21b0:	83 c4 10             	add    $0x10,%esp
    21b3:	85 c0                	test   %eax,%eax
  if(chdir("./..") != 0){
    printf(1, "chdir ./.. failed\n");
    exit(0);
  }

  fd = open("dd/dd/ffff", 0);
    21b5:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    21b7:	0f 88 ce 05 00 00    	js     278b <subdir+0x7bb>
    printf(1, "open dd/dd/ffff failed\n");
    exit(0);
  }
  if(read(fd, buf, sizeof(buf)) != 2){
    21bd:	83 ec 04             	sub    $0x4,%esp
    21c0:	68 00 20 00 00       	push   $0x2000
    21c5:	68 40 8b 00 00       	push   $0x8b40
    21ca:	50                   	push   %eax
    21cb:	e8 aa 1c 00 00       	call   3e7a <read>
    21d0:	83 c4 10             	add    $0x10,%esp
    21d3:	83 f8 02             	cmp    $0x2,%eax
    21d6:	0f 85 95 05 00 00    	jne    2771 <subdir+0x7a1>
    printf(1, "read dd/dd/ffff wrong len\n");
    exit(0);
  }
  close(fd);
    21dc:	83 ec 0c             	sub    $0xc,%esp
    21df:	53                   	push   %ebx
    21e0:	e8 a5 1c 00 00       	call   3e8a <close>

  if(open("dd/dd/ff", O_RDONLY) >= 0){
    21e5:	59                   	pop    %ecx
    21e6:	5b                   	pop    %ebx
    21e7:	6a 00                	push   $0x0
    21e9:	68 76 4a 00 00       	push   $0x4a76
    21ee:	e8 af 1c 00 00       	call   3ea2 <open>
    21f3:	83 c4 10             	add    $0x10,%esp
    21f6:	85 c0                	test   %eax,%eax
    21f8:	0f 89 81 02 00 00    	jns    247f <subdir+0x4af>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    exit(0);
  }

  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    21fe:	83 ec 08             	sub    $0x8,%esp
    2201:	68 02 02 00 00       	push   $0x202
    2206:	68 8e 4b 00 00       	push   $0x4b8e
    220b:	e8 92 1c 00 00       	call   3ea2 <open>
    2210:	83 c4 10             	add    $0x10,%esp
    2213:	85 c0                	test   %eax,%eax
    2215:	0f 89 4a 02 00 00    	jns    2465 <subdir+0x495>
    printf(1, "create dd/ff/ff succeeded!\n");
    exit(0);
  }
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    221b:	83 ec 08             	sub    $0x8,%esp
    221e:	68 02 02 00 00       	push   $0x202
    2223:	68 b3 4b 00 00       	push   $0x4bb3
    2228:	e8 75 1c 00 00       	call   3ea2 <open>
    222d:	83 c4 10             	add    $0x10,%esp
    2230:	85 c0                	test   %eax,%eax
    2232:	0f 89 7f 03 00 00    	jns    25b7 <subdir+0x5e7>
    printf(1, "create dd/xx/ff succeeded!\n");
    exit(0);
  }
  if(open("dd", O_CREATE) >= 0){
    2238:	83 ec 08             	sub    $0x8,%esp
    223b:	68 00 02 00 00       	push   $0x200
    2240:	68 40 4b 00 00       	push   $0x4b40
    2245:	e8 58 1c 00 00       	call   3ea2 <open>
    224a:	83 c4 10             	add    $0x10,%esp
    224d:	85 c0                	test   %eax,%eax
    224f:	0f 89 48 03 00 00    	jns    259d <subdir+0x5cd>
    printf(1, "create dd succeeded!\n");
    exit(0);
  }
  if(open("dd", O_RDWR) >= 0){
    2255:	83 ec 08             	sub    $0x8,%esp
    2258:	6a 02                	push   $0x2
    225a:	68 40 4b 00 00       	push   $0x4b40
    225f:	e8 3e 1c 00 00       	call   3ea2 <open>
    2264:	83 c4 10             	add    $0x10,%esp
    2267:	85 c0                	test   %eax,%eax
    2269:	0f 89 14 03 00 00    	jns    2583 <subdir+0x5b3>
    printf(1, "open dd rdwr succeeded!\n");
    exit(0);
  }
  if(open("dd", O_WRONLY) >= 0){
    226f:	83 ec 08             	sub    $0x8,%esp
    2272:	6a 01                	push   $0x1
    2274:	68 40 4b 00 00       	push   $0x4b40
    2279:	e8 24 1c 00 00       	call   3ea2 <open>
    227e:	83 c4 10             	add    $0x10,%esp
    2281:	85 c0                	test   %eax,%eax
    2283:	0f 89 e0 02 00 00    	jns    2569 <subdir+0x599>
    printf(1, "open dd wronly succeeded!\n");
    exit(0);
  }
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    2289:	83 ec 08             	sub    $0x8,%esp
    228c:	68 22 4c 00 00       	push   $0x4c22
    2291:	68 8e 4b 00 00       	push   $0x4b8e
    2296:	e8 27 1c 00 00       	call   3ec2 <link>
    229b:	83 c4 10             	add    $0x10,%esp
    229e:	85 c0                	test   %eax,%eax
    22a0:	0f 84 a9 02 00 00    	je     254f <subdir+0x57f>
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    exit(0);
  }
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    22a6:	83 ec 08             	sub    $0x8,%esp
    22a9:	68 22 4c 00 00       	push   $0x4c22
    22ae:	68 b3 4b 00 00       	push   $0x4bb3
    22b3:	e8 0a 1c 00 00       	call   3ec2 <link>
    22b8:	83 c4 10             	add    $0x10,%esp
    22bb:	85 c0                	test   %eax,%eax
    22bd:	0f 84 72 02 00 00    	je     2535 <subdir+0x565>
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    exit(0);
  }
  if(link("dd/ff", "dd/dd/ffff") == 0){
    22c3:	83 ec 08             	sub    $0x8,%esp
    22c6:	68 da 4a 00 00       	push   $0x4ada
    22cb:	68 79 4a 00 00       	push   $0x4a79
    22d0:	e8 ed 1b 00 00       	call   3ec2 <link>
    22d5:	83 c4 10             	add    $0x10,%esp
    22d8:	85 c0                	test   %eax,%eax
    22da:	0f 84 d3 01 00 00    	je     24b3 <subdir+0x4e3>
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    exit(0);
  }
  if(mkdir("dd/ff/ff") == 0){
    22e0:	83 ec 0c             	sub    $0xc,%esp
    22e3:	68 8e 4b 00 00       	push   $0x4b8e
    22e8:	e8 dd 1b 00 00       	call   3eca <mkdir>
    22ed:	83 c4 10             	add    $0x10,%esp
    22f0:	85 c0                	test   %eax,%eax
    22f2:	0f 84 a1 01 00 00    	je     2499 <subdir+0x4c9>
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    exit(0);
  }
  if(mkdir("dd/xx/ff") == 0){
    22f8:	83 ec 0c             	sub    $0xc,%esp
    22fb:	68 b3 4b 00 00       	push   $0x4bb3
    2300:	e8 c5 1b 00 00       	call   3eca <mkdir>
    2305:	83 c4 10             	add    $0x10,%esp
    2308:	85 c0                	test   %eax,%eax
    230a:	0f 84 47 04 00 00    	je     2757 <subdir+0x787>
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    exit(0);
  }
  if(mkdir("dd/dd/ffff") == 0){
    2310:	83 ec 0c             	sub    $0xc,%esp
    2313:	68 da 4a 00 00       	push   $0x4ada
    2318:	e8 ad 1b 00 00       	call   3eca <mkdir>
    231d:	83 c4 10             	add    $0x10,%esp
    2320:	85 c0                	test   %eax,%eax
    2322:	0f 84 15 04 00 00    	je     273d <subdir+0x76d>
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    exit(0);
  }
  if(unlink("dd/xx/ff") == 0){
    2328:	83 ec 0c             	sub    $0xc,%esp
    232b:	68 b3 4b 00 00       	push   $0x4bb3
    2330:	e8 7d 1b 00 00       	call   3eb2 <unlink>
    2335:	83 c4 10             	add    $0x10,%esp
    2338:	85 c0                	test   %eax,%eax
    233a:	0f 84 e3 03 00 00    	je     2723 <subdir+0x753>
    printf(1, "unlink dd/xx/ff succeeded!\n");
    exit(0);
  }
  if(unlink("dd/ff/ff") == 0){
    2340:	83 ec 0c             	sub    $0xc,%esp
    2343:	68 8e 4b 00 00       	push   $0x4b8e
    2348:	e8 65 1b 00 00       	call   3eb2 <unlink>
    234d:	83 c4 10             	add    $0x10,%esp
    2350:	85 c0                	test   %eax,%eax
    2352:	0f 84 b1 03 00 00    	je     2709 <subdir+0x739>
    printf(1, "unlink dd/ff/ff succeeded!\n");
    exit(0);
  }
  if(chdir("dd/ff") == 0){
    2358:	83 ec 0c             	sub    $0xc,%esp
    235b:	68 79 4a 00 00       	push   $0x4a79
    2360:	e8 6d 1b 00 00       	call   3ed2 <chdir>
    2365:	83 c4 10             	add    $0x10,%esp
    2368:	85 c0                	test   %eax,%eax
    236a:	0f 84 7f 03 00 00    	je     26ef <subdir+0x71f>
    printf(1, "chdir dd/ff succeeded!\n");
    exit(0);
  }
  if(chdir("dd/xx") == 0){
    2370:	83 ec 0c             	sub    $0xc,%esp
    2373:	68 25 4c 00 00       	push   $0x4c25
    2378:	e8 55 1b 00 00       	call   3ed2 <chdir>
    237d:	83 c4 10             	add    $0x10,%esp
    2380:	85 c0                	test   %eax,%eax
    2382:	0f 84 4d 03 00 00    	je     26d5 <subdir+0x705>
    printf(1, "chdir dd/xx succeeded!\n");
    exit(0);
  }

  if(unlink("dd/dd/ffff") != 0){
    2388:	83 ec 0c             	sub    $0xc,%esp
    238b:	68 da 4a 00 00       	push   $0x4ada
    2390:	e8 1d 1b 00 00       	call   3eb2 <unlink>
    2395:	83 c4 10             	add    $0x10,%esp
    2398:	85 c0                	test   %eax,%eax
    239a:	0f 85 ab 00 00 00    	jne    244b <subdir+0x47b>
    printf(1, "unlink dd/dd/ff failed\n");
    exit(0);
  }
  if(unlink("dd/ff") != 0){
    23a0:	83 ec 0c             	sub    $0xc,%esp
    23a3:	68 79 4a 00 00       	push   $0x4a79
    23a8:	e8 05 1b 00 00       	call   3eb2 <unlink>
    23ad:	83 c4 10             	add    $0x10,%esp
    23b0:	85 c0                	test   %eax,%eax
    23b2:	0f 85 03 03 00 00    	jne    26bb <subdir+0x6eb>
    printf(1, "unlink dd/ff failed\n");
    exit(0);
  }
  if(unlink("dd") == 0){
    23b8:	83 ec 0c             	sub    $0xc,%esp
    23bb:	68 40 4b 00 00       	push   $0x4b40
    23c0:	e8 ed 1a 00 00       	call   3eb2 <unlink>
    23c5:	83 c4 10             	add    $0x10,%esp
    23c8:	85 c0                	test   %eax,%eax
    23ca:	0f 84 d1 02 00 00    	je     26a1 <subdir+0x6d1>
    printf(1, "unlink non-empty dd succeeded!\n");
    exit(0);
  }
  if(unlink("dd/dd") < 0){
    23d0:	83 ec 0c             	sub    $0xc,%esp
    23d3:	68 55 4a 00 00       	push   $0x4a55
    23d8:	e8 d5 1a 00 00       	call   3eb2 <unlink>
    23dd:	83 c4 10             	add    $0x10,%esp
    23e0:	85 c0                	test   %eax,%eax
    23e2:	0f 88 9f 02 00 00    	js     2687 <subdir+0x6b7>
    printf(1, "unlink dd/dd failed\n");
    exit(0);
  }
  if(unlink("dd") < 0){
    23e8:	83 ec 0c             	sub    $0xc,%esp
    23eb:	68 40 4b 00 00       	push   $0x4b40
    23f0:	e8 bd 1a 00 00       	call   3eb2 <unlink>
    23f5:	83 c4 10             	add    $0x10,%esp
    23f8:	85 c0                	test   %eax,%eax
    23fa:	0f 88 6d 02 00 00    	js     266d <subdir+0x69d>
    printf(1, "unlink dd failed\n");
    exit(0);
  }

  printf(1, "subdir ok\n");
    2400:	83 ec 08             	sub    $0x8,%esp
    2403:	68 22 4d 00 00       	push   $0x4d22
    2408:	6a 01                	push   $0x1
    240a:	e8 a1 1b 00 00       	call   3fb0 <printf>
}
    240f:	83 c4 10             	add    $0x10,%esp
    2412:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2415:	c9                   	leave  
    2416:	c3                   	ret    
    printf(1, "open dd/dd/../ff failed\n");
    exit(0);
  }
  cc = read(fd, buf, sizeof(buf));
  if(cc != 2 || buf[0] != 'f'){
    printf(1, "dd/dd/../ff wrong content\n");
    2417:	50                   	push   %eax
    2418:	50                   	push   %eax
    2419:	68 bf 4a 00 00       	push   $0x4abf
    241e:	6a 01                	push   $0x1
    2420:	e8 8b 1b 00 00       	call   3fb0 <printf>
    exit(0);
    2425:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    242c:	e8 31 1a 00 00       	call   3e62 <exit>
  if(chdir("dd") != 0){
    printf(1, "chdir dd failed\n");
    exit(0);
  }
  if(chdir("dd/../../dd") != 0){
    printf(1, "chdir dd/../../dd failed\n");
    2431:	50                   	push   %eax
    2432:	50                   	push   %eax
    2433:	68 1a 4b 00 00       	push   $0x4b1a
    2438:	6a 01                	push   $0x1
    243a:	e8 71 1b 00 00       	call   3fb0 <printf>
    exit(0);
    243f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2446:	e8 17 1a 00 00       	call   3e62 <exit>
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    exit(0);
  }

  if(unlink("dd/dd/ff") != 0){
    printf(1, "unlink dd/dd/ff failed\n");
    244b:	52                   	push   %edx
    244c:	52                   	push   %edx
    244d:	68 e5 4a 00 00       	push   $0x4ae5
    2452:	6a 01                	push   $0x1
    2454:	e8 57 1b 00 00       	call   3fb0 <printf>
    exit(0);
    2459:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2460:	e8 fd 19 00 00       	call   3e62 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    exit(0);
  }

  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    printf(1, "create dd/ff/ff succeeded!\n");
    2465:	50                   	push   %eax
    2466:	50                   	push   %eax
    2467:	68 97 4b 00 00       	push   $0x4b97
    246c:	6a 01                	push   $0x1
    246e:	e8 3d 1b 00 00       	call   3fb0 <printf>
    exit(0);
    2473:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    247a:	e8 e3 19 00 00       	call   3e62 <exit>
    exit(0);
  }
  close(fd);

  if(open("dd/dd/ff", O_RDONLY) >= 0){
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    247f:	52                   	push   %edx
    2480:	52                   	push   %edx
    2481:	68 7c 55 00 00       	push   $0x557c
    2486:	6a 01                	push   $0x1
    2488:	e8 23 1b 00 00       	call   3fb0 <printf>
    exit(0);
    248d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2494:	e8 c9 19 00 00       	call   3e62 <exit>
  if(link("dd/ff", "dd/dd/ffff") == 0){
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    exit(0);
  }
  if(mkdir("dd/ff/ff") == 0){
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    2499:	52                   	push   %edx
    249a:	52                   	push   %edx
    249b:	68 2b 4c 00 00       	push   $0x4c2b
    24a0:	6a 01                	push   $0x1
    24a2:	e8 09 1b 00 00       	call   3fb0 <printf>
    exit(0);
    24a7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    24ae:	e8 af 19 00 00       	call   3e62 <exit>
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    exit(0);
  }
  if(link("dd/ff", "dd/dd/ffff") == 0){
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    24b3:	51                   	push   %ecx
    24b4:	51                   	push   %ecx
    24b5:	68 ec 55 00 00       	push   $0x55ec
    24ba:	6a 01                	push   $0x1
    24bc:	e8 ef 1a 00 00       	call   3fb0 <printf>
    exit(0);
    24c1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    24c8:	e8 95 19 00 00       	call   3e62 <exit>
  write(fd, "FF", 2);
  close(fd);

  fd = open("dd/dd/../ff", 0);
  if(fd < 0){
    printf(1, "open dd/dd/../ff failed\n");
    24cd:	50                   	push   %eax
    24ce:	50                   	push   %eax
    24cf:	68 a6 4a 00 00       	push   $0x4aa6
    24d4:	6a 01                	push   $0x1
    24d6:	e8 d5 1a 00 00       	call   3fb0 <printf>
    exit(0);
    24db:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    24e2:	e8 7b 19 00 00       	call   3e62 <exit>
    exit(0);
  }

  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
  if(fd < 0){
    printf(1, "create dd/dd/ff failed\n");
    24e7:	51                   	push   %ecx
    24e8:	51                   	push   %ecx
    24e9:	68 7f 4a 00 00       	push   $0x4a7f
    24ee:	6a 01                	push   $0x1
    24f0:	e8 bb 1a 00 00       	call   3fb0 <printf>
    exit(0);
    24f5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    24fc:	e8 61 19 00 00       	call   3e62 <exit>
  if(chdir("dd/../../../dd") != 0){
    printf(1, "chdir dd/../../dd failed\n");
    exit(0);
  }
  if(chdir("./..") != 0){
    printf(1, "chdir ./.. failed\n");
    2501:	50                   	push   %eax
    2502:	50                   	push   %eax
    2503:	68 48 4b 00 00       	push   $0x4b48
    2508:	6a 01                	push   $0x1
    250a:	e8 a1 1a 00 00       	call   3fb0 <printf>
    exit(0);
    250f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2516:	e8 47 19 00 00       	call   3e62 <exit>
    exit(0);
  }
  close(fd);

  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    251b:	51                   	push   %ecx
    251c:	51                   	push   %ecx
    251d:	68 34 55 00 00       	push   $0x5534
    2522:	6a 01                	push   $0x1
    2524:	e8 87 1a 00 00       	call   3fb0 <printf>
    exit(0);
    2529:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2530:	e8 2d 19 00 00       	call   3e62 <exit>
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    exit(0);
  }
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    2535:	53                   	push   %ebx
    2536:	53                   	push   %ebx
    2537:	68 c8 55 00 00       	push   $0x55c8
    253c:	6a 01                	push   $0x1
    253e:	e8 6d 1a 00 00       	call   3fb0 <printf>
    exit(0);
    2543:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    254a:	e8 13 19 00 00       	call   3e62 <exit>
  if(open("dd", O_WRONLY) >= 0){
    printf(1, "open dd wronly succeeded!\n");
    exit(0);
  }
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    254f:	50                   	push   %eax
    2550:	50                   	push   %eax
    2551:	68 a4 55 00 00       	push   $0x55a4
    2556:	6a 01                	push   $0x1
    2558:	e8 53 1a 00 00       	call   3fb0 <printf>
    exit(0);
    255d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2564:	e8 f9 18 00 00       	call   3e62 <exit>
  if(open("dd", O_RDWR) >= 0){
    printf(1, "open dd rdwr succeeded!\n");
    exit(0);
  }
  if(open("dd", O_WRONLY) >= 0){
    printf(1, "open dd wronly succeeded!\n");
    2569:	50                   	push   %eax
    256a:	50                   	push   %eax
    256b:	68 07 4c 00 00       	push   $0x4c07
    2570:	6a 01                	push   $0x1
    2572:	e8 39 1a 00 00       	call   3fb0 <printf>
    exit(0);
    2577:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    257e:	e8 df 18 00 00       	call   3e62 <exit>
  if(open("dd", O_CREATE) >= 0){
    printf(1, "create dd succeeded!\n");
    exit(0);
  }
  if(open("dd", O_RDWR) >= 0){
    printf(1, "open dd rdwr succeeded!\n");
    2583:	50                   	push   %eax
    2584:	50                   	push   %eax
    2585:	68 ee 4b 00 00       	push   $0x4bee
    258a:	6a 01                	push   $0x1
    258c:	e8 1f 1a 00 00       	call   3fb0 <printf>
    exit(0);
    2591:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2598:	e8 c5 18 00 00       	call   3e62 <exit>
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    printf(1, "create dd/xx/ff succeeded!\n");
    exit(0);
  }
  if(open("dd", O_CREATE) >= 0){
    printf(1, "create dd succeeded!\n");
    259d:	50                   	push   %eax
    259e:	50                   	push   %eax
    259f:	68 d8 4b 00 00       	push   $0x4bd8
    25a4:	6a 01                	push   $0x1
    25a6:	e8 05 1a 00 00       	call   3fb0 <printf>
    exit(0);
    25ab:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    25b2:	e8 ab 18 00 00       	call   3e62 <exit>
  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    printf(1, "create dd/ff/ff succeeded!\n");
    exit(0);
  }
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    printf(1, "create dd/xx/ff succeeded!\n");
    25b7:	50                   	push   %eax
    25b8:	50                   	push   %eax
    25b9:	68 bc 4b 00 00       	push   $0x4bbc
    25be:	6a 01                	push   $0x1
    25c0:	e8 eb 19 00 00       	call   3fb0 <printf>
    exit(0);
    25c5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    25cc:	e8 91 18 00 00       	call   3e62 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    exit(0);
  }

  if(chdir("dd") != 0){
    printf(1, "chdir dd failed\n");
    25d1:	50                   	push   %eax
    25d2:	50                   	push   %eax
    25d3:	68 fd 4a 00 00       	push   $0x4afd
    25d8:	6a 01                	push   $0x1
    25da:	e8 d1 19 00 00       	call   3fb0 <printf>
    exit(0);
    25df:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    25e6:	e8 77 18 00 00       	call   3e62 <exit>
  if(unlink("dd/dd/ff") != 0){
    printf(1, "unlink dd/dd/ff failed\n");
    exit(0);
  }
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    25eb:	50                   	push   %eax
    25ec:	50                   	push   %eax
    25ed:	68 58 55 00 00       	push   $0x5558
    25f2:	6a 01                	push   $0x1
    25f4:	e8 b7 19 00 00       	call   3fb0 <printf>
    exit(0);
    25f9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2600:	e8 5d 18 00 00       	call   3e62 <exit>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    exit(0);
  }

  if(mkdir("/dd/dd") != 0){
    printf(1, "subdir mkdir dd/dd failed\n");
    2605:	53                   	push   %ebx
    2606:	53                   	push   %ebx
    2607:	68 5b 4a 00 00       	push   $0x4a5b
    260c:	6a 01                	push   $0x1
    260e:	e8 9d 19 00 00       	call   3fb0 <printf>
    exit(0);
    2613:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    261a:	e8 43 18 00 00       	call   3e62 <exit>
  }
  write(fd, "ff", 2);
  close(fd);

  if(unlink("dd") >= 0){
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    261f:	50                   	push   %eax
    2620:	50                   	push   %eax
    2621:	68 0c 55 00 00       	push   $0x550c
    2626:	6a 01                	push   $0x1
    2628:	e8 83 19 00 00       	call   3fb0 <printf>
    exit(0);
    262d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2634:	e8 29 18 00 00       	call   3e62 <exit>
    exit(0);
  }

  fd = open("dd/ff", O_CREATE | O_RDWR);
  if(fd < 0){
    printf(1, "create dd/ff failed\n");
    2639:	50                   	push   %eax
    263a:	50                   	push   %eax
    263b:	68 3f 4a 00 00       	push   $0x4a3f
    2640:	6a 01                	push   $0x1
    2642:	e8 69 19 00 00       	call   3fb0 <printf>
    exit(0);
    2647:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    264e:	e8 0f 18 00 00       	call   3e62 <exit>

  printf(1, "subdir test\n");

  unlink("ff");
  if(mkdir("dd") != 0){
    printf(1, "subdir mkdir dd failed\n");
    2653:	50                   	push   %eax
    2654:	50                   	push   %eax
    2655:	68 27 4a 00 00       	push   $0x4a27
    265a:	6a 01                	push   $0x1
    265c:	e8 4f 19 00 00       	call   3fb0 <printf>
    exit(0);
    2661:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2668:	e8 f5 17 00 00       	call   3e62 <exit>
  if(unlink("dd/dd") < 0){
    printf(1, "unlink dd/dd failed\n");
    exit(0);
  }
  if(unlink("dd") < 0){
    printf(1, "unlink dd failed\n");
    266d:	50                   	push   %eax
    266e:	50                   	push   %eax
    266f:	68 10 4d 00 00       	push   $0x4d10
    2674:	6a 01                	push   $0x1
    2676:	e8 35 19 00 00       	call   3fb0 <printf>
    exit(0);
    267b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2682:	e8 db 17 00 00       	call   3e62 <exit>
  if(unlink("dd") == 0){
    printf(1, "unlink non-empty dd succeeded!\n");
    exit(0);
  }
  if(unlink("dd/dd") < 0){
    printf(1, "unlink dd/dd failed\n");
    2687:	52                   	push   %edx
    2688:	52                   	push   %edx
    2689:	68 fb 4c 00 00       	push   $0x4cfb
    268e:	6a 01                	push   $0x1
    2690:	e8 1b 19 00 00       	call   3fb0 <printf>
    exit(0);
    2695:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    269c:	e8 c1 17 00 00       	call   3e62 <exit>
  if(unlink("dd/ff") != 0){
    printf(1, "unlink dd/ff failed\n");
    exit(0);
  }
  if(unlink("dd") == 0){
    printf(1, "unlink non-empty dd succeeded!\n");
    26a1:	51                   	push   %ecx
    26a2:	51                   	push   %ecx
    26a3:	68 10 56 00 00       	push   $0x5610
    26a8:	6a 01                	push   $0x1
    26aa:	e8 01 19 00 00       	call   3fb0 <printf>
    exit(0);
    26af:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    26b6:	e8 a7 17 00 00       	call   3e62 <exit>
  if(unlink("dd/dd/ffff") != 0){
    printf(1, "unlink dd/dd/ff failed\n");
    exit(0);
  }
  if(unlink("dd/ff") != 0){
    printf(1, "unlink dd/ff failed\n");
    26bb:	53                   	push   %ebx
    26bc:	53                   	push   %ebx
    26bd:	68 e6 4c 00 00       	push   $0x4ce6
    26c2:	6a 01                	push   $0x1
    26c4:	e8 e7 18 00 00       	call   3fb0 <printf>
    exit(0);
    26c9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    26d0:	e8 8d 17 00 00       	call   3e62 <exit>
  if(chdir("dd/ff") == 0){
    printf(1, "chdir dd/ff succeeded!\n");
    exit(0);
  }
  if(chdir("dd/xx") == 0){
    printf(1, "chdir dd/xx succeeded!\n");
    26d5:	50                   	push   %eax
    26d6:	50                   	push   %eax
    26d7:	68 ce 4c 00 00       	push   $0x4cce
    26dc:	6a 01                	push   $0x1
    26de:	e8 cd 18 00 00       	call   3fb0 <printf>
    exit(0);
    26e3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    26ea:	e8 73 17 00 00       	call   3e62 <exit>
  if(unlink("dd/ff/ff") == 0){
    printf(1, "unlink dd/ff/ff succeeded!\n");
    exit(0);
  }
  if(chdir("dd/ff") == 0){
    printf(1, "chdir dd/ff succeeded!\n");
    26ef:	50                   	push   %eax
    26f0:	50                   	push   %eax
    26f1:	68 b6 4c 00 00       	push   $0x4cb6
    26f6:	6a 01                	push   $0x1
    26f8:	e8 b3 18 00 00       	call   3fb0 <printf>
    exit(0);
    26fd:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2704:	e8 59 17 00 00       	call   3e62 <exit>
  if(unlink("dd/xx/ff") == 0){
    printf(1, "unlink dd/xx/ff succeeded!\n");
    exit(0);
  }
  if(unlink("dd/ff/ff") == 0){
    printf(1, "unlink dd/ff/ff succeeded!\n");
    2709:	50                   	push   %eax
    270a:	50                   	push   %eax
    270b:	68 9a 4c 00 00       	push   $0x4c9a
    2710:	6a 01                	push   $0x1
    2712:	e8 99 18 00 00       	call   3fb0 <printf>
    exit(0);
    2717:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    271e:	e8 3f 17 00 00       	call   3e62 <exit>
  if(mkdir("dd/dd/ffff") == 0){
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    exit(0);
  }
  if(unlink("dd/xx/ff") == 0){
    printf(1, "unlink dd/xx/ff succeeded!\n");
    2723:	50                   	push   %eax
    2724:	50                   	push   %eax
    2725:	68 7e 4c 00 00       	push   $0x4c7e
    272a:	6a 01                	push   $0x1
    272c:	e8 7f 18 00 00       	call   3fb0 <printf>
    exit(0);
    2731:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2738:	e8 25 17 00 00       	call   3e62 <exit>
  if(mkdir("dd/xx/ff") == 0){
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    exit(0);
  }
  if(mkdir("dd/dd/ffff") == 0){
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    273d:	50                   	push   %eax
    273e:	50                   	push   %eax
    273f:	68 61 4c 00 00       	push   $0x4c61
    2744:	6a 01                	push   $0x1
    2746:	e8 65 18 00 00       	call   3fb0 <printf>
    exit(0);
    274b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2752:	e8 0b 17 00 00       	call   3e62 <exit>
  if(mkdir("dd/ff/ff") == 0){
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    exit(0);
  }
  if(mkdir("dd/xx/ff") == 0){
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    2757:	50                   	push   %eax
    2758:	50                   	push   %eax
    2759:	68 46 4c 00 00       	push   $0x4c46
    275e:	6a 01                	push   $0x1
    2760:	e8 4b 18 00 00       	call   3fb0 <printf>
    exit(0);
    2765:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    276c:	e8 f1 16 00 00       	call   3e62 <exit>
  if(fd < 0){
    printf(1, "open dd/dd/ffff failed\n");
    exit(0);
  }
  if(read(fd, buf, sizeof(buf)) != 2){
    printf(1, "read dd/dd/ffff wrong len\n");
    2771:	50                   	push   %eax
    2772:	50                   	push   %eax
    2773:	68 73 4b 00 00       	push   $0x4b73
    2778:	6a 01                	push   $0x1
    277a:	e8 31 18 00 00       	call   3fb0 <printf>
    exit(0);
    277f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2786:	e8 d7 16 00 00       	call   3e62 <exit>
    exit(0);
  }

  fd = open("dd/dd/ffff", 0);
  if(fd < 0){
    printf(1, "open dd/dd/ffff failed\n");
    278b:	50                   	push   %eax
    278c:	50                   	push   %eax
    278d:	68 5b 4b 00 00       	push   $0x4b5b
    2792:	6a 01                	push   $0x1
    2794:	e8 17 18 00 00       	call   3fb0 <printf>
    exit(0);
    2799:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    27a0:	e8 bd 16 00 00       	call   3e62 <exit>
    27a5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    27a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000027b0 <bigwrite>:
}

// test writes that are larger than the log.
void
bigwrite(void)
{
    27b0:	55                   	push   %ebp
    27b1:	89 e5                	mov    %esp,%ebp
    27b3:	56                   	push   %esi
    27b4:	53                   	push   %ebx
  int fd, sz;

  printf(1, "bigwrite test\n");

  unlink("bigwrite");
  for(sz = 499; sz < 12*512; sz += 471){
    27b5:	bb f3 01 00 00       	mov    $0x1f3,%ebx
void
bigwrite(void)
{
  int fd, sz;

  printf(1, "bigwrite test\n");
    27ba:	83 ec 08             	sub    $0x8,%esp
    27bd:	68 2d 4d 00 00       	push   $0x4d2d
    27c2:	6a 01                	push   $0x1
    27c4:	e8 e7 17 00 00       	call   3fb0 <printf>

  unlink("bigwrite");
    27c9:	c7 04 24 3c 4d 00 00 	movl   $0x4d3c,(%esp)
    27d0:	e8 dd 16 00 00       	call   3eb2 <unlink>
    27d5:	83 c4 10             	add    $0x10,%esp
    27d8:	90                   	nop
    27d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(sz = 499; sz < 12*512; sz += 471){
    fd = open("bigwrite", O_CREATE | O_RDWR);
    27e0:	83 ec 08             	sub    $0x8,%esp
    27e3:	68 02 02 00 00       	push   $0x202
    27e8:	68 3c 4d 00 00       	push   $0x4d3c
    27ed:	e8 b0 16 00 00       	call   3ea2 <open>
    if(fd < 0){
    27f2:	83 c4 10             	add    $0x10,%esp
    27f5:	85 c0                	test   %eax,%eax

  printf(1, "bigwrite test\n");

  unlink("bigwrite");
  for(sz = 499; sz < 12*512; sz += 471){
    fd = open("bigwrite", O_CREATE | O_RDWR);
    27f7:	89 c6                	mov    %eax,%esi
    if(fd < 0){
    27f9:	0f 88 85 00 00 00    	js     2884 <bigwrite+0xd4>
      printf(1, "cannot create bigwrite\n");
      exit(0);
    }
    int i;
    for(i = 0; i < 2; i++){
      int cc = write(fd, buf, sz);
    27ff:	83 ec 04             	sub    $0x4,%esp
    2802:	53                   	push   %ebx
    2803:	68 40 8b 00 00       	push   $0x8b40
    2808:	50                   	push   %eax
    2809:	e8 74 16 00 00       	call   3e82 <write>
      if(cc != sz){
    280e:	83 c4 10             	add    $0x10,%esp
    2811:	39 c3                	cmp    %eax,%ebx
    2813:	75 55                	jne    286a <bigwrite+0xba>
      printf(1, "cannot create bigwrite\n");
      exit(0);
    }
    int i;
    for(i = 0; i < 2; i++){
      int cc = write(fd, buf, sz);
    2815:	83 ec 04             	sub    $0x4,%esp
    2818:	53                   	push   %ebx
    2819:	68 40 8b 00 00       	push   $0x8b40
    281e:	56                   	push   %esi
    281f:	e8 5e 16 00 00       	call   3e82 <write>
      if(cc != sz){
    2824:	83 c4 10             	add    $0x10,%esp
    2827:	39 c3                	cmp    %eax,%ebx
    2829:	75 3f                	jne    286a <bigwrite+0xba>
        printf(1, "write(%d) ret %d\n", sz, cc);
        exit(0);
      }
    }
    close(fd);
    282b:	83 ec 0c             	sub    $0xc,%esp
  int fd, sz;

  printf(1, "bigwrite test\n");

  unlink("bigwrite");
  for(sz = 499; sz < 12*512; sz += 471){
    282e:	81 c3 d7 01 00 00    	add    $0x1d7,%ebx
      if(cc != sz){
        printf(1, "write(%d) ret %d\n", sz, cc);
        exit(0);
      }
    }
    close(fd);
    2834:	56                   	push   %esi
    2835:	e8 50 16 00 00       	call   3e8a <close>
    unlink("bigwrite");
    283a:	c7 04 24 3c 4d 00 00 	movl   $0x4d3c,(%esp)
    2841:	e8 6c 16 00 00       	call   3eb2 <unlink>
  int fd, sz;

  printf(1, "bigwrite test\n");

  unlink("bigwrite");
  for(sz = 499; sz < 12*512; sz += 471){
    2846:	83 c4 10             	add    $0x10,%esp
    2849:	81 fb 07 18 00 00    	cmp    $0x1807,%ebx
    284f:	75 8f                	jne    27e0 <bigwrite+0x30>
    }
    close(fd);
    unlink("bigwrite");
  }

  printf(1, "bigwrite ok\n");
    2851:	83 ec 08             	sub    $0x8,%esp
    2854:	68 6f 4d 00 00       	push   $0x4d6f
    2859:	6a 01                	push   $0x1
    285b:	e8 50 17 00 00       	call   3fb0 <printf>
}
    2860:	83 c4 10             	add    $0x10,%esp
    2863:	8d 65 f8             	lea    -0x8(%ebp),%esp
    2866:	5b                   	pop    %ebx
    2867:	5e                   	pop    %esi
    2868:	5d                   	pop    %ebp
    2869:	c3                   	ret    
    }
    int i;
    for(i = 0; i < 2; i++){
      int cc = write(fd, buf, sz);
      if(cc != sz){
        printf(1, "write(%d) ret %d\n", sz, cc);
    286a:	50                   	push   %eax
    286b:	53                   	push   %ebx
    286c:	68 5d 4d 00 00       	push   $0x4d5d
    2871:	6a 01                	push   $0x1
    2873:	e8 38 17 00 00       	call   3fb0 <printf>
        exit(0);
    2878:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    287f:	e8 de 15 00 00       	call   3e62 <exit>

  unlink("bigwrite");
  for(sz = 499; sz < 12*512; sz += 471){
    fd = open("bigwrite", O_CREATE | O_RDWR);
    if(fd < 0){
      printf(1, "cannot create bigwrite\n");
    2884:	83 ec 08             	sub    $0x8,%esp
    2887:	68 45 4d 00 00       	push   $0x4d45
    288c:	6a 01                	push   $0x1
    288e:	e8 1d 17 00 00       	call   3fb0 <printf>
      exit(0);
    2893:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    289a:	e8 c3 15 00 00       	call   3e62 <exit>
    289f:	90                   	nop

000028a0 <bigfile>:
  printf(1, "bigwrite ok\n");
}

void
bigfile(void)
{
    28a0:	55                   	push   %ebp
    28a1:	89 e5                	mov    %esp,%ebp
    28a3:	57                   	push   %edi
    28a4:	56                   	push   %esi
    28a5:	53                   	push   %ebx
    28a6:	83 ec 14             	sub    $0x14,%esp
  int fd, i, total, cc;

  printf(1, "bigfile test\n");
    28a9:	68 7c 4d 00 00       	push   $0x4d7c
    28ae:	6a 01                	push   $0x1
    28b0:	e8 fb 16 00 00       	call   3fb0 <printf>

  unlink("bigfile");
    28b5:	c7 04 24 98 4d 00 00 	movl   $0x4d98,(%esp)
    28bc:	e8 f1 15 00 00       	call   3eb2 <unlink>
  fd = open("bigfile", O_CREATE | O_RDWR);
    28c1:	5e                   	pop    %esi
    28c2:	5f                   	pop    %edi
    28c3:	68 02 02 00 00       	push   $0x202
    28c8:	68 98 4d 00 00       	push   $0x4d98
    28cd:	e8 d0 15 00 00       	call   3ea2 <open>
  if(fd < 0){
    28d2:	83 c4 10             	add    $0x10,%esp
    28d5:	85 c0                	test   %eax,%eax
    28d7:	0f 88 82 01 00 00    	js     2a5f <bigfile+0x1bf>
    28dd:	89 c6                	mov    %eax,%esi
    28df:	31 db                	xor    %ebx,%ebx
    28e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "cannot create bigfile");
    exit(0);
  }
  for(i = 0; i < 20; i++){
    memset(buf, i, 600);
    28e8:	83 ec 04             	sub    $0x4,%esp
    28eb:	68 58 02 00 00       	push   $0x258
    28f0:	53                   	push   %ebx
    28f1:	68 40 8b 00 00       	push   $0x8b40
    28f6:	e8 d5 13 00 00       	call   3cd0 <memset>
    if(write(fd, buf, 600) != 600){
    28fb:	83 c4 0c             	add    $0xc,%esp
    28fe:	68 58 02 00 00       	push   $0x258
    2903:	68 40 8b 00 00       	push   $0x8b40
    2908:	56                   	push   %esi
    2909:	e8 74 15 00 00       	call   3e82 <write>
    290e:	83 c4 10             	add    $0x10,%esp
    2911:	3d 58 02 00 00       	cmp    $0x258,%eax
    2916:	0f 85 0d 01 00 00    	jne    2a29 <bigfile+0x189>
  fd = open("bigfile", O_CREATE | O_RDWR);
  if(fd < 0){
    printf(1, "cannot create bigfile");
    exit(0);
  }
  for(i = 0; i < 20; i++){
    291c:	83 c3 01             	add    $0x1,%ebx
    291f:	83 fb 14             	cmp    $0x14,%ebx
    2922:	75 c4                	jne    28e8 <bigfile+0x48>
    if(write(fd, buf, 600) != 600){
      printf(1, "write bigfile failed\n");
      exit(0);
    }
  }
  close(fd);
    2924:	83 ec 0c             	sub    $0xc,%esp
    2927:	56                   	push   %esi
    2928:	e8 5d 15 00 00       	call   3e8a <close>

  fd = open("bigfile", 0);
    292d:	59                   	pop    %ecx
    292e:	5b                   	pop    %ebx
    292f:	6a 00                	push   $0x0
    2931:	68 98 4d 00 00       	push   $0x4d98
    2936:	e8 67 15 00 00       	call   3ea2 <open>
  if(fd < 0){
    293b:	83 c4 10             	add    $0x10,%esp
    293e:	85 c0                	test   %eax,%eax
      exit(0);
    }
  }
  close(fd);

  fd = open("bigfile", 0);
    2940:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    2942:	0f 88 fc 00 00 00    	js     2a44 <bigfile+0x1a4>
    2948:	31 db                	xor    %ebx,%ebx
    294a:	31 ff                	xor    %edi,%edi
    294c:	eb 30                	jmp    297e <bigfile+0xde>
    294e:	66 90                	xchg   %ax,%ax
      printf(1, "read bigfile failed\n");
      exit(0);
    }
    if(cc == 0)
      break;
    if(cc != 300){
    2950:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    2955:	0f 85 98 00 00 00    	jne    29f3 <bigfile+0x153>
      printf(1, "short read bigfile\n");
      exit(0);
    }
    if(buf[0] != i/2 || buf[299] != i/2){
    295b:	0f be 05 40 8b 00 00 	movsbl 0x8b40,%eax
    2962:	89 fa                	mov    %edi,%edx
    2964:	d1 fa                	sar    %edx
    2966:	39 d0                	cmp    %edx,%eax
    2968:	75 6e                	jne    29d8 <bigfile+0x138>
    296a:	0f be 15 6b 8c 00 00 	movsbl 0x8c6b,%edx
    2971:	39 d0                	cmp    %edx,%eax
    2973:	75 63                	jne    29d8 <bigfile+0x138>
      printf(1, "read bigfile wrong data\n");
      exit(0);
    }
    total += cc;
    2975:	81 c3 2c 01 00 00    	add    $0x12c,%ebx
  if(fd < 0){
    printf(1, "cannot open bigfile\n");
    exit(0);
  }
  total = 0;
  for(i = 0; ; i++){
    297b:	83 c7 01             	add    $0x1,%edi
    cc = read(fd, buf, 300);
    297e:	83 ec 04             	sub    $0x4,%esp
    2981:	68 2c 01 00 00       	push   $0x12c
    2986:	68 40 8b 00 00       	push   $0x8b40
    298b:	56                   	push   %esi
    298c:	e8 e9 14 00 00       	call   3e7a <read>
    if(cc < 0){
    2991:	83 c4 10             	add    $0x10,%esp
    2994:	85 c0                	test   %eax,%eax
    2996:	78 76                	js     2a0e <bigfile+0x16e>
      printf(1, "read bigfile failed\n");
      exit(0);
    }
    if(cc == 0)
    2998:	75 b6                	jne    2950 <bigfile+0xb0>
      printf(1, "read bigfile wrong data\n");
      exit(0);
    }
    total += cc;
  }
  close(fd);
    299a:	83 ec 0c             	sub    $0xc,%esp
    299d:	56                   	push   %esi
    299e:	e8 e7 14 00 00       	call   3e8a <close>
  if(total != 20*600){
    29a3:	83 c4 10             	add    $0x10,%esp
    29a6:	81 fb e0 2e 00 00    	cmp    $0x2ee0,%ebx
    29ac:	0f 85 c8 00 00 00    	jne    2a7a <bigfile+0x1da>
    printf(1, "read bigfile wrong total\n");
    exit(0);
  }
  unlink("bigfile");
    29b2:	83 ec 0c             	sub    $0xc,%esp
    29b5:	68 98 4d 00 00       	push   $0x4d98
    29ba:	e8 f3 14 00 00       	call   3eb2 <unlink>

  printf(1, "bigfile test ok\n");
    29bf:	58                   	pop    %eax
    29c0:	5a                   	pop    %edx
    29c1:	68 27 4e 00 00       	push   $0x4e27
    29c6:	6a 01                	push   $0x1
    29c8:	e8 e3 15 00 00       	call   3fb0 <printf>
}
    29cd:	83 c4 10             	add    $0x10,%esp
    29d0:	8d 65 f4             	lea    -0xc(%ebp),%esp
    29d3:	5b                   	pop    %ebx
    29d4:	5e                   	pop    %esi
    29d5:	5f                   	pop    %edi
    29d6:	5d                   	pop    %ebp
    29d7:	c3                   	ret    
    if(cc != 300){
      printf(1, "short read bigfile\n");
      exit(0);
    }
    if(buf[0] != i/2 || buf[299] != i/2){
      printf(1, "read bigfile wrong data\n");
    29d8:	83 ec 08             	sub    $0x8,%esp
    29db:	68 f4 4d 00 00       	push   $0x4df4
    29e0:	6a 01                	push   $0x1
    29e2:	e8 c9 15 00 00       	call   3fb0 <printf>
      exit(0);
    29e7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    29ee:	e8 6f 14 00 00       	call   3e62 <exit>
      exit(0);
    }
    if(cc == 0)
      break;
    if(cc != 300){
      printf(1, "short read bigfile\n");
    29f3:	83 ec 08             	sub    $0x8,%esp
    29f6:	68 e0 4d 00 00       	push   $0x4de0
    29fb:	6a 01                	push   $0x1
    29fd:	e8 ae 15 00 00       	call   3fb0 <printf>
      exit(0);
    2a02:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2a09:	e8 54 14 00 00       	call   3e62 <exit>
  }
  total = 0;
  for(i = 0; ; i++){
    cc = read(fd, buf, 300);
    if(cc < 0){
      printf(1, "read bigfile failed\n");
    2a0e:	83 ec 08             	sub    $0x8,%esp
    2a11:	68 cb 4d 00 00       	push   $0x4dcb
    2a16:	6a 01                	push   $0x1
    2a18:	e8 93 15 00 00       	call   3fb0 <printf>
      exit(0);
    2a1d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2a24:	e8 39 14 00 00       	call   3e62 <exit>
    exit(0);
  }
  for(i = 0; i < 20; i++){
    memset(buf, i, 600);
    if(write(fd, buf, 600) != 600){
      printf(1, "write bigfile failed\n");
    2a29:	83 ec 08             	sub    $0x8,%esp
    2a2c:	68 a0 4d 00 00       	push   $0x4da0
    2a31:	6a 01                	push   $0x1
    2a33:	e8 78 15 00 00       	call   3fb0 <printf>
      exit(0);
    2a38:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2a3f:	e8 1e 14 00 00       	call   3e62 <exit>
  }
  close(fd);

  fd = open("bigfile", 0);
  if(fd < 0){
    printf(1, "cannot open bigfile\n");
    2a44:	83 ec 08             	sub    $0x8,%esp
    2a47:	68 b6 4d 00 00       	push   $0x4db6
    2a4c:	6a 01                	push   $0x1
    2a4e:	e8 5d 15 00 00       	call   3fb0 <printf>
    exit(0);
    2a53:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2a5a:	e8 03 14 00 00       	call   3e62 <exit>
  printf(1, "bigfile test\n");

  unlink("bigfile");
  fd = open("bigfile", O_CREATE | O_RDWR);
  if(fd < 0){
    printf(1, "cannot create bigfile");
    2a5f:	83 ec 08             	sub    $0x8,%esp
    2a62:	68 8a 4d 00 00       	push   $0x4d8a
    2a67:	6a 01                	push   $0x1
    2a69:	e8 42 15 00 00       	call   3fb0 <printf>
    exit(0);
    2a6e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2a75:	e8 e8 13 00 00       	call   3e62 <exit>
    }
    total += cc;
  }
  close(fd);
  if(total != 20*600){
    printf(1, "read bigfile wrong total\n");
    2a7a:	83 ec 08             	sub    $0x8,%esp
    2a7d:	68 0d 4e 00 00       	push   $0x4e0d
    2a82:	6a 01                	push   $0x1
    2a84:	e8 27 15 00 00       	call   3fb0 <printf>
    exit(0);
    2a89:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2a90:	e8 cd 13 00 00       	call   3e62 <exit>
    2a95:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    2a99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002aa0 <fourteen>:
  printf(1, "bigfile test ok\n");
}

void
fourteen(void)
{
    2aa0:	55                   	push   %ebp
    2aa1:	89 e5                	mov    %esp,%ebp
    2aa3:	83 ec 10             	sub    $0x10,%esp
  int fd;

  // DIRSIZ is 14.
  printf(1, "fourteen test\n");
    2aa6:	68 38 4e 00 00       	push   $0x4e38
    2aab:	6a 01                	push   $0x1
    2aad:	e8 fe 14 00 00       	call   3fb0 <printf>

  if(mkdir("12345678901234") != 0){
    2ab2:	c7 04 24 73 4e 00 00 	movl   $0x4e73,(%esp)
    2ab9:	e8 0c 14 00 00       	call   3eca <mkdir>
    2abe:	83 c4 10             	add    $0x10,%esp
    2ac1:	85 c0                	test   %eax,%eax
    2ac3:	0f 85 9b 00 00 00    	jne    2b64 <fourteen+0xc4>
    printf(1, "mkdir 12345678901234 failed\n");
    exit(0);
  }
  if(mkdir("12345678901234/123456789012345") != 0){
    2ac9:	83 ec 0c             	sub    $0xc,%esp
    2acc:	68 30 56 00 00       	push   $0x5630
    2ad1:	e8 f4 13 00 00       	call   3eca <mkdir>
    2ad6:	83 c4 10             	add    $0x10,%esp
    2ad9:	85 c0                	test   %eax,%eax
    2adb:	0f 85 05 01 00 00    	jne    2be6 <fourteen+0x146>
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    exit(0);
  }
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
    2ae1:	83 ec 08             	sub    $0x8,%esp
    2ae4:	68 00 02 00 00       	push   $0x200
    2ae9:	68 80 56 00 00       	push   $0x5680
    2aee:	e8 af 13 00 00       	call   3ea2 <open>
  if(fd < 0){
    2af3:	83 c4 10             	add    $0x10,%esp
    2af6:	85 c0                	test   %eax,%eax
    2af8:	0f 88 ce 00 00 00    	js     2bcc <fourteen+0x12c>
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    exit(0);
  }
  close(fd);
    2afe:	83 ec 0c             	sub    $0xc,%esp
    2b01:	50                   	push   %eax
    2b02:	e8 83 13 00 00       	call   3e8a <close>
  fd = open("12345678901234/12345678901234/12345678901234", 0);
    2b07:	58                   	pop    %eax
    2b08:	5a                   	pop    %edx
    2b09:	6a 00                	push   $0x0
    2b0b:	68 f0 56 00 00       	push   $0x56f0
    2b10:	e8 8d 13 00 00       	call   3ea2 <open>
  if(fd < 0){
    2b15:	83 c4 10             	add    $0x10,%esp
    2b18:	85 c0                	test   %eax,%eax
    2b1a:	0f 88 92 00 00 00    	js     2bb2 <fourteen+0x112>
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    exit(0);
  }
  close(fd);
    2b20:	83 ec 0c             	sub    $0xc,%esp
    2b23:	50                   	push   %eax
    2b24:	e8 61 13 00 00       	call   3e8a <close>

  if(mkdir("12345678901234/12345678901234") == 0){
    2b29:	c7 04 24 64 4e 00 00 	movl   $0x4e64,(%esp)
    2b30:	e8 95 13 00 00       	call   3eca <mkdir>
    2b35:	83 c4 10             	add    $0x10,%esp
    2b38:	85 c0                	test   %eax,%eax
    2b3a:	74 5c                	je     2b98 <fourteen+0xf8>
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    exit(0);
  }
  if(mkdir("123456789012345/12345678901234") == 0){
    2b3c:	83 ec 0c             	sub    $0xc,%esp
    2b3f:	68 8c 57 00 00       	push   $0x578c
    2b44:	e8 81 13 00 00       	call   3eca <mkdir>
    2b49:	83 c4 10             	add    $0x10,%esp
    2b4c:	85 c0                	test   %eax,%eax
    2b4e:	74 2e                	je     2b7e <fourteen+0xde>
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    exit(0);
  }

  printf(1, "fourteen ok\n");
    2b50:	83 ec 08             	sub    $0x8,%esp
    2b53:	68 82 4e 00 00       	push   $0x4e82
    2b58:	6a 01                	push   $0x1
    2b5a:	e8 51 14 00 00       	call   3fb0 <printf>
}
    2b5f:	83 c4 10             	add    $0x10,%esp
    2b62:	c9                   	leave  
    2b63:	c3                   	ret    

  // DIRSIZ is 14.
  printf(1, "fourteen test\n");

  if(mkdir("12345678901234") != 0){
    printf(1, "mkdir 12345678901234 failed\n");
    2b64:	50                   	push   %eax
    2b65:	50                   	push   %eax
    2b66:	68 47 4e 00 00       	push   $0x4e47
    2b6b:	6a 01                	push   $0x1
    2b6d:	e8 3e 14 00 00       	call   3fb0 <printf>
    exit(0);
    2b72:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b79:	e8 e4 12 00 00       	call   3e62 <exit>
  if(mkdir("12345678901234/12345678901234") == 0){
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    exit(0);
  }
  if(mkdir("123456789012345/12345678901234") == 0){
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    2b7e:	50                   	push   %eax
    2b7f:	50                   	push   %eax
    2b80:	68 ac 57 00 00       	push   $0x57ac
    2b85:	6a 01                	push   $0x1
    2b87:	e8 24 14 00 00       	call   3fb0 <printf>
    exit(0);
    2b8c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b93:	e8 ca 12 00 00       	call   3e62 <exit>
    exit(0);
  }
  close(fd);

  if(mkdir("12345678901234/12345678901234") == 0){
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    2b98:	52                   	push   %edx
    2b99:	52                   	push   %edx
    2b9a:	68 5c 57 00 00       	push   $0x575c
    2b9f:	6a 01                	push   $0x1
    2ba1:	e8 0a 14 00 00       	call   3fb0 <printf>
    exit(0);
    2ba6:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2bad:	e8 b0 12 00 00       	call   3e62 <exit>
    exit(0);
  }
  close(fd);
  fd = open("12345678901234/12345678901234/12345678901234", 0);
  if(fd < 0){
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    2bb2:	51                   	push   %ecx
    2bb3:	51                   	push   %ecx
    2bb4:	68 20 57 00 00       	push   $0x5720
    2bb9:	6a 01                	push   $0x1
    2bbb:	e8 f0 13 00 00       	call   3fb0 <printf>
    exit(0);
    2bc0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2bc7:	e8 96 12 00 00       	call   3e62 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    exit(0);
  }
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
  if(fd < 0){
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    2bcc:	51                   	push   %ecx
    2bcd:	51                   	push   %ecx
    2bce:	68 b0 56 00 00       	push   $0x56b0
    2bd3:	6a 01                	push   $0x1
    2bd5:	e8 d6 13 00 00       	call   3fb0 <printf>
    exit(0);
    2bda:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2be1:	e8 7c 12 00 00       	call   3e62 <exit>
  if(mkdir("12345678901234") != 0){
    printf(1, "mkdir 12345678901234 failed\n");
    exit(0);
  }
  if(mkdir("12345678901234/123456789012345") != 0){
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    2be6:	50                   	push   %eax
    2be7:	50                   	push   %eax
    2be8:	68 50 56 00 00       	push   $0x5650
    2bed:	6a 01                	push   $0x1
    2bef:	e8 bc 13 00 00       	call   3fb0 <printf>
    exit(0);
    2bf4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2bfb:	e8 62 12 00 00       	call   3e62 <exit>

00002c00 <rmdot>:
  printf(1, "fourteen ok\n");
}

void
rmdot(void)
{
    2c00:	55                   	push   %ebp
    2c01:	89 e5                	mov    %esp,%ebp
    2c03:	83 ec 10             	sub    $0x10,%esp
  printf(1, "rmdot test\n");
    2c06:	68 8f 4e 00 00       	push   $0x4e8f
    2c0b:	6a 01                	push   $0x1
    2c0d:	e8 9e 13 00 00       	call   3fb0 <printf>
  if(mkdir("dots") != 0){
    2c12:	c7 04 24 9b 4e 00 00 	movl   $0x4e9b,(%esp)
    2c19:	e8 ac 12 00 00       	call   3eca <mkdir>
    2c1e:	83 c4 10             	add    $0x10,%esp
    2c21:	85 c0                	test   %eax,%eax
    2c23:	0f 85 b4 00 00 00    	jne    2cdd <rmdot+0xdd>
    printf(1, "mkdir dots failed\n");
    exit(0);
  }
  if(chdir("dots") != 0){
    2c29:	83 ec 0c             	sub    $0xc,%esp
    2c2c:	68 9b 4e 00 00       	push   $0x4e9b
    2c31:	e8 9c 12 00 00       	call   3ed2 <chdir>
    2c36:	83 c4 10             	add    $0x10,%esp
    2c39:	85 c0                	test   %eax,%eax
    2c3b:	0f 85 52 01 00 00    	jne    2d93 <rmdot+0x193>
    printf(1, "chdir dots failed\n");
    exit(0);
  }
  if(unlink(".") == 0){
    2c41:	83 ec 0c             	sub    $0xc,%esp
    2c44:	68 46 4b 00 00       	push   $0x4b46
    2c49:	e8 64 12 00 00       	call   3eb2 <unlink>
    2c4e:	83 c4 10             	add    $0x10,%esp
    2c51:	85 c0                	test   %eax,%eax
    2c53:	0f 84 20 01 00 00    	je     2d79 <rmdot+0x179>
    printf(1, "rm . worked!\n");
    exit(0);
  }
  if(unlink("..") == 0){
    2c59:	83 ec 0c             	sub    $0xc,%esp
    2c5c:	68 45 4b 00 00       	push   $0x4b45
    2c61:	e8 4c 12 00 00       	call   3eb2 <unlink>
    2c66:	83 c4 10             	add    $0x10,%esp
    2c69:	85 c0                	test   %eax,%eax
    2c6b:	0f 84 ee 00 00 00    	je     2d5f <rmdot+0x15f>
    printf(1, "rm .. worked!\n");
    exit(0);
  }
  if(chdir("/") != 0){
    2c71:	83 ec 0c             	sub    $0xc,%esp
    2c74:	68 19 43 00 00       	push   $0x4319
    2c79:	e8 54 12 00 00       	call   3ed2 <chdir>
    2c7e:	83 c4 10             	add    $0x10,%esp
    2c81:	85 c0                	test   %eax,%eax
    2c83:	0f 85 bc 00 00 00    	jne    2d45 <rmdot+0x145>
    printf(1, "chdir / failed\n");
    exit(0);
  }
  if(unlink("dots/.") == 0){
    2c89:	83 ec 0c             	sub    $0xc,%esp
    2c8c:	68 e3 4e 00 00       	push   $0x4ee3
    2c91:	e8 1c 12 00 00       	call   3eb2 <unlink>
    2c96:	83 c4 10             	add    $0x10,%esp
    2c99:	85 c0                	test   %eax,%eax
    2c9b:	0f 84 8a 00 00 00    	je     2d2b <rmdot+0x12b>
    printf(1, "unlink dots/. worked!\n");
    exit(0);
  }
  if(unlink("dots/..") == 0){
    2ca1:	83 ec 0c             	sub    $0xc,%esp
    2ca4:	68 01 4f 00 00       	push   $0x4f01
    2ca9:	e8 04 12 00 00       	call   3eb2 <unlink>
    2cae:	83 c4 10             	add    $0x10,%esp
    2cb1:	85 c0                	test   %eax,%eax
    2cb3:	74 5c                	je     2d11 <rmdot+0x111>
    printf(1, "unlink dots/.. worked!\n");
    exit(0);
  }
  if(unlink("dots") != 0){
    2cb5:	83 ec 0c             	sub    $0xc,%esp
    2cb8:	68 9b 4e 00 00       	push   $0x4e9b
    2cbd:	e8 f0 11 00 00       	call   3eb2 <unlink>
    2cc2:	83 c4 10             	add    $0x10,%esp
    2cc5:	85 c0                	test   %eax,%eax
    2cc7:	75 2e                	jne    2cf7 <rmdot+0xf7>
    printf(1, "unlink dots failed!\n");
    exit(0);
  }
  printf(1, "rmdot ok\n");
    2cc9:	83 ec 08             	sub    $0x8,%esp
    2ccc:	68 36 4f 00 00       	push   $0x4f36
    2cd1:	6a 01                	push   $0x1
    2cd3:	e8 d8 12 00 00       	call   3fb0 <printf>
}
    2cd8:	83 c4 10             	add    $0x10,%esp
    2cdb:	c9                   	leave  
    2cdc:	c3                   	ret    
void
rmdot(void)
{
  printf(1, "rmdot test\n");
  if(mkdir("dots") != 0){
    printf(1, "mkdir dots failed\n");
    2cdd:	50                   	push   %eax
    2cde:	50                   	push   %eax
    2cdf:	68 a0 4e 00 00       	push   $0x4ea0
    2ce4:	6a 01                	push   $0x1
    2ce6:	e8 c5 12 00 00       	call   3fb0 <printf>
    exit(0);
    2ceb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2cf2:	e8 6b 11 00 00       	call   3e62 <exit>
  if(unlink("dots/..") == 0){
    printf(1, "unlink dots/.. worked!\n");
    exit(0);
  }
  if(unlink("dots") != 0){
    printf(1, "unlink dots failed!\n");
    2cf7:	50                   	push   %eax
    2cf8:	50                   	push   %eax
    2cf9:	68 21 4f 00 00       	push   $0x4f21
    2cfe:	6a 01                	push   $0x1
    2d00:	e8 ab 12 00 00       	call   3fb0 <printf>
    exit(0);
    2d05:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d0c:	e8 51 11 00 00       	call   3e62 <exit>
  if(unlink("dots/.") == 0){
    printf(1, "unlink dots/. worked!\n");
    exit(0);
  }
  if(unlink("dots/..") == 0){
    printf(1, "unlink dots/.. worked!\n");
    2d11:	52                   	push   %edx
    2d12:	52                   	push   %edx
    2d13:	68 09 4f 00 00       	push   $0x4f09
    2d18:	6a 01                	push   $0x1
    2d1a:	e8 91 12 00 00       	call   3fb0 <printf>
    exit(0);
    2d1f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d26:	e8 37 11 00 00       	call   3e62 <exit>
  if(chdir("/") != 0){
    printf(1, "chdir / failed\n");
    exit(0);
  }
  if(unlink("dots/.") == 0){
    printf(1, "unlink dots/. worked!\n");
    2d2b:	51                   	push   %ecx
    2d2c:	51                   	push   %ecx
    2d2d:	68 ea 4e 00 00       	push   $0x4eea
    2d32:	6a 01                	push   $0x1
    2d34:	e8 77 12 00 00       	call   3fb0 <printf>
    exit(0);
    2d39:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d40:	e8 1d 11 00 00       	call   3e62 <exit>
  if(unlink("..") == 0){
    printf(1, "rm .. worked!\n");
    exit(0);
  }
  if(chdir("/") != 0){
    printf(1, "chdir / failed\n");
    2d45:	50                   	push   %eax
    2d46:	50                   	push   %eax
    2d47:	68 1b 43 00 00       	push   $0x431b
    2d4c:	6a 01                	push   $0x1
    2d4e:	e8 5d 12 00 00       	call   3fb0 <printf>
    exit(0);
    2d53:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d5a:	e8 03 11 00 00       	call   3e62 <exit>
  if(unlink(".") == 0){
    printf(1, "rm . worked!\n");
    exit(0);
  }
  if(unlink("..") == 0){
    printf(1, "rm .. worked!\n");
    2d5f:	50                   	push   %eax
    2d60:	50                   	push   %eax
    2d61:	68 d4 4e 00 00       	push   $0x4ed4
    2d66:	6a 01                	push   $0x1
    2d68:	e8 43 12 00 00       	call   3fb0 <printf>
    exit(0);
    2d6d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d74:	e8 e9 10 00 00       	call   3e62 <exit>
  if(chdir("dots") != 0){
    printf(1, "chdir dots failed\n");
    exit(0);
  }
  if(unlink(".") == 0){
    printf(1, "rm . worked!\n");
    2d79:	50                   	push   %eax
    2d7a:	50                   	push   %eax
    2d7b:	68 c6 4e 00 00       	push   $0x4ec6
    2d80:	6a 01                	push   $0x1
    2d82:	e8 29 12 00 00       	call   3fb0 <printf>
    exit(0);
    2d87:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d8e:	e8 cf 10 00 00       	call   3e62 <exit>
  if(mkdir("dots") != 0){
    printf(1, "mkdir dots failed\n");
    exit(0);
  }
  if(chdir("dots") != 0){
    printf(1, "chdir dots failed\n");
    2d93:	50                   	push   %eax
    2d94:	50                   	push   %eax
    2d95:	68 b3 4e 00 00       	push   $0x4eb3
    2d9a:	6a 01                	push   $0x1
    2d9c:	e8 0f 12 00 00       	call   3fb0 <printf>
    exit(0);
    2da1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2da8:	e8 b5 10 00 00       	call   3e62 <exit>
    2dad:	8d 76 00             	lea    0x0(%esi),%esi

00002db0 <dirfile>:
  printf(1, "rmdot ok\n");
}

void
dirfile(void)
{
    2db0:	55                   	push   %ebp
    2db1:	89 e5                	mov    %esp,%ebp
    2db3:	53                   	push   %ebx
    2db4:	83 ec 0c             	sub    $0xc,%esp
  int fd;

  printf(1, "dir vs file\n");
    2db7:	68 40 4f 00 00       	push   $0x4f40
    2dbc:	6a 01                	push   $0x1
    2dbe:	e8 ed 11 00 00       	call   3fb0 <printf>

  fd = open("dirfile", O_CREATE);
    2dc3:	59                   	pop    %ecx
    2dc4:	5b                   	pop    %ebx
    2dc5:	68 00 02 00 00       	push   $0x200
    2dca:	68 4d 4f 00 00       	push   $0x4f4d
    2dcf:	e8 ce 10 00 00       	call   3ea2 <open>
  if(fd < 0){
    2dd4:	83 c4 10             	add    $0x10,%esp
    2dd7:	85 c0                	test   %eax,%eax
    2dd9:	0f 88 51 01 00 00    	js     2f30 <dirfile+0x180>
    printf(1, "create dirfile failed\n");
    exit(0);
  }
  close(fd);
    2ddf:	83 ec 0c             	sub    $0xc,%esp
    2de2:	50                   	push   %eax
    2de3:	e8 a2 10 00 00       	call   3e8a <close>
  if(chdir("dirfile") == 0){
    2de8:	c7 04 24 4d 4f 00 00 	movl   $0x4f4d,(%esp)
    2def:	e8 de 10 00 00       	call   3ed2 <chdir>
    2df4:	83 c4 10             	add    $0x10,%esp
    2df7:	85 c0                	test   %eax,%eax
    2df9:	0f 84 17 01 00 00    	je     2f16 <dirfile+0x166>
    printf(1, "chdir dirfile succeeded!\n");
    exit(0);
  }
  fd = open("dirfile/xx", 0);
    2dff:	83 ec 08             	sub    $0x8,%esp
    2e02:	6a 00                	push   $0x0
    2e04:	68 86 4f 00 00       	push   $0x4f86
    2e09:	e8 94 10 00 00       	call   3ea2 <open>
  if(fd >= 0){
    2e0e:	83 c4 10             	add    $0x10,%esp
    2e11:	85 c0                	test   %eax,%eax
    2e13:	0f 89 e3 00 00 00    	jns    2efc <dirfile+0x14c>
    printf(1, "create dirfile/xx succeeded!\n");
    exit(0);
  }
  fd = open("dirfile/xx", O_CREATE);
    2e19:	83 ec 08             	sub    $0x8,%esp
    2e1c:	68 00 02 00 00       	push   $0x200
    2e21:	68 86 4f 00 00       	push   $0x4f86
    2e26:	e8 77 10 00 00       	call   3ea2 <open>
  if(fd >= 0){
    2e2b:	83 c4 10             	add    $0x10,%esp
    2e2e:	85 c0                	test   %eax,%eax
    2e30:	0f 89 c6 00 00 00    	jns    2efc <dirfile+0x14c>
    printf(1, "create dirfile/xx succeeded!\n");
    exit(0);
  }
  if(mkdir("dirfile/xx") == 0){
    2e36:	83 ec 0c             	sub    $0xc,%esp
    2e39:	68 86 4f 00 00       	push   $0x4f86
    2e3e:	e8 87 10 00 00       	call   3eca <mkdir>
    2e43:	83 c4 10             	add    $0x10,%esp
    2e46:	85 c0                	test   %eax,%eax
    2e48:	0f 84 7e 01 00 00    	je     2fcc <dirfile+0x21c>
    printf(1, "mkdir dirfile/xx succeeded!\n");
    exit(0);
  }
  if(unlink("dirfile/xx") == 0){
    2e4e:	83 ec 0c             	sub    $0xc,%esp
    2e51:	68 86 4f 00 00       	push   $0x4f86
    2e56:	e8 57 10 00 00       	call   3eb2 <unlink>
    2e5b:	83 c4 10             	add    $0x10,%esp
    2e5e:	85 c0                	test   %eax,%eax
    2e60:	0f 84 4c 01 00 00    	je     2fb2 <dirfile+0x202>
    printf(1, "unlink dirfile/xx succeeded!\n");
    exit(0);
  }
  if(link("README", "dirfile/xx") == 0){
    2e66:	83 ec 08             	sub    $0x8,%esp
    2e69:	68 86 4f 00 00       	push   $0x4f86
    2e6e:	68 ea 4f 00 00       	push   $0x4fea
    2e73:	e8 4a 10 00 00       	call   3ec2 <link>
    2e78:	83 c4 10             	add    $0x10,%esp
    2e7b:	85 c0                	test   %eax,%eax
    2e7d:	0f 84 15 01 00 00    	je     2f98 <dirfile+0x1e8>
    printf(1, "link to dirfile/xx succeeded!\n");
    exit(0);
  }
  if(unlink("dirfile") != 0){
    2e83:	83 ec 0c             	sub    $0xc,%esp
    2e86:	68 4d 4f 00 00       	push   $0x4f4d
    2e8b:	e8 22 10 00 00       	call   3eb2 <unlink>
    2e90:	83 c4 10             	add    $0x10,%esp
    2e93:	85 c0                	test   %eax,%eax
    2e95:	0f 85 e3 00 00 00    	jne    2f7e <dirfile+0x1ce>
    printf(1, "unlink dirfile failed!\n");
    exit(0);
  }

  fd = open(".", O_RDWR);
    2e9b:	83 ec 08             	sub    $0x8,%esp
    2e9e:	6a 02                	push   $0x2
    2ea0:	68 46 4b 00 00       	push   $0x4b46
    2ea5:	e8 f8 0f 00 00       	call   3ea2 <open>
  if(fd >= 0){
    2eaa:	83 c4 10             	add    $0x10,%esp
    2ead:	85 c0                	test   %eax,%eax
    2eaf:	0f 89 af 00 00 00    	jns    2f64 <dirfile+0x1b4>
    printf(1, "open . for writing succeeded!\n");
    exit(0);
  }
  fd = open(".", 0);
    2eb5:	83 ec 08             	sub    $0x8,%esp
    2eb8:	6a 00                	push   $0x0
    2eba:	68 46 4b 00 00       	push   $0x4b46
    2ebf:	e8 de 0f 00 00       	call   3ea2 <open>
  if(write(fd, "x", 1) > 0){
    2ec4:	83 c4 0c             	add    $0xc,%esp
  fd = open(".", O_RDWR);
  if(fd >= 0){
    printf(1, "open . for writing succeeded!\n");
    exit(0);
  }
  fd = open(".", 0);
    2ec7:	89 c3                	mov    %eax,%ebx
  if(write(fd, "x", 1) > 0){
    2ec9:	6a 01                	push   $0x1
    2ecb:	68 29 4c 00 00       	push   $0x4c29
    2ed0:	50                   	push   %eax
    2ed1:	e8 ac 0f 00 00       	call   3e82 <write>
    2ed6:	83 c4 10             	add    $0x10,%esp
    2ed9:	85 c0                	test   %eax,%eax
    2edb:	7f 6d                	jg     2f4a <dirfile+0x19a>
    printf(1, "write . succeeded!\n");
    exit(0);
  }
  close(fd);
    2edd:	83 ec 0c             	sub    $0xc,%esp
    2ee0:	53                   	push   %ebx
    2ee1:	e8 a4 0f 00 00       	call   3e8a <close>

  printf(1, "dir vs file OK\n");
    2ee6:	58                   	pop    %eax
    2ee7:	5a                   	pop    %edx
    2ee8:	68 1d 50 00 00       	push   $0x501d
    2eed:	6a 01                	push   $0x1
    2eef:	e8 bc 10 00 00       	call   3fb0 <printf>
}
    2ef4:	83 c4 10             	add    $0x10,%esp
    2ef7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2efa:	c9                   	leave  
    2efb:	c3                   	ret    
    printf(1, "chdir dirfile succeeded!\n");
    exit(0);
  }
  fd = open("dirfile/xx", 0);
  if(fd >= 0){
    printf(1, "create dirfile/xx succeeded!\n");
    2efc:	50                   	push   %eax
    2efd:	50                   	push   %eax
    2efe:	68 91 4f 00 00       	push   $0x4f91
    2f03:	6a 01                	push   $0x1
    2f05:	e8 a6 10 00 00       	call   3fb0 <printf>
    exit(0);
    2f0a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2f11:	e8 4c 0f 00 00       	call   3e62 <exit>
    printf(1, "create dirfile failed\n");
    exit(0);
  }
  close(fd);
  if(chdir("dirfile") == 0){
    printf(1, "chdir dirfile succeeded!\n");
    2f16:	50                   	push   %eax
    2f17:	50                   	push   %eax
    2f18:	68 6c 4f 00 00       	push   $0x4f6c
    2f1d:	6a 01                	push   $0x1
    2f1f:	e8 8c 10 00 00       	call   3fb0 <printf>
    exit(0);
    2f24:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2f2b:	e8 32 0f 00 00       	call   3e62 <exit>

  printf(1, "dir vs file\n");

  fd = open("dirfile", O_CREATE);
  if(fd < 0){
    printf(1, "create dirfile failed\n");
    2f30:	52                   	push   %edx
    2f31:	52                   	push   %edx
    2f32:	68 55 4f 00 00       	push   $0x4f55
    2f37:	6a 01                	push   $0x1
    2f39:	e8 72 10 00 00       	call   3fb0 <printf>
    exit(0);
    2f3e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2f45:	e8 18 0f 00 00       	call   3e62 <exit>
    printf(1, "open . for writing succeeded!\n");
    exit(0);
  }
  fd = open(".", 0);
  if(write(fd, "x", 1) > 0){
    printf(1, "write . succeeded!\n");
    2f4a:	51                   	push   %ecx
    2f4b:	51                   	push   %ecx
    2f4c:	68 09 50 00 00       	push   $0x5009
    2f51:	6a 01                	push   $0x1
    2f53:	e8 58 10 00 00       	call   3fb0 <printf>
    exit(0);
    2f58:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2f5f:	e8 fe 0e 00 00       	call   3e62 <exit>
    exit(0);
  }

  fd = open(".", O_RDWR);
  if(fd >= 0){
    printf(1, "open . for writing succeeded!\n");
    2f64:	53                   	push   %ebx
    2f65:	53                   	push   %ebx
    2f66:	68 00 58 00 00       	push   $0x5800
    2f6b:	6a 01                	push   $0x1
    2f6d:	e8 3e 10 00 00       	call   3fb0 <printf>
    exit(0);
    2f72:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2f79:	e8 e4 0e 00 00       	call   3e62 <exit>
  if(link("README", "dirfile/xx") == 0){
    printf(1, "link to dirfile/xx succeeded!\n");
    exit(0);
  }
  if(unlink("dirfile") != 0){
    printf(1, "unlink dirfile failed!\n");
    2f7e:	50                   	push   %eax
    2f7f:	50                   	push   %eax
    2f80:	68 f1 4f 00 00       	push   $0x4ff1
    2f85:	6a 01                	push   $0x1
    2f87:	e8 24 10 00 00       	call   3fb0 <printf>
    exit(0);
    2f8c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2f93:	e8 ca 0e 00 00       	call   3e62 <exit>
  if(unlink("dirfile/xx") == 0){
    printf(1, "unlink dirfile/xx succeeded!\n");
    exit(0);
  }
  if(link("README", "dirfile/xx") == 0){
    printf(1, "link to dirfile/xx succeeded!\n");
    2f98:	50                   	push   %eax
    2f99:	50                   	push   %eax
    2f9a:	68 e0 57 00 00       	push   $0x57e0
    2f9f:	6a 01                	push   $0x1
    2fa1:	e8 0a 10 00 00       	call   3fb0 <printf>
    exit(0);
    2fa6:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2fad:	e8 b0 0e 00 00       	call   3e62 <exit>
  if(mkdir("dirfile/xx") == 0){
    printf(1, "mkdir dirfile/xx succeeded!\n");
    exit(0);
  }
  if(unlink("dirfile/xx") == 0){
    printf(1, "unlink dirfile/xx succeeded!\n");
    2fb2:	50                   	push   %eax
    2fb3:	50                   	push   %eax
    2fb4:	68 cc 4f 00 00       	push   $0x4fcc
    2fb9:	6a 01                	push   $0x1
    2fbb:	e8 f0 0f 00 00       	call   3fb0 <printf>
    exit(0);
    2fc0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2fc7:	e8 96 0e 00 00       	call   3e62 <exit>
  if(fd >= 0){
    printf(1, "create dirfile/xx succeeded!\n");
    exit(0);
  }
  if(mkdir("dirfile/xx") == 0){
    printf(1, "mkdir dirfile/xx succeeded!\n");
    2fcc:	50                   	push   %eax
    2fcd:	50                   	push   %eax
    2fce:	68 af 4f 00 00       	push   $0x4faf
    2fd3:	6a 01                	push   $0x1
    2fd5:	e8 d6 0f 00 00       	call   3fb0 <printf>
    exit(0);
    2fda:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2fe1:	e8 7c 0e 00 00       	call   3e62 <exit>
    2fe6:	8d 76 00             	lea    0x0(%esi),%esi
    2fe9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002ff0 <iref>:
}

// test that iput() is called at the end of _namei()
void
iref(void)
{
    2ff0:	55                   	push   %ebp
    2ff1:	89 e5                	mov    %esp,%ebp
    2ff3:	53                   	push   %ebx
  int i, fd;

  printf(1, "empty file name\n");
    2ff4:	bb 33 00 00 00       	mov    $0x33,%ebx
}

// test that iput() is called at the end of _namei()
void
iref(void)
{
    2ff9:	83 ec 0c             	sub    $0xc,%esp
  int i, fd;

  printf(1, "empty file name\n");
    2ffc:	68 2d 50 00 00       	push   $0x502d
    3001:	6a 01                	push   $0x1
    3003:	e8 a8 0f 00 00       	call   3fb0 <printf>
    3008:	83 c4 10             	add    $0x10,%esp
    300b:	90                   	nop
    300c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

  // the 50 is NINODE
  for(i = 0; i < 50 + 1; i++){
    if(mkdir("irefd") != 0){
    3010:	83 ec 0c             	sub    $0xc,%esp
    3013:	68 3e 50 00 00       	push   $0x503e
    3018:	e8 ad 0e 00 00       	call   3eca <mkdir>
    301d:	83 c4 10             	add    $0x10,%esp
    3020:	85 c0                	test   %eax,%eax
    3022:	0f 85 bb 00 00 00    	jne    30e3 <iref+0xf3>
      printf(1, "mkdir irefd failed\n");
      exit(0);
    }
    if(chdir("irefd") != 0){
    3028:	83 ec 0c             	sub    $0xc,%esp
    302b:	68 3e 50 00 00       	push   $0x503e
    3030:	e8 9d 0e 00 00       	call   3ed2 <chdir>
    3035:	83 c4 10             	add    $0x10,%esp
    3038:	85 c0                	test   %eax,%eax
    303a:	0f 85 be 00 00 00    	jne    30fe <iref+0x10e>
      printf(1, "chdir irefd failed\n");
      exit(0);
    }

    mkdir("");
    3040:	83 ec 0c             	sub    $0xc,%esp
    3043:	68 f3 46 00 00       	push   $0x46f3
    3048:	e8 7d 0e 00 00       	call   3eca <mkdir>
    link("README", "");
    304d:	59                   	pop    %ecx
    304e:	58                   	pop    %eax
    304f:	68 f3 46 00 00       	push   $0x46f3
    3054:	68 ea 4f 00 00       	push   $0x4fea
    3059:	e8 64 0e 00 00       	call   3ec2 <link>
    fd = open("", O_CREATE);
    305e:	58                   	pop    %eax
    305f:	5a                   	pop    %edx
    3060:	68 00 02 00 00       	push   $0x200
    3065:	68 f3 46 00 00       	push   $0x46f3
    306a:	e8 33 0e 00 00       	call   3ea2 <open>
    if(fd >= 0)
    306f:	83 c4 10             	add    $0x10,%esp
    3072:	85 c0                	test   %eax,%eax
    3074:	78 0c                	js     3082 <iref+0x92>
      close(fd);
    3076:	83 ec 0c             	sub    $0xc,%esp
    3079:	50                   	push   %eax
    307a:	e8 0b 0e 00 00       	call   3e8a <close>
    307f:	83 c4 10             	add    $0x10,%esp
    fd = open("xx", O_CREATE);
    3082:	83 ec 08             	sub    $0x8,%esp
    3085:	68 00 02 00 00       	push   $0x200
    308a:	68 28 4c 00 00       	push   $0x4c28
    308f:	e8 0e 0e 00 00       	call   3ea2 <open>
    if(fd >= 0)
    3094:	83 c4 10             	add    $0x10,%esp
    3097:	85 c0                	test   %eax,%eax
    3099:	78 0c                	js     30a7 <iref+0xb7>
      close(fd);
    309b:	83 ec 0c             	sub    $0xc,%esp
    309e:	50                   	push   %eax
    309f:	e8 e6 0d 00 00       	call   3e8a <close>
    30a4:	83 c4 10             	add    $0x10,%esp
    unlink("xx");
    30a7:	83 ec 0c             	sub    $0xc,%esp
    30aa:	68 28 4c 00 00       	push   $0x4c28
    30af:	e8 fe 0d 00 00       	call   3eb2 <unlink>
  int i, fd;

  printf(1, "empty file name\n");

  // the 50 is NINODE
  for(i = 0; i < 50 + 1; i++){
    30b4:	83 c4 10             	add    $0x10,%esp
    30b7:	83 eb 01             	sub    $0x1,%ebx
    30ba:	0f 85 50 ff ff ff    	jne    3010 <iref+0x20>
    if(fd >= 0)
      close(fd);
    unlink("xx");
  }

  chdir("/");
    30c0:	83 ec 0c             	sub    $0xc,%esp
    30c3:	68 19 43 00 00       	push   $0x4319
    30c8:	e8 05 0e 00 00       	call   3ed2 <chdir>
  printf(1, "empty file name OK\n");
    30cd:	58                   	pop    %eax
    30ce:	5a                   	pop    %edx
    30cf:	68 6c 50 00 00       	push   $0x506c
    30d4:	6a 01                	push   $0x1
    30d6:	e8 d5 0e 00 00       	call   3fb0 <printf>
}
    30db:	83 c4 10             	add    $0x10,%esp
    30de:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    30e1:	c9                   	leave  
    30e2:	c3                   	ret    
  printf(1, "empty file name\n");

  // the 50 is NINODE
  for(i = 0; i < 50 + 1; i++){
    if(mkdir("irefd") != 0){
      printf(1, "mkdir irefd failed\n");
    30e3:	83 ec 08             	sub    $0x8,%esp
    30e6:	68 44 50 00 00       	push   $0x5044
    30eb:	6a 01                	push   $0x1
    30ed:	e8 be 0e 00 00       	call   3fb0 <printf>
      exit(0);
    30f2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    30f9:	e8 64 0d 00 00       	call   3e62 <exit>
    }
    if(chdir("irefd") != 0){
      printf(1, "chdir irefd failed\n");
    30fe:	83 ec 08             	sub    $0x8,%esp
    3101:	68 58 50 00 00       	push   $0x5058
    3106:	6a 01                	push   $0x1
    3108:	e8 a3 0e 00 00       	call   3fb0 <printf>
      exit(0);
    310d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3114:	e8 49 0d 00 00       	call   3e62 <exit>
    3119:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003120 <forktest>:
// test that fork fails gracefully
// the forktest binary also does this, but it runs out of proc entries first.
// inside the bigger usertests binary, we run out of memory first.
void
forktest(void)
{
    3120:	55                   	push   %ebp
    3121:	89 e5                	mov    %esp,%ebp
    3123:	53                   	push   %ebx
  int n, pid;

  printf(1, "fork test\n");

  for(n=0; n<1000; n++){
    3124:	31 db                	xor    %ebx,%ebx
// test that fork fails gracefully
// the forktest binary also does this, but it runs out of proc entries first.
// inside the bigger usertests binary, we run out of memory first.
void
forktest(void)
{
    3126:	83 ec 0c             	sub    $0xc,%esp
  int n, pid;

  printf(1, "fork test\n");
    3129:	68 80 50 00 00       	push   $0x5080
    312e:	6a 01                	push   $0x1
    3130:	e8 7b 0e 00 00       	call   3fb0 <printf>
    3135:	83 c4 10             	add    $0x10,%esp
    3138:	eb 13                	jmp    314d <forktest+0x2d>
    313a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

  for(n=0; n<1000; n++){
    pid = fork();
    if(pid < 0)
      break;
    if(pid == 0)
    3140:	74 79                	je     31bb <forktest+0x9b>
{
  int n, pid;

  printf(1, "fork test\n");

  for(n=0; n<1000; n++){
    3142:	83 c3 01             	add    $0x1,%ebx
    3145:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    314b:	74 53                	je     31a0 <forktest+0x80>
    pid = fork();
    314d:	e8 08 0d 00 00       	call   3e5a <fork>
    if(pid < 0)
    3152:	85 c0                	test   %eax,%eax
    3154:	79 ea                	jns    3140 <forktest+0x20>
  if(n == 1000){
    printf(1, "fork claimed to work 1000 times!\n");
    exit(0);
  }

  for(; n > 0; n--){
    3156:	85 db                	test   %ebx,%ebx
    3158:	74 1c                	je     3176 <forktest+0x56>
    315a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(wait(0) < 0){
    3160:	83 ec 0c             	sub    $0xc,%esp
    3163:	6a 00                	push   $0x0
    3165:	e8 00 0d 00 00       	call   3e6a <wait>
    316a:	83 c4 10             	add    $0x10,%esp
    316d:	85 c0                	test   %eax,%eax
    316f:	78 54                	js     31c5 <forktest+0xa5>
  if(n == 1000){
    printf(1, "fork claimed to work 1000 times!\n");
    exit(0);
  }

  for(; n > 0; n--){
    3171:	83 eb 01             	sub    $0x1,%ebx
    3174:	75 ea                	jne    3160 <forktest+0x40>
      printf(1, "wait stopped early\n");
      exit(0);
    }
  }

  if(wait(0) != -1){
    3176:	83 ec 0c             	sub    $0xc,%esp
    3179:	6a 00                	push   $0x0
    317b:	e8 ea 0c 00 00       	call   3e6a <wait>
    3180:	83 c4 10             	add    $0x10,%esp
    3183:	83 f8 ff             	cmp    $0xffffffff,%eax
    3186:	75 58                	jne    31e0 <forktest+0xc0>
    printf(1, "wait got too many\n");
    exit(0);
  }

  printf(1, "fork test OK\n");
    3188:	83 ec 08             	sub    $0x8,%esp
    318b:	68 b2 50 00 00       	push   $0x50b2
    3190:	6a 01                	push   $0x1
    3192:	e8 19 0e 00 00       	call   3fb0 <printf>
}
    3197:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    319a:	c9                   	leave  
    319b:	c3                   	ret    
    319c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid == 0)
      exit(0);
  }

  if(n == 1000){
    printf(1, "fork claimed to work 1000 times!\n");
    31a0:	83 ec 08             	sub    $0x8,%esp
    31a3:	68 20 58 00 00       	push   $0x5820
    31a8:	6a 01                	push   $0x1
    31aa:	e8 01 0e 00 00       	call   3fb0 <printf>
    exit(0);
    31af:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    31b6:	e8 a7 0c 00 00       	call   3e62 <exit>
  for(n=0; n<1000; n++){
    pid = fork();
    if(pid < 0)
      break;
    if(pid == 0)
      exit(0);
    31bb:	83 ec 0c             	sub    $0xc,%esp
    31be:	6a 00                	push   $0x0
    31c0:	e8 9d 0c 00 00       	call   3e62 <exit>
    exit(0);
  }

  for(; n > 0; n--){
    if(wait(0) < 0){
      printf(1, "wait stopped early\n");
    31c5:	83 ec 08             	sub    $0x8,%esp
    31c8:	68 8b 50 00 00       	push   $0x508b
    31cd:	6a 01                	push   $0x1
    31cf:	e8 dc 0d 00 00       	call   3fb0 <printf>
      exit(0);
    31d4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    31db:	e8 82 0c 00 00       	call   3e62 <exit>
    }
  }

  if(wait(0) != -1){
    printf(1, "wait got too many\n");
    31e0:	83 ec 08             	sub    $0x8,%esp
    31e3:	68 9f 50 00 00       	push   $0x509f
    31e8:	6a 01                	push   $0x1
    31ea:	e8 c1 0d 00 00       	call   3fb0 <printf>
    exit(0);
    31ef:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    31f6:	e8 67 0c 00 00       	call   3e62 <exit>
    31fb:	90                   	nop
    31fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003200 <sbrktest>:
  printf(1, "fork test OK\n");
}

void
sbrktest(void)
{
    3200:	55                   	push   %ebp
    3201:	89 e5                	mov    %esp,%ebp
    3203:	57                   	push   %edi
    3204:	56                   	push   %esi
    3205:	53                   	push   %ebx
  oldbrk = sbrk(0);

  // can one sbrk() less than a page?
  a = sbrk(0);
  int i;
  for(i = 0; i < 5000; i++){
    3206:	31 ff                	xor    %edi,%edi
  printf(1, "fork test OK\n");
}

void
sbrktest(void)
{
    3208:	83 ec 64             	sub    $0x64,%esp
  int fds[2], pid, pids[10], ppid;
  char *a, *b, *c, *lastaddr, *oldbrk, *p, scratch;
  uint amt;

  printf(stdout, "sbrk test\n");
    320b:	68 c0 50 00 00       	push   $0x50c0
    3210:	ff 35 64 63 00 00    	pushl  0x6364
    3216:	e8 95 0d 00 00       	call   3fb0 <printf>
  oldbrk = sbrk(0);
    321b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3222:	e8 c3 0c 00 00       	call   3eea <sbrk>

  // can one sbrk() less than a page?
  a = sbrk(0);
    3227:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  int fds[2], pid, pids[10], ppid;
  char *a, *b, *c, *lastaddr, *oldbrk, *p, scratch;
  uint amt;

  printf(stdout, "sbrk test\n");
  oldbrk = sbrk(0);
    322e:	89 45 a4             	mov    %eax,-0x5c(%ebp)

  // can one sbrk() less than a page?
  a = sbrk(0);
    3231:	e8 b4 0c 00 00       	call   3eea <sbrk>
    3236:	83 c4 10             	add    $0x10,%esp
    3239:	89 c3                	mov    %eax,%ebx
    323b:	90                   	nop
    323c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  int i;
  for(i = 0; i < 5000; i++){
    b = sbrk(1);
    3240:	83 ec 0c             	sub    $0xc,%esp
    3243:	6a 01                	push   $0x1
    3245:	e8 a0 0c 00 00       	call   3eea <sbrk>
    if(b != a){
    324a:	83 c4 10             	add    $0x10,%esp
    324d:	39 d8                	cmp    %ebx,%eax
    324f:	0f 85 9d 02 00 00    	jne    34f2 <sbrktest+0x2f2>
  oldbrk = sbrk(0);

  // can one sbrk() less than a page?
  a = sbrk(0);
  int i;
  for(i = 0; i < 5000; i++){
    3255:	83 c7 01             	add    $0x1,%edi
    b = sbrk(1);
    if(b != a){
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
      exit(0);
    }
    *b = 1;
    3258:	c6 03 01             	movb   $0x1,(%ebx)
    a = b + 1;
    325b:	83 c3 01             	add    $0x1,%ebx
  oldbrk = sbrk(0);

  // can one sbrk() less than a page?
  a = sbrk(0);
  int i;
  for(i = 0; i < 5000; i++){
    325e:	81 ff 88 13 00 00    	cmp    $0x1388,%edi
    3264:	75 da                	jne    3240 <sbrktest+0x40>
      exit(0);
    }
    *b = 1;
    a = b + 1;
  }
  pid = fork();
    3266:	e8 ef 0b 00 00       	call   3e5a <fork>
  if(pid < 0){
    326b:	85 c0                	test   %eax,%eax
      exit(0);
    }
    *b = 1;
    a = b + 1;
  }
  pid = fork();
    326d:	89 c7                	mov    %eax,%edi
  if(pid < 0){
    326f:	0f 88 ff 03 00 00    	js     3674 <sbrktest+0x474>
    printf(stdout, "sbrk test fork failed\n");
    exit(0);
  }
  c = sbrk(1);
    3275:	83 ec 0c             	sub    $0xc,%esp
  c = sbrk(1);
  if(c != a + 1){
    3278:	83 c3 01             	add    $0x1,%ebx
  pid = fork();
  if(pid < 0){
    printf(stdout, "sbrk test fork failed\n");
    exit(0);
  }
  c = sbrk(1);
    327b:	6a 01                	push   $0x1
    327d:	e8 68 0c 00 00       	call   3eea <sbrk>
  c = sbrk(1);
    3282:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3289:	e8 5c 0c 00 00       	call   3eea <sbrk>
  if(c != a + 1){
    328e:	83 c4 10             	add    $0x10,%esp
    3291:	39 d8                	cmp    %ebx,%eax
    3293:	0f 85 bc 03 00 00    	jne    3655 <sbrktest+0x455>
    printf(stdout, "sbrk test failed post-fork\n");
    exit(0);
  }
  if(pid == 0)
    3299:	85 ff                	test   %edi,%edi
    329b:	0f 84 aa 03 00 00    	je     364b <sbrktest+0x44b>
    exit(0);
  wait(0);
    32a1:	83 ec 0c             	sub    $0xc,%esp
    32a4:	6a 00                	push   $0x0
    32a6:	e8 bf 0b 00 00       	call   3e6a <wait>

  // can one grow address space to something big?
#define BIG (100*1024*1024)
  a = sbrk(0);
    32ab:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    32b2:	e8 33 0c 00 00       	call   3eea <sbrk>
    32b7:	89 c3                	mov    %eax,%ebx
  amt = (BIG) - (uint)a;
  p = sbrk(amt);
    32b9:	b8 00 00 40 06       	mov    $0x6400000,%eax
    32be:	29 d8                	sub    %ebx,%eax
    32c0:	89 04 24             	mov    %eax,(%esp)
    32c3:	e8 22 0c 00 00       	call   3eea <sbrk>
  if (p != a) {
    32c8:	83 c4 10             	add    $0x10,%esp
    32cb:	39 c3                	cmp    %eax,%ebx
    32cd:	0f 85 59 03 00 00    	jne    362c <sbrktest+0x42c>
  }
  lastaddr = (char*) (BIG-1);
  *lastaddr = 99;

  // can one de-allocate?
  a = sbrk(0);
    32d3:	83 ec 0c             	sub    $0xc,%esp
  if (p != a) {
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    exit(0);
  }
  lastaddr = (char*) (BIG-1);
  *lastaddr = 99;
    32d6:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff

  // can one de-allocate?
  a = sbrk(0);
    32dd:	6a 00                	push   $0x0
    32df:	e8 06 0c 00 00       	call   3eea <sbrk>
  c = sbrk(-4096);
    32e4:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
  }
  lastaddr = (char*) (BIG-1);
  *lastaddr = 99;

  // can one de-allocate?
  a = sbrk(0);
    32eb:	89 c3                	mov    %eax,%ebx
  c = sbrk(-4096);
    32ed:	e8 f8 0b 00 00       	call   3eea <sbrk>
  if(c == (char*)0xffffffff){
    32f2:	83 c4 10             	add    $0x10,%esp
    32f5:	83 f8 ff             	cmp    $0xffffffff,%eax
    32f8:	0f 84 0f 03 00 00    	je     360d <sbrktest+0x40d>
    printf(stdout, "sbrk could not deallocate\n");
    exit(0);
  }
  c = sbrk(0);
    32fe:	83 ec 0c             	sub    $0xc,%esp
    3301:	6a 00                	push   $0x0
    3303:	e8 e2 0b 00 00       	call   3eea <sbrk>
  if(c != a - 4096){
    3308:	8d 93 00 f0 ff ff    	lea    -0x1000(%ebx),%edx
    330e:	83 c4 10             	add    $0x10,%esp
    3311:	39 d0                	cmp    %edx,%eax
    3313:	0f 85 d6 02 00 00    	jne    35ef <sbrktest+0x3ef>
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    exit(0);
  }

  // can one re-allocate that page?
  a = sbrk(0);
    3319:	83 ec 0c             	sub    $0xc,%esp
    331c:	6a 00                	push   $0x0
    331e:	e8 c7 0b 00 00       	call   3eea <sbrk>
    3323:	89 c3                	mov    %eax,%ebx
  c = sbrk(4096);
    3325:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
    332c:	e8 b9 0b 00 00       	call   3eea <sbrk>
  if(c != a || sbrk(0) != a + 4096){
    3331:	83 c4 10             	add    $0x10,%esp
    3334:	39 c3                	cmp    %eax,%ebx
    exit(0);
  }

  // can one re-allocate that page?
  a = sbrk(0);
  c = sbrk(4096);
    3336:	89 c7                	mov    %eax,%edi
  if(c != a || sbrk(0) != a + 4096){
    3338:	0f 85 93 02 00 00    	jne    35d1 <sbrktest+0x3d1>
    333e:	83 ec 0c             	sub    $0xc,%esp
    3341:	6a 00                	push   $0x0
    3343:	e8 a2 0b 00 00       	call   3eea <sbrk>
    3348:	8d 93 00 10 00 00    	lea    0x1000(%ebx),%edx
    334e:	83 c4 10             	add    $0x10,%esp
    3351:	39 d0                	cmp    %edx,%eax
    3353:	0f 85 78 02 00 00    	jne    35d1 <sbrktest+0x3d1>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    exit(0);
  }
  if(*lastaddr == 99){
    3359:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    3360:	0f 84 4c 02 00 00    	je     35b2 <sbrktest+0x3b2>
    // should be zero
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    exit(0);
  }

  a = sbrk(0);
    3366:	83 ec 0c             	sub    $0xc,%esp
    3369:	6a 00                	push   $0x0
    336b:	e8 7a 0b 00 00       	call   3eea <sbrk>
  c = sbrk(-(sbrk(0) - oldbrk));
    3370:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    // should be zero
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    exit(0);
  }

  a = sbrk(0);
    3377:	89 c3                	mov    %eax,%ebx
  c = sbrk(-(sbrk(0) - oldbrk));
    3379:	e8 6c 0b 00 00       	call   3eea <sbrk>
    337e:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
    3381:	29 c1                	sub    %eax,%ecx
    3383:	89 0c 24             	mov    %ecx,(%esp)
    3386:	e8 5f 0b 00 00       	call   3eea <sbrk>
  if(c != a){
    338b:	83 c4 10             	add    $0x10,%esp
    338e:	39 c3                	cmp    %eax,%ebx
    3390:	0f 85 fe 01 00 00    	jne    3594 <sbrktest+0x394>
    3396:	bb 00 00 00 80       	mov    $0x80000000,%ebx
    339b:	90                   	nop
    339c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    exit(0);
  }

  // can we read the kernel's memory?
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    ppid = getpid();
    33a0:	e8 3d 0b 00 00       	call   3ee2 <getpid>
    33a5:	89 c7                	mov    %eax,%edi
    pid = fork();
    33a7:	e8 ae 0a 00 00       	call   3e5a <fork>
    if(pid < 0){
    33ac:	85 c0                	test   %eax,%eax
    33ae:	0f 88 c1 01 00 00    	js     3575 <sbrktest+0x375>
      printf(stdout, "fork failed\n");
      exit(0);
    }
    if(pid == 0){
    33b4:	0f 84 92 01 00 00    	je     354c <sbrktest+0x34c>
      printf(stdout, "oops could read %x = %x\n", a, *a);
      kill(ppid);
      exit(0);
    }
    wait(0);
    33ba:	83 ec 0c             	sub    $0xc,%esp
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    exit(0);
  }

  // can we read the kernel's memory?
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    33bd:	81 c3 50 c3 00 00    	add    $0xc350,%ebx
    if(pid == 0){
      printf(stdout, "oops could read %x = %x\n", a, *a);
      kill(ppid);
      exit(0);
    }
    wait(0);
    33c3:	6a 00                	push   $0x0
    33c5:	e8 a0 0a 00 00       	call   3e6a <wait>
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    exit(0);
  }

  // can we read the kernel's memory?
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    33ca:	83 c4 10             	add    $0x10,%esp
    33cd:	81 fb 80 84 1e 80    	cmp    $0x801e8480,%ebx
    33d3:	75 cb                	jne    33a0 <sbrktest+0x1a0>
    wait(0);
  }

  // if we run the system out of memory, does it clean up the last
  // failed allocation?
  if(pipe(fds) != 0){
    33d5:	8d 45 b8             	lea    -0x48(%ebp),%eax
    33d8:	83 ec 0c             	sub    $0xc,%esp
    33db:	50                   	push   %eax
    33dc:	e8 91 0a 00 00       	call   3e72 <pipe>
    33e1:	83 c4 10             	add    $0x10,%esp
    33e4:	85 c0                	test   %eax,%eax
    33e6:	0f 85 45 01 00 00    	jne    3531 <sbrktest+0x331>
    33ec:	8d 5d c0             	lea    -0x40(%ebp),%ebx
    33ef:	8d 7d e8             	lea    -0x18(%ebp),%edi
    33f2:	89 de                	mov    %ebx,%esi
    printf(1, "pipe() failed\n");
    exit(0);
  }
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    if((pids[i] = fork()) == 0){
    33f4:	e8 61 0a 00 00       	call   3e5a <fork>
    33f9:	85 c0                	test   %eax,%eax
    33fb:	89 06                	mov    %eax,(%esi)
    33fd:	0f 84 a8 00 00 00    	je     34ab <sbrktest+0x2ab>
      sbrk(BIG - (uint)sbrk(0));
      write(fds[1], "x", 1);
      // sit around until killed
      for(;;) sleep(1000);
    }
    if(pids[i] != -1)
    3403:	83 f8 ff             	cmp    $0xffffffff,%eax
    3406:	74 14                	je     341c <sbrktest+0x21c>
      read(fds[0], &scratch, 1);
    3408:	8d 45 b7             	lea    -0x49(%ebp),%eax
    340b:	83 ec 04             	sub    $0x4,%esp
    340e:	6a 01                	push   $0x1
    3410:	50                   	push   %eax
    3411:	ff 75 b8             	pushl  -0x48(%ebp)
    3414:	e8 61 0a 00 00       	call   3e7a <read>
    3419:	83 c4 10             	add    $0x10,%esp
    341c:	83 c6 04             	add    $0x4,%esi
  // failed allocation?
  if(pipe(fds) != 0){
    printf(1, "pipe() failed\n");
    exit(0);
  }
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    341f:	39 f7                	cmp    %esi,%edi
    3421:	75 d1                	jne    33f4 <sbrktest+0x1f4>
    if(pids[i] != -1)
      read(fds[0], &scratch, 1);
  }
  // if those failed allocations freed up the pages they did allocate,
  // we'll be able to allocate here
  c = sbrk(4096);
    3423:	83 ec 0c             	sub    $0xc,%esp
    3426:	68 00 10 00 00       	push   $0x1000
    342b:	e8 ba 0a 00 00       	call   3eea <sbrk>
    3430:	83 c4 10             	add    $0x10,%esp
    3433:	89 c6                	mov    %eax,%esi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    if(pids[i] == -1)
    3435:	8b 03                	mov    (%ebx),%eax
    3437:	83 f8 ff             	cmp    $0xffffffff,%eax
    343a:	74 18                	je     3454 <sbrktest+0x254>
      continue;
    kill(pids[i]);
    343c:	83 ec 0c             	sub    $0xc,%esp
    343f:	50                   	push   %eax
    3440:	e8 4d 0a 00 00       	call   3e92 <kill>
    wait(0);
    3445:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    344c:	e8 19 0a 00 00       	call   3e6a <wait>
    3451:	83 c4 10             	add    $0x10,%esp
    3454:	83 c3 04             	add    $0x4,%ebx
      read(fds[0], &scratch, 1);
  }
  // if those failed allocations freed up the pages they did allocate,
  // we'll be able to allocate here
  c = sbrk(4096);
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    3457:	39 fb                	cmp    %edi,%ebx
    3459:	75 da                	jne    3435 <sbrktest+0x235>
    if(pids[i] == -1)
      continue;
    kill(pids[i]);
    wait(0);
  }
  if(c == (char*)0xffffffff){
    345b:	83 fe ff             	cmp    $0xffffffff,%esi
    345e:	0f 84 ae 00 00 00    	je     3512 <sbrktest+0x312>
    printf(stdout, "failed sbrk leaked memory\n");
    exit(0);
  }

  if(sbrk(0) > oldbrk)
    3464:	83 ec 0c             	sub    $0xc,%esp
    3467:	6a 00                	push   $0x0
    3469:	e8 7c 0a 00 00       	call   3eea <sbrk>
    346e:	83 c4 10             	add    $0x10,%esp
    3471:	39 45 a4             	cmp    %eax,-0x5c(%ebp)
    3474:	73 1a                	jae    3490 <sbrktest+0x290>
    sbrk(-(sbrk(0) - oldbrk));
    3476:	83 ec 0c             	sub    $0xc,%esp
    3479:	6a 00                	push   $0x0
    347b:	e8 6a 0a 00 00       	call   3eea <sbrk>
    3480:	8b 75 a4             	mov    -0x5c(%ebp),%esi
    3483:	29 c6                	sub    %eax,%esi
    3485:	89 34 24             	mov    %esi,(%esp)
    3488:	e8 5d 0a 00 00       	call   3eea <sbrk>
    348d:	83 c4 10             	add    $0x10,%esp

  printf(stdout, "sbrk test OK\n");
    3490:	83 ec 08             	sub    $0x8,%esp
    3493:	68 68 51 00 00       	push   $0x5168
    3498:	ff 35 64 63 00 00    	pushl  0x6364
    349e:	e8 0d 0b 00 00       	call   3fb0 <printf>
}
    34a3:	8d 65 f4             	lea    -0xc(%ebp),%esp
    34a6:	5b                   	pop    %ebx
    34a7:	5e                   	pop    %esi
    34a8:	5f                   	pop    %edi
    34a9:	5d                   	pop    %ebp
    34aa:	c3                   	ret    
    exit(0);
  }
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    if((pids[i] = fork()) == 0){
      // allocate a lot of memory
      sbrk(BIG - (uint)sbrk(0));
    34ab:	83 ec 0c             	sub    $0xc,%esp
    34ae:	6a 00                	push   $0x0
    34b0:	e8 35 0a 00 00       	call   3eea <sbrk>
    34b5:	ba 00 00 40 06       	mov    $0x6400000,%edx
    34ba:	29 c2                	sub    %eax,%edx
    34bc:	89 14 24             	mov    %edx,(%esp)
    34bf:	e8 26 0a 00 00       	call   3eea <sbrk>
      write(fds[1], "x", 1);
    34c4:	83 c4 0c             	add    $0xc,%esp
    34c7:	6a 01                	push   $0x1
    34c9:	68 29 4c 00 00       	push   $0x4c29
    34ce:	ff 75 bc             	pushl  -0x44(%ebp)
    34d1:	e8 ac 09 00 00       	call   3e82 <write>
    34d6:	83 c4 10             	add    $0x10,%esp
    34d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      // sit around until killed
      for(;;) sleep(1000);
    34e0:	83 ec 0c             	sub    $0xc,%esp
    34e3:	68 e8 03 00 00       	push   $0x3e8
    34e8:	e8 05 0a 00 00       	call   3ef2 <sleep>
    34ed:	83 c4 10             	add    $0x10,%esp
    34f0:	eb ee                	jmp    34e0 <sbrktest+0x2e0>
  a = sbrk(0);
  int i;
  for(i = 0; i < 5000; i++){
    b = sbrk(1);
    if(b != a){
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
    34f2:	83 ec 0c             	sub    $0xc,%esp
    34f5:	50                   	push   %eax
    34f6:	53                   	push   %ebx
    34f7:	57                   	push   %edi
    34f8:	68 cb 50 00 00       	push   $0x50cb
    34fd:	ff 35 64 63 00 00    	pushl  0x6364
    3503:	e8 a8 0a 00 00       	call   3fb0 <printf>
      exit(0);
    3508:	83 c4 14             	add    $0x14,%esp
    350b:	6a 00                	push   $0x0
    350d:	e8 50 09 00 00       	call   3e62 <exit>
      continue;
    kill(pids[i]);
    wait(0);
  }
  if(c == (char*)0xffffffff){
    printf(stdout, "failed sbrk leaked memory\n");
    3512:	83 ec 08             	sub    $0x8,%esp
    3515:	68 4d 51 00 00       	push   $0x514d
    351a:	ff 35 64 63 00 00    	pushl  0x6364
    3520:	e8 8b 0a 00 00       	call   3fb0 <printf>
    exit(0);
    3525:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    352c:	e8 31 09 00 00       	call   3e62 <exit>
  }

  // if we run the system out of memory, does it clean up the last
  // failed allocation?
  if(pipe(fds) != 0){
    printf(1, "pipe() failed\n");
    3531:	83 ec 08             	sub    $0x8,%esp
    3534:	68 09 46 00 00       	push   $0x4609
    3539:	6a 01                	push   $0x1
    353b:	e8 70 0a 00 00       	call   3fb0 <printf>
    exit(0);
    3540:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3547:	e8 16 09 00 00       	call   3e62 <exit>
    if(pid < 0){
      printf(stdout, "fork failed\n");
      exit(0);
    }
    if(pid == 0){
      printf(stdout, "oops could read %x = %x\n", a, *a);
    354c:	0f be 03             	movsbl (%ebx),%eax
    354f:	50                   	push   %eax
    3550:	53                   	push   %ebx
    3551:	68 34 51 00 00       	push   $0x5134
    3556:	ff 35 64 63 00 00    	pushl  0x6364
    355c:	e8 4f 0a 00 00       	call   3fb0 <printf>
      kill(ppid);
    3561:	89 3c 24             	mov    %edi,(%esp)
    3564:	e8 29 09 00 00       	call   3e92 <kill>
      exit(0);
    3569:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3570:	e8 ed 08 00 00       	call   3e62 <exit>
  // can we read the kernel's memory?
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    ppid = getpid();
    pid = fork();
    if(pid < 0){
      printf(stdout, "fork failed\n");
    3575:	83 ec 08             	sub    $0x8,%esp
    3578:	68 11 52 00 00       	push   $0x5211
    357d:	ff 35 64 63 00 00    	pushl  0x6364
    3583:	e8 28 0a 00 00       	call   3fb0 <printf>
      exit(0);
    3588:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    358f:	e8 ce 08 00 00       	call   3e62 <exit>
  }

  a = sbrk(0);
  c = sbrk(-(sbrk(0) - oldbrk));
  if(c != a){
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    3594:	50                   	push   %eax
    3595:	53                   	push   %ebx
    3596:	68 14 59 00 00       	push   $0x5914
    359b:	ff 35 64 63 00 00    	pushl  0x6364
    35a1:	e8 0a 0a 00 00       	call   3fb0 <printf>
    exit(0);
    35a6:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    35ad:	e8 b0 08 00 00       	call   3e62 <exit>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    exit(0);
  }
  if(*lastaddr == 99){
    // should be zero
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    35b2:	83 ec 08             	sub    $0x8,%esp
    35b5:	68 e4 58 00 00       	push   $0x58e4
    35ba:	ff 35 64 63 00 00    	pushl  0x6364
    35c0:	e8 eb 09 00 00       	call   3fb0 <printf>
    exit(0);
    35c5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    35cc:	e8 91 08 00 00       	call   3e62 <exit>

  // can one re-allocate that page?
  a = sbrk(0);
  c = sbrk(4096);
  if(c != a || sbrk(0) != a + 4096){
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    35d1:	57                   	push   %edi
    35d2:	53                   	push   %ebx
    35d3:	68 bc 58 00 00       	push   $0x58bc
    35d8:	ff 35 64 63 00 00    	pushl  0x6364
    35de:	e8 cd 09 00 00       	call   3fb0 <printf>
    exit(0);
    35e3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    35ea:	e8 73 08 00 00       	call   3e62 <exit>
    printf(stdout, "sbrk could not deallocate\n");
    exit(0);
  }
  c = sbrk(0);
  if(c != a - 4096){
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    35ef:	50                   	push   %eax
    35f0:	53                   	push   %ebx
    35f1:	68 84 58 00 00       	push   $0x5884
    35f6:	ff 35 64 63 00 00    	pushl  0x6364
    35fc:	e8 af 09 00 00       	call   3fb0 <printf>
    exit(0);
    3601:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3608:	e8 55 08 00 00       	call   3e62 <exit>

  // can one de-allocate?
  a = sbrk(0);
  c = sbrk(-4096);
  if(c == (char*)0xffffffff){
    printf(stdout, "sbrk could not deallocate\n");
    360d:	83 ec 08             	sub    $0x8,%esp
    3610:	68 19 51 00 00       	push   $0x5119
    3615:	ff 35 64 63 00 00    	pushl  0x6364
    361b:	e8 90 09 00 00       	call   3fb0 <printf>
    exit(0);
    3620:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3627:	e8 36 08 00 00       	call   3e62 <exit>
#define BIG (100*1024*1024)
  a = sbrk(0);
  amt = (BIG) - (uint)a;
  p = sbrk(amt);
  if (p != a) {
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    362c:	83 ec 08             	sub    $0x8,%esp
    362f:	68 44 58 00 00       	push   $0x5844
    3634:	ff 35 64 63 00 00    	pushl  0x6364
    363a:	e8 71 09 00 00       	call   3fb0 <printf>
    exit(0);
    363f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3646:	e8 17 08 00 00       	call   3e62 <exit>
  if(c != a + 1){
    printf(stdout, "sbrk test failed post-fork\n");
    exit(0);
  }
  if(pid == 0)
    exit(0);
    364b:	83 ec 0c             	sub    $0xc,%esp
    364e:	6a 00                	push   $0x0
    3650:	e8 0d 08 00 00       	call   3e62 <exit>
    exit(0);
  }
  c = sbrk(1);
  c = sbrk(1);
  if(c != a + 1){
    printf(stdout, "sbrk test failed post-fork\n");
    3655:	83 ec 08             	sub    $0x8,%esp
    3658:	68 fd 50 00 00       	push   $0x50fd
    365d:	ff 35 64 63 00 00    	pushl  0x6364
    3663:	e8 48 09 00 00       	call   3fb0 <printf>
    exit(0);
    3668:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    366f:	e8 ee 07 00 00       	call   3e62 <exit>
    *b = 1;
    a = b + 1;
  }
  pid = fork();
  if(pid < 0){
    printf(stdout, "sbrk test fork failed\n");
    3674:	83 ec 08             	sub    $0x8,%esp
    3677:	68 e6 50 00 00       	push   $0x50e6
    367c:	ff 35 64 63 00 00    	pushl  0x6364
    3682:	e8 29 09 00 00       	call   3fb0 <printf>
    exit(0);
    3687:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    368e:	e8 cf 07 00 00       	call   3e62 <exit>
    3693:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3699:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000036a0 <validateint>:
  printf(stdout, "sbrk test OK\n");
}

void
validateint(int *p)
{
    36a0:	55                   	push   %ebp
    36a1:	89 e5                	mov    %esp,%ebp
      "int %2\n\t"
      "mov %%ebx, %%esp" :
      "=a" (res) :
      "a" (SYS_sleep), "n" (T_SYSCALL), "c" (p) :
      "ebx");
}
    36a3:	5d                   	pop    %ebp
    36a4:	c3                   	ret    
    36a5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    36a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000036b0 <validatetest>:

void
validatetest(void)
{
    36b0:	55                   	push   %ebp
    36b1:	89 e5                	mov    %esp,%ebp
    36b3:	56                   	push   %esi
    36b4:	53                   	push   %ebx
  uint p;

  printf(stdout, "validate test\n");
  hi = 1100*1024;

  for(p = 0; p <= (uint)hi; p += 4096){
    36b5:	31 db                	xor    %ebx,%ebx
validatetest(void)
{
  int hi, pid;
  uint p;

  printf(stdout, "validate test\n");
    36b7:	83 ec 08             	sub    $0x8,%esp
    36ba:	68 76 51 00 00       	push   $0x5176
    36bf:	ff 35 64 63 00 00    	pushl  0x6364
    36c5:	e8 e6 08 00 00       	call   3fb0 <printf>
    36ca:	83 c4 10             	add    $0x10,%esp
    36cd:	8d 76 00             	lea    0x0(%esi),%esi
  hi = 1100*1024;

  for(p = 0; p <= (uint)hi; p += 4096){
    if((pid = fork()) == 0){
    36d0:	e8 85 07 00 00       	call   3e5a <fork>
    36d5:	85 c0                	test   %eax,%eax
    36d7:	89 c6                	mov    %eax,%esi
    36d9:	74 6a                	je     3745 <validatetest+0x95>
      // try to crash the kernel by passing in a badly placed integer
      validateint((int*)p);
      exit(0);
    }
    sleep(0);
    36db:	83 ec 0c             	sub    $0xc,%esp
    36de:	6a 00                	push   $0x0
    36e0:	e8 0d 08 00 00       	call   3ef2 <sleep>
    sleep(0);
    36e5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    36ec:	e8 01 08 00 00       	call   3ef2 <sleep>
    kill(pid);
    36f1:	89 34 24             	mov    %esi,(%esp)
    36f4:	e8 99 07 00 00       	call   3e92 <kill>
    wait(0);
    36f9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3700:	e8 65 07 00 00       	call   3e6a <wait>

    // try to crash the kernel by passing in a bad string pointer
    if(link("nosuchfile", (char*)p) != -1){
    3705:	58                   	pop    %eax
    3706:	5a                   	pop    %edx
    3707:	53                   	push   %ebx
    3708:	68 85 51 00 00       	push   $0x5185
    370d:	e8 b0 07 00 00       	call   3ec2 <link>
    3712:	83 c4 10             	add    $0x10,%esp
    3715:	83 f8 ff             	cmp    $0xffffffff,%eax
    3718:	75 35                	jne    374f <validatetest+0x9f>
  uint p;

  printf(stdout, "validate test\n");
  hi = 1100*1024;

  for(p = 0; p <= (uint)hi; p += 4096){
    371a:	81 c3 00 10 00 00    	add    $0x1000,%ebx
    3720:	81 fb 00 40 11 00    	cmp    $0x114000,%ebx
    3726:	75 a8                	jne    36d0 <validatetest+0x20>
      printf(stdout, "link should not succeed\n");
      exit(0);
    }
  }

  printf(stdout, "validate ok\n");
    3728:	83 ec 08             	sub    $0x8,%esp
    372b:	68 a9 51 00 00       	push   $0x51a9
    3730:	ff 35 64 63 00 00    	pushl  0x6364
    3736:	e8 75 08 00 00       	call   3fb0 <printf>
}
    373b:	83 c4 10             	add    $0x10,%esp
    373e:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3741:	5b                   	pop    %ebx
    3742:	5e                   	pop    %esi
    3743:	5d                   	pop    %ebp
    3744:	c3                   	ret    

  for(p = 0; p <= (uint)hi; p += 4096){
    if((pid = fork()) == 0){
      // try to crash the kernel by passing in a badly placed integer
      validateint((int*)p);
      exit(0);
    3745:	83 ec 0c             	sub    $0xc,%esp
    3748:	6a 00                	push   $0x0
    374a:	e8 13 07 00 00       	call   3e62 <exit>
    kill(pid);
    wait(0);

    // try to crash the kernel by passing in a bad string pointer
    if(link("nosuchfile", (char*)p) != -1){
      printf(stdout, "link should not succeed\n");
    374f:	83 ec 08             	sub    $0x8,%esp
    3752:	68 90 51 00 00       	push   $0x5190
    3757:	ff 35 64 63 00 00    	pushl  0x6364
    375d:	e8 4e 08 00 00       	call   3fb0 <printf>
      exit(0);
    3762:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3769:	e8 f4 06 00 00       	call   3e62 <exit>
    376e:	66 90                	xchg   %ax,%ax

00003770 <bsstest>:

// does unintialized data start out zero?
char uninit[10000];
void
bsstest(void)
{
    3770:	55                   	push   %ebp
    3771:	89 e5                	mov    %esp,%ebp
    3773:	83 ec 10             	sub    $0x10,%esp
  int i;

  printf(stdout, "bss test\n");
    3776:	68 b6 51 00 00       	push   $0x51b6
    377b:	ff 35 64 63 00 00    	pushl  0x6364
    3781:	e8 2a 08 00 00       	call   3fb0 <printf>
  for(i = 0; i < sizeof(uninit); i++){
    if(uninit[i] != '\0'){
    3786:	83 c4 10             	add    $0x10,%esp
    3789:	80 3d 20 64 00 00 00 	cmpb   $0x0,0x6420
    3790:	75 35                	jne    37c7 <bsstest+0x57>
    3792:	b8 21 64 00 00       	mov    $0x6421,%eax
    3797:	89 f6                	mov    %esi,%esi
    3799:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    37a0:	80 38 00             	cmpb   $0x0,(%eax)
    37a3:	75 22                	jne    37c7 <bsstest+0x57>
    37a5:	83 c0 01             	add    $0x1,%eax
bsstest(void)
{
  int i;

  printf(stdout, "bss test\n");
  for(i = 0; i < sizeof(uninit); i++){
    37a8:	3d 30 8b 00 00       	cmp    $0x8b30,%eax
    37ad:	75 f1                	jne    37a0 <bsstest+0x30>
    if(uninit[i] != '\0'){
      printf(stdout, "bss test failed\n");
      exit(0);
    }
  }
  printf(stdout, "bss test ok\n");
    37af:	83 ec 08             	sub    $0x8,%esp
    37b2:	68 d1 51 00 00       	push   $0x51d1
    37b7:	ff 35 64 63 00 00    	pushl  0x6364
    37bd:	e8 ee 07 00 00       	call   3fb0 <printf>
}
    37c2:	83 c4 10             	add    $0x10,%esp
    37c5:	c9                   	leave  
    37c6:	c3                   	ret    
  int i;

  printf(stdout, "bss test\n");
  for(i = 0; i < sizeof(uninit); i++){
    if(uninit[i] != '\0'){
      printf(stdout, "bss test failed\n");
    37c7:	83 ec 08             	sub    $0x8,%esp
    37ca:	68 c0 51 00 00       	push   $0x51c0
    37cf:	ff 35 64 63 00 00    	pushl  0x6364
    37d5:	e8 d6 07 00 00       	call   3fb0 <printf>
      exit(0);
    37da:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    37e1:	e8 7c 06 00 00       	call   3e62 <exit>
    37e6:	8d 76 00             	lea    0x0(%esi),%esi
    37e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000037f0 <bigargtest>:
// does exec return an error if the arguments
// are larger than a page? or does it write
// below the stack and wreck the instructions/data?
void
bigargtest(void)
{
    37f0:	55                   	push   %ebp
    37f1:	89 e5                	mov    %esp,%ebp
    37f3:	83 ec 14             	sub    $0x14,%esp
  int pid, fd;

  unlink("bigarg-ok");
    37f6:	68 de 51 00 00       	push   $0x51de
    37fb:	e8 b2 06 00 00       	call   3eb2 <unlink>
  pid = fork();
    3800:	e8 55 06 00 00       	call   3e5a <fork>
  if(pid == 0){
    3805:	83 c4 10             	add    $0x10,%esp
    3808:	85 c0                	test   %eax,%eax
    380a:	74 43                	je     384f <bigargtest+0x5f>
    exec("echo", args);
    printf(stdout, "bigarg test ok\n");
    fd = open("bigarg-ok", O_CREATE);
    close(fd);
    exit(0);
  } else if(pid < 0){
    380c:	0f 88 d8 00 00 00    	js     38ea <bigargtest+0xfa>
    printf(stdout, "bigargtest: fork failed\n");
    exit(0);
  }
  wait(0);
    3812:	83 ec 0c             	sub    $0xc,%esp
    3815:	6a 00                	push   $0x0
    3817:	e8 4e 06 00 00       	call   3e6a <wait>
  fd = open("bigarg-ok", 0);
    381c:	5a                   	pop    %edx
    381d:	59                   	pop    %ecx
    381e:	6a 00                	push   $0x0
    3820:	68 de 51 00 00       	push   $0x51de
    3825:	e8 78 06 00 00       	call   3ea2 <open>
  if(fd < 0){
    382a:	83 c4 10             	add    $0x10,%esp
    382d:	85 c0                	test   %eax,%eax
    382f:	0f 88 97 00 00 00    	js     38cc <bigargtest+0xdc>
    printf(stdout, "bigarg test failed!\n");
    exit(0);
  }
  close(fd);
    3835:	83 ec 0c             	sub    $0xc,%esp
    3838:	50                   	push   %eax
    3839:	e8 4c 06 00 00       	call   3e8a <close>
  unlink("bigarg-ok");
    383e:	c7 04 24 de 51 00 00 	movl   $0x51de,(%esp)
    3845:	e8 68 06 00 00       	call   3eb2 <unlink>
}
    384a:	83 c4 10             	add    $0x10,%esp
    384d:	c9                   	leave  
    384e:	c3                   	ret    
    384f:	b8 80 63 00 00       	mov    $0x6380,%eax
    3854:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  pid = fork();
  if(pid == 0){
    static char *args[MAXARG];
    int i;
    for(i = 0; i < MAXARG-1; i++)
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    3858:	c7 00 38 59 00 00    	movl   $0x5938,(%eax)
    385e:	83 c0 04             	add    $0x4,%eax
  unlink("bigarg-ok");
  pid = fork();
  if(pid == 0){
    static char *args[MAXARG];
    int i;
    for(i = 0; i < MAXARG-1; i++)
    3861:	3d fc 63 00 00       	cmp    $0x63fc,%eax
    3866:	75 f0                	jne    3858 <bigargtest+0x68>
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    args[MAXARG-1] = 0;
    printf(stdout, "bigarg test\n");
    3868:	50                   	push   %eax
    3869:	50                   	push   %eax
    386a:	68 e8 51 00 00       	push   $0x51e8
    386f:	ff 35 64 63 00 00    	pushl  0x6364
  if(pid == 0){
    static char *args[MAXARG];
    int i;
    for(i = 0; i < MAXARG-1; i++)
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    args[MAXARG-1] = 0;
    3875:	c7 05 fc 63 00 00 00 	movl   $0x0,0x63fc
    387c:	00 00 00 
    printf(stdout, "bigarg test\n");
    387f:	e8 2c 07 00 00       	call   3fb0 <printf>
    exec("echo", args);
    3884:	58                   	pop    %eax
    3885:	5a                   	pop    %edx
    3886:	68 80 63 00 00       	push   $0x6380
    388b:	68 b5 43 00 00       	push   $0x43b5
    3890:	e8 05 06 00 00       	call   3e9a <exec>
    printf(stdout, "bigarg test ok\n");
    3895:	59                   	pop    %ecx
    3896:	58                   	pop    %eax
    3897:	68 f5 51 00 00       	push   $0x51f5
    389c:	ff 35 64 63 00 00    	pushl  0x6364
    38a2:	e8 09 07 00 00       	call   3fb0 <printf>
    fd = open("bigarg-ok", O_CREATE);
    38a7:	58                   	pop    %eax
    38a8:	5a                   	pop    %edx
    38a9:	68 00 02 00 00       	push   $0x200
    38ae:	68 de 51 00 00       	push   $0x51de
    38b3:	e8 ea 05 00 00       	call   3ea2 <open>
    close(fd);
    38b8:	89 04 24             	mov    %eax,(%esp)
    38bb:	e8 ca 05 00 00       	call   3e8a <close>
    exit(0);
    38c0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    38c7:	e8 96 05 00 00       	call   3e62 <exit>
    exit(0);
  }
  wait(0);
  fd = open("bigarg-ok", 0);
  if(fd < 0){
    printf(stdout, "bigarg test failed!\n");
    38cc:	50                   	push   %eax
    38cd:	50                   	push   %eax
    38ce:	68 1e 52 00 00       	push   $0x521e
    38d3:	ff 35 64 63 00 00    	pushl  0x6364
    38d9:	e8 d2 06 00 00       	call   3fb0 <printf>
    exit(0);
    38de:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    38e5:	e8 78 05 00 00       	call   3e62 <exit>
    printf(stdout, "bigarg test ok\n");
    fd = open("bigarg-ok", O_CREATE);
    close(fd);
    exit(0);
  } else if(pid < 0){
    printf(stdout, "bigargtest: fork failed\n");
    38ea:	50                   	push   %eax
    38eb:	50                   	push   %eax
    38ec:	68 05 52 00 00       	push   $0x5205
    38f1:	ff 35 64 63 00 00    	pushl  0x6364
    38f7:	e8 b4 06 00 00       	call   3fb0 <printf>
    exit(0);
    38fc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3903:	e8 5a 05 00 00       	call   3e62 <exit>
    3908:	90                   	nop
    3909:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003910 <fsfull>:

// what happens when the file system runs out of blocks?
// answer: balloc panics, so this test is not useful.
void
fsfull()
{
    3910:	55                   	push   %ebp
    3911:	89 e5                	mov    %esp,%ebp
    3913:	57                   	push   %edi
    3914:	56                   	push   %esi
    3915:	53                   	push   %ebx
  int nfiles;
  int fsblocks = 0;

  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    3916:	31 db                	xor    %ebx,%ebx

// what happens when the file system runs out of blocks?
// answer: balloc panics, so this test is not useful.
void
fsfull()
{
    3918:	83 ec 54             	sub    $0x54,%esp
  int nfiles;
  int fsblocks = 0;

  printf(1, "fsfull test\n");
    391b:	68 33 52 00 00       	push   $0x5233
    3920:	6a 01                	push   $0x1
    3922:	e8 89 06 00 00       	call   3fb0 <printf>
    3927:	83 c4 10             	add    $0x10,%esp
    392a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    3930:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    3935:	89 de                	mov    %ebx,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    3937:	89 d9                	mov    %ebx,%ecx
  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    3939:	f7 eb                	imul   %ebx
    393b:	c1 fe 1f             	sar    $0x1f,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    393e:	89 df                	mov    %ebx,%edi
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    printf(1, "writing %s\n", name);
    3940:	83 ec 04             	sub    $0x4,%esp

  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    3943:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    3947:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    394b:	c1 fa 06             	sar    $0x6,%edx
    394e:	29 f2                	sub    %esi,%edx
    3950:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3953:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    3959:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    395c:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    3961:	29 d1                	sub    %edx,%ecx
    3963:	f7 e9                	imul   %ecx
    3965:	c1 f9 1f             	sar    $0x1f,%ecx
    name[3] = '0' + (nfiles % 100) / 10;
    3968:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    396d:	c1 fa 05             	sar    $0x5,%edx
    3970:	29 ca                	sub    %ecx,%edx
    name[3] = '0' + (nfiles % 100) / 10;
    3972:	b9 67 66 66 66       	mov    $0x66666667,%ecx

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    3977:	83 c2 30             	add    $0x30,%edx
    397a:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    397d:	f7 eb                	imul   %ebx
    397f:	c1 fa 05             	sar    $0x5,%edx
    3982:	29 f2                	sub    %esi,%edx
    3984:	6b d2 64             	imul   $0x64,%edx,%edx
    3987:	29 d7                	sub    %edx,%edi
    3989:	89 f8                	mov    %edi,%eax
    398b:	c1 ff 1f             	sar    $0x1f,%edi
    398e:	f7 e9                	imul   %ecx
    name[4] = '0' + (nfiles % 10);
    3990:	89 d8                	mov    %ebx,%eax
  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    3992:	c1 fa 02             	sar    $0x2,%edx
    3995:	29 fa                	sub    %edi,%edx
    3997:	83 c2 30             	add    $0x30,%edx
    399a:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    399d:	f7 e9                	imul   %ecx
    399f:	89 d9                	mov    %ebx,%ecx
    39a1:	c1 fa 02             	sar    $0x2,%edx
    39a4:	29 f2                	sub    %esi,%edx
    39a6:	8d 04 92             	lea    (%edx,%edx,4),%eax
    39a9:	01 c0                	add    %eax,%eax
    39ab:	29 c1                	sub    %eax,%ecx
    39ad:	89 c8                	mov    %ecx,%eax
    39af:	83 c0 30             	add    $0x30,%eax
    39b2:	88 45 ac             	mov    %al,-0x54(%ebp)
    name[5] = '\0';
    printf(1, "writing %s\n", name);
    39b5:	8d 45 a8             	lea    -0x58(%ebp),%eax
    39b8:	50                   	push   %eax
    39b9:	68 40 52 00 00       	push   $0x5240
    39be:	6a 01                	push   $0x1
    39c0:	e8 eb 05 00 00       	call   3fb0 <printf>
    int fd = open(name, O_CREATE|O_RDWR);
    39c5:	58                   	pop    %eax
    39c6:	8d 45 a8             	lea    -0x58(%ebp),%eax
    39c9:	5a                   	pop    %edx
    39ca:	68 02 02 00 00       	push   $0x202
    39cf:	50                   	push   %eax
    39d0:	e8 cd 04 00 00       	call   3ea2 <open>
    if(fd < 0){
    39d5:	83 c4 10             	add    $0x10,%esp
    39d8:	85 c0                	test   %eax,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    printf(1, "writing %s\n", name);
    int fd = open(name, O_CREATE|O_RDWR);
    39da:	89 c7                	mov    %eax,%edi
    if(fd < 0){
    39dc:	78 50                	js     3a2e <fsfull+0x11e>
    39de:	31 f6                	xor    %esi,%esi
    39e0:	eb 08                	jmp    39ea <fsfull+0xda>
    39e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    int total = 0;
    while(1){
      int cc = write(fd, buf, 512);
      if(cc < 512)
        break;
      total += cc;
    39e8:	01 c6                	add    %eax,%esi
      printf(1, "open %s failed\n", name);
      break;
    }
    int total = 0;
    while(1){
      int cc = write(fd, buf, 512);
    39ea:	83 ec 04             	sub    $0x4,%esp
    39ed:	68 00 02 00 00       	push   $0x200
    39f2:	68 40 8b 00 00       	push   $0x8b40
    39f7:	57                   	push   %edi
    39f8:	e8 85 04 00 00       	call   3e82 <write>
      if(cc < 512)
    39fd:	83 c4 10             	add    $0x10,%esp
    3a00:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    3a05:	7f e1                	jg     39e8 <fsfull+0xd8>
        break;
      total += cc;
      fsblocks++;
    }
    printf(1, "wrote %d bytes\n", total);
    3a07:	83 ec 04             	sub    $0x4,%esp
    3a0a:	56                   	push   %esi
    3a0b:	68 5c 52 00 00       	push   $0x525c
    3a10:	6a 01                	push   $0x1
    3a12:	e8 99 05 00 00       	call   3fb0 <printf>
    close(fd);
    3a17:	89 3c 24             	mov    %edi,(%esp)
    3a1a:	e8 6b 04 00 00       	call   3e8a <close>
    if(total == 0)
    3a1f:	83 c4 10             	add    $0x10,%esp
    3a22:	85 f6                	test   %esi,%esi
    3a24:	74 22                	je     3a48 <fsfull+0x138>
  int nfiles;
  int fsblocks = 0;

  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    3a26:	83 c3 01             	add    $0x1,%ebx
    }
    printf(1, "wrote %d bytes\n", total);
    close(fd);
    if(total == 0)
      break;
  }
    3a29:	e9 02 ff ff ff       	jmp    3930 <fsfull+0x20>
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    printf(1, "writing %s\n", name);
    int fd = open(name, O_CREATE|O_RDWR);
    if(fd < 0){
      printf(1, "open %s failed\n", name);
    3a2e:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3a31:	83 ec 04             	sub    $0x4,%esp
    3a34:	50                   	push   %eax
    3a35:	68 4c 52 00 00       	push   $0x524c
    3a3a:	6a 01                	push   $0x1
    3a3c:	e8 6f 05 00 00       	call   3fb0 <printf>
      break;
    3a41:	83 c4 10             	add    $0x10,%esp
    3a44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  }

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    3a48:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    3a4d:	89 de                	mov    %ebx,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    3a4f:	89 d9                	mov    %ebx,%ecx
  }

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    3a51:	f7 eb                	imul   %ebx
    3a53:	c1 fe 1f             	sar    $0x1f,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    3a56:	89 df                	mov    %ebx,%edi
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    unlink(name);
    3a58:	83 ec 0c             	sub    $0xc,%esp
      break;
  }

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    3a5b:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    3a5f:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
  }

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    3a63:	c1 fa 06             	sar    $0x6,%edx
    3a66:	29 f2                	sub    %esi,%edx
    3a68:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3a6b:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
  }

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    3a71:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    3a74:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    3a79:	29 d1                	sub    %edx,%ecx
    3a7b:	f7 e9                	imul   %ecx
    3a7d:	c1 f9 1f             	sar    $0x1f,%ecx
    name[3] = '0' + (nfiles % 100) / 10;
    3a80:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    3a85:	c1 fa 05             	sar    $0x5,%edx
    3a88:	29 ca                	sub    %ecx,%edx
    name[3] = '0' + (nfiles % 100) / 10;
    3a8a:	b9 67 66 66 66       	mov    $0x66666667,%ecx

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    3a8f:	83 c2 30             	add    $0x30,%edx
    3a92:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    3a95:	f7 eb                	imul   %ebx
    3a97:	c1 fa 05             	sar    $0x5,%edx
    3a9a:	29 f2                	sub    %esi,%edx
    3a9c:	6b d2 64             	imul   $0x64,%edx,%edx
    3a9f:	29 d7                	sub    %edx,%edi
    3aa1:	89 f8                	mov    %edi,%eax
    3aa3:	c1 ff 1f             	sar    $0x1f,%edi
    3aa6:	f7 e9                	imul   %ecx
    name[4] = '0' + (nfiles % 10);
    3aa8:	89 d8                	mov    %ebx,%eax
  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    3aaa:	c1 fa 02             	sar    $0x2,%edx
    3aad:	29 fa                	sub    %edi,%edx
    3aaf:	83 c2 30             	add    $0x30,%edx
    3ab2:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    3ab5:	f7 e9                	imul   %ecx
    3ab7:	89 d9                	mov    %ebx,%ecx
    name[5] = '\0';
    unlink(name);
    nfiles--;
    3ab9:	83 eb 01             	sub    $0x1,%ebx
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    name[4] = '0' + (nfiles % 10);
    3abc:	c1 fa 02             	sar    $0x2,%edx
    3abf:	29 f2                	sub    %esi,%edx
    3ac1:	8d 04 92             	lea    (%edx,%edx,4),%eax
    3ac4:	01 c0                	add    %eax,%eax
    3ac6:	29 c1                	sub    %eax,%ecx
    3ac8:	89 c8                	mov    %ecx,%eax
    3aca:	83 c0 30             	add    $0x30,%eax
    3acd:	88 45 ac             	mov    %al,-0x54(%ebp)
    name[5] = '\0';
    unlink(name);
    3ad0:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3ad3:	50                   	push   %eax
    3ad4:	e8 d9 03 00 00       	call   3eb2 <unlink>
    close(fd);
    if(total == 0)
      break;
  }

  while(nfiles >= 0){
    3ad9:	83 c4 10             	add    $0x10,%esp
    3adc:	83 fb ff             	cmp    $0xffffffff,%ebx
    3adf:	0f 85 63 ff ff ff    	jne    3a48 <fsfull+0x138>
    name[5] = '\0';
    unlink(name);
    nfiles--;
  }

  printf(1, "fsfull test finished\n");
    3ae5:	83 ec 08             	sub    $0x8,%esp
    3ae8:	68 6c 52 00 00       	push   $0x526c
    3aed:	6a 01                	push   $0x1
    3aef:	e8 bc 04 00 00       	call   3fb0 <printf>
}
    3af4:	83 c4 10             	add    $0x10,%esp
    3af7:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3afa:	5b                   	pop    %ebx
    3afb:	5e                   	pop    %esi
    3afc:	5f                   	pop    %edi
    3afd:	5d                   	pop    %ebp
    3afe:	c3                   	ret    
    3aff:	90                   	nop

00003b00 <uio>:

void
uio()
{
    3b00:	55                   	push   %ebp
    3b01:	89 e5                	mov    %esp,%ebp
    3b03:	83 ec 10             	sub    $0x10,%esp

  ushort port = 0;
  uchar val = 0;
  int pid;

  printf(1, "uio test\n");
    3b06:	68 82 52 00 00       	push   $0x5282
    3b0b:	6a 01                	push   $0x1
    3b0d:	e8 9e 04 00 00       	call   3fb0 <printf>
  pid = fork();
    3b12:	e8 43 03 00 00       	call   3e5a <fork>
  if(pid == 0){
    3b17:	83 c4 10             	add    $0x10,%esp
    3b1a:	85 c0                	test   %eax,%eax
    3b1c:	74 1f                	je     3b3d <uio+0x3d>
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    port = RTC_DATA;
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    printf(1, "uio: uio succeeded; test FAILED\n");
    exit(0);
  } else if(pid < 0){
    3b1e:	78 48                	js     3b68 <uio+0x68>
    printf (1, "fork failed\n");
    exit(0);
  }
  wait(0);
    3b20:	83 ec 0c             	sub    $0xc,%esp
    3b23:	6a 00                	push   $0x0
    3b25:	e8 40 03 00 00       	call   3e6a <wait>
  printf(1, "uio test done\n");
    3b2a:	58                   	pop    %eax
    3b2b:	5a                   	pop    %edx
    3b2c:	68 8c 52 00 00       	push   $0x528c
    3b31:	6a 01                	push   $0x1
    3b33:	e8 78 04 00 00       	call   3fb0 <printf>
}
    3b38:	83 c4 10             	add    $0x10,%esp
    3b3b:	c9                   	leave  
    3b3c:	c3                   	ret    
  pid = fork();
  if(pid == 0){
    port = RTC_ADDR;
    val = 0x09;  /* year */
    /* http://wiki.osdev.org/Inline_Assembly/Examples */
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    3b3d:	ba 70 00 00 00       	mov    $0x70,%edx
    3b42:	b8 09 00 00 00       	mov    $0x9,%eax
    3b47:	ee                   	out    %al,(%dx)
    port = RTC_DATA;
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    3b48:	ba 71 00 00 00       	mov    $0x71,%edx
    3b4d:	ec                   	in     (%dx),%al
    printf(1, "uio: uio succeeded; test FAILED\n");
    3b4e:	50                   	push   %eax
    3b4f:	50                   	push   %eax
    3b50:	68 18 5a 00 00       	push   $0x5a18
    3b55:	6a 01                	push   $0x1
    3b57:	e8 54 04 00 00       	call   3fb0 <printf>
    exit(0);
    3b5c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3b63:	e8 fa 02 00 00       	call   3e62 <exit>
  } else if(pid < 0){
    printf (1, "fork failed\n");
    3b68:	51                   	push   %ecx
    3b69:	51                   	push   %ecx
    3b6a:	68 11 52 00 00       	push   $0x5211
    3b6f:	6a 01                	push   $0x1
    3b71:	e8 3a 04 00 00       	call   3fb0 <printf>
    exit(0);
    3b76:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3b7d:	e8 e0 02 00 00       	call   3e62 <exit>
    3b82:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3b89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003b90 <argptest>:
  wait(0);
  printf(1, "uio test done\n");
}

void argptest()
{
    3b90:	55                   	push   %ebp
    3b91:	89 e5                	mov    %esp,%ebp
    3b93:	53                   	push   %ebx
    3b94:	83 ec 0c             	sub    $0xc,%esp
  int fd;
  fd = open("init", O_RDONLY);
    3b97:	6a 00                	push   $0x0
    3b99:	68 9b 52 00 00       	push   $0x529b
    3b9e:	e8 ff 02 00 00       	call   3ea2 <open>
  if (fd < 0) {
    3ba3:	83 c4 10             	add    $0x10,%esp
    3ba6:	85 c0                	test   %eax,%eax
    3ba8:	78 39                	js     3be3 <argptest+0x53>
    printf(2, "open failed\n");
    exit(0);
  }
  read(fd, sbrk(0) - 1, -1);
    3baa:	83 ec 0c             	sub    $0xc,%esp
    3bad:	89 c3                	mov    %eax,%ebx
    3baf:	6a 00                	push   $0x0
    3bb1:	e8 34 03 00 00       	call   3eea <sbrk>
    3bb6:	83 c4 0c             	add    $0xc,%esp
    3bb9:	83 e8 01             	sub    $0x1,%eax
    3bbc:	6a ff                	push   $0xffffffff
    3bbe:	50                   	push   %eax
    3bbf:	53                   	push   %ebx
    3bc0:	e8 b5 02 00 00       	call   3e7a <read>
  close(fd);
    3bc5:	89 1c 24             	mov    %ebx,(%esp)
    3bc8:	e8 bd 02 00 00       	call   3e8a <close>
  printf(1, "arg test passed\n");
    3bcd:	58                   	pop    %eax
    3bce:	5a                   	pop    %edx
    3bcf:	68 ad 52 00 00       	push   $0x52ad
    3bd4:	6a 01                	push   $0x1
    3bd6:	e8 d5 03 00 00       	call   3fb0 <printf>
}
    3bdb:	83 c4 10             	add    $0x10,%esp
    3bde:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3be1:	c9                   	leave  
    3be2:	c3                   	ret    
void argptest()
{
  int fd;
  fd = open("init", O_RDONLY);
  if (fd < 0) {
    printf(2, "open failed\n");
    3be3:	51                   	push   %ecx
    3be4:	51                   	push   %ecx
    3be5:	68 a0 52 00 00       	push   $0x52a0
    3bea:	6a 02                	push   $0x2
    3bec:	e8 bf 03 00 00       	call   3fb0 <printf>
    exit(0);
    3bf1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3bf8:	e8 65 02 00 00       	call   3e62 <exit>
    3bfd:	8d 76 00             	lea    0x0(%esi),%esi

00003c00 <rand>:

unsigned long randstate = 1;
unsigned int
rand()
{
  randstate = randstate * 1664525 + 1013904223;
    3c00:	69 05 60 63 00 00 0d 	imul   $0x19660d,0x6360,%eax
    3c07:	66 19 00 
}

unsigned long randstate = 1;
unsigned int
rand()
{
    3c0a:	55                   	push   %ebp
    3c0b:	89 e5                	mov    %esp,%ebp
  randstate = randstate * 1664525 + 1013904223;
  return randstate;
}
    3c0d:	5d                   	pop    %ebp

unsigned long randstate = 1;
unsigned int
rand()
{
  randstate = randstate * 1664525 + 1013904223;
    3c0e:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    3c13:	a3 60 63 00 00       	mov    %eax,0x6360
  return randstate;
}
    3c18:	c3                   	ret    
    3c19:	66 90                	xchg   %ax,%ax
    3c1b:	66 90                	xchg   %ax,%ax
    3c1d:	66 90                	xchg   %ax,%ax
    3c1f:	90                   	nop

00003c20 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
    3c20:	55                   	push   %ebp
    3c21:	89 e5                	mov    %esp,%ebp
    3c23:	53                   	push   %ebx
    3c24:	8b 45 08             	mov    0x8(%ebp),%eax
    3c27:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    3c2a:	89 c2                	mov    %eax,%edx
    3c2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3c30:	83 c1 01             	add    $0x1,%ecx
    3c33:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    3c37:	83 c2 01             	add    $0x1,%edx
    3c3a:	84 db                	test   %bl,%bl
    3c3c:	88 5a ff             	mov    %bl,-0x1(%edx)
    3c3f:	75 ef                	jne    3c30 <strcpy+0x10>
    ;
  return os;
}
    3c41:	5b                   	pop    %ebx
    3c42:	5d                   	pop    %ebp
    3c43:	c3                   	ret    
    3c44:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3c4a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00003c50 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    3c50:	55                   	push   %ebp
    3c51:	89 e5                	mov    %esp,%ebp
    3c53:	56                   	push   %esi
    3c54:	53                   	push   %ebx
    3c55:	8b 55 08             	mov    0x8(%ebp),%edx
    3c58:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    3c5b:	0f b6 02             	movzbl (%edx),%eax
    3c5e:	0f b6 19             	movzbl (%ecx),%ebx
    3c61:	84 c0                	test   %al,%al
    3c63:	75 1e                	jne    3c83 <strcmp+0x33>
    3c65:	eb 29                	jmp    3c90 <strcmp+0x40>
    3c67:	89 f6                	mov    %esi,%esi
    3c69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
    3c70:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    3c73:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    3c76:	8d 71 01             	lea    0x1(%ecx),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    3c79:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
    3c7d:	84 c0                	test   %al,%al
    3c7f:	74 0f                	je     3c90 <strcmp+0x40>
    3c81:	89 f1                	mov    %esi,%ecx
    3c83:	38 d8                	cmp    %bl,%al
    3c85:	74 e9                	je     3c70 <strcmp+0x20>
    p++, q++;
  return (uchar)*p - (uchar)*q;
    3c87:	29 d8                	sub    %ebx,%eax
}
    3c89:	5b                   	pop    %ebx
    3c8a:	5e                   	pop    %esi
    3c8b:	5d                   	pop    %ebp
    3c8c:	c3                   	ret    
    3c8d:	8d 76 00             	lea    0x0(%esi),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    3c90:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
    3c92:	29 d8                	sub    %ebx,%eax
}
    3c94:	5b                   	pop    %ebx
    3c95:	5e                   	pop    %esi
    3c96:	5d                   	pop    %ebp
    3c97:	c3                   	ret    
    3c98:	90                   	nop
    3c99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003ca0 <strlen>:

uint
strlen(char *s)
{
    3ca0:	55                   	push   %ebp
    3ca1:	89 e5                	mov    %esp,%ebp
    3ca3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    3ca6:	80 39 00             	cmpb   $0x0,(%ecx)
    3ca9:	74 12                	je     3cbd <strlen+0x1d>
    3cab:	31 d2                	xor    %edx,%edx
    3cad:	8d 76 00             	lea    0x0(%esi),%esi
    3cb0:	83 c2 01             	add    $0x1,%edx
    3cb3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    3cb7:	89 d0                	mov    %edx,%eax
    3cb9:	75 f5                	jne    3cb0 <strlen+0x10>
    ;
  return n;
}
    3cbb:	5d                   	pop    %ebp
    3cbc:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
    3cbd:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
    3cbf:	5d                   	pop    %ebp
    3cc0:	c3                   	ret    
    3cc1:	eb 0d                	jmp    3cd0 <memset>
    3cc3:	90                   	nop
    3cc4:	90                   	nop
    3cc5:	90                   	nop
    3cc6:	90                   	nop
    3cc7:	90                   	nop
    3cc8:	90                   	nop
    3cc9:	90                   	nop
    3cca:	90                   	nop
    3ccb:	90                   	nop
    3ccc:	90                   	nop
    3ccd:	90                   	nop
    3cce:	90                   	nop
    3ccf:	90                   	nop

00003cd0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    3cd0:	55                   	push   %ebp
    3cd1:	89 e5                	mov    %esp,%ebp
    3cd3:	57                   	push   %edi
    3cd4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    3cd7:	8b 4d 10             	mov    0x10(%ebp),%ecx
    3cda:	8b 45 0c             	mov    0xc(%ebp),%eax
    3cdd:	89 d7                	mov    %edx,%edi
    3cdf:	fc                   	cld    
    3ce0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    3ce2:	89 d0                	mov    %edx,%eax
    3ce4:	5f                   	pop    %edi
    3ce5:	5d                   	pop    %ebp
    3ce6:	c3                   	ret    
    3ce7:	89 f6                	mov    %esi,%esi
    3ce9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003cf0 <strchr>:

char*
strchr(const char *s, char c)
{
    3cf0:	55                   	push   %ebp
    3cf1:	89 e5                	mov    %esp,%ebp
    3cf3:	53                   	push   %ebx
    3cf4:	8b 45 08             	mov    0x8(%ebp),%eax
    3cf7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
    3cfa:	0f b6 10             	movzbl (%eax),%edx
    3cfd:	84 d2                	test   %dl,%dl
    3cff:	74 1d                	je     3d1e <strchr+0x2e>
    if(*s == c)
    3d01:	38 d3                	cmp    %dl,%bl
    3d03:	89 d9                	mov    %ebx,%ecx
    3d05:	75 0d                	jne    3d14 <strchr+0x24>
    3d07:	eb 17                	jmp    3d20 <strchr+0x30>
    3d09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3d10:	38 ca                	cmp    %cl,%dl
    3d12:	74 0c                	je     3d20 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
    3d14:	83 c0 01             	add    $0x1,%eax
    3d17:	0f b6 10             	movzbl (%eax),%edx
    3d1a:	84 d2                	test   %dl,%dl
    3d1c:	75 f2                	jne    3d10 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
    3d1e:	31 c0                	xor    %eax,%eax
}
    3d20:	5b                   	pop    %ebx
    3d21:	5d                   	pop    %ebp
    3d22:	c3                   	ret    
    3d23:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3d29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003d30 <gets>:

char*
gets(char *buf, int max)
{
    3d30:	55                   	push   %ebp
    3d31:	89 e5                	mov    %esp,%ebp
    3d33:	57                   	push   %edi
    3d34:	56                   	push   %esi
    3d35:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    3d36:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
    3d38:	8d 7d e7             	lea    -0x19(%ebp),%edi
  return 0;
}

char*
gets(char *buf, int max)
{
    3d3b:	83 ec 1c             	sub    $0x1c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    3d3e:	eb 29                	jmp    3d69 <gets+0x39>
    cc = read(0, &c, 1);
    3d40:	83 ec 04             	sub    $0x4,%esp
    3d43:	6a 01                	push   $0x1
    3d45:	57                   	push   %edi
    3d46:	6a 00                	push   $0x0
    3d48:	e8 2d 01 00 00       	call   3e7a <read>
    if(cc < 1)
    3d4d:	83 c4 10             	add    $0x10,%esp
    3d50:	85 c0                	test   %eax,%eax
    3d52:	7e 1d                	jle    3d71 <gets+0x41>
      break;
    buf[i++] = c;
    3d54:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    3d58:	8b 55 08             	mov    0x8(%ebp),%edx
    3d5b:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
    3d5d:	3c 0a                	cmp    $0xa,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
    3d5f:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    3d63:	74 1b                	je     3d80 <gets+0x50>
    3d65:	3c 0d                	cmp    $0xd,%al
    3d67:	74 17                	je     3d80 <gets+0x50>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    3d69:	8d 5e 01             	lea    0x1(%esi),%ebx
    3d6c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    3d6f:	7c cf                	jl     3d40 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
    3d71:	8b 45 08             	mov    0x8(%ebp),%eax
    3d74:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    3d78:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3d7b:	5b                   	pop    %ebx
    3d7c:	5e                   	pop    %esi
    3d7d:	5f                   	pop    %edi
    3d7e:	5d                   	pop    %ebp
    3d7f:	c3                   	ret    
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
    3d80:	8b 45 08             	mov    0x8(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    3d83:	89 de                	mov    %ebx,%esi
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
    3d85:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    3d89:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3d8c:	5b                   	pop    %ebx
    3d8d:	5e                   	pop    %esi
    3d8e:	5f                   	pop    %edi
    3d8f:	5d                   	pop    %ebp
    3d90:	c3                   	ret    
    3d91:	eb 0d                	jmp    3da0 <stat>
    3d93:	90                   	nop
    3d94:	90                   	nop
    3d95:	90                   	nop
    3d96:	90                   	nop
    3d97:	90                   	nop
    3d98:	90                   	nop
    3d99:	90                   	nop
    3d9a:	90                   	nop
    3d9b:	90                   	nop
    3d9c:	90                   	nop
    3d9d:	90                   	nop
    3d9e:	90                   	nop
    3d9f:	90                   	nop

00003da0 <stat>:

int
stat(char *n, struct stat *st)
{
    3da0:	55                   	push   %ebp
    3da1:	89 e5                	mov    %esp,%ebp
    3da3:	56                   	push   %esi
    3da4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    3da5:	83 ec 08             	sub    $0x8,%esp
    3da8:	6a 00                	push   $0x0
    3daa:	ff 75 08             	pushl  0x8(%ebp)
    3dad:	e8 f0 00 00 00       	call   3ea2 <open>
  if(fd < 0)
    3db2:	83 c4 10             	add    $0x10,%esp
    3db5:	85 c0                	test   %eax,%eax
    3db7:	78 27                	js     3de0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    3db9:	83 ec 08             	sub    $0x8,%esp
    3dbc:	ff 75 0c             	pushl  0xc(%ebp)
    3dbf:	89 c3                	mov    %eax,%ebx
    3dc1:	50                   	push   %eax
    3dc2:	e8 f3 00 00 00       	call   3eba <fstat>
    3dc7:	89 c6                	mov    %eax,%esi
  close(fd);
    3dc9:	89 1c 24             	mov    %ebx,(%esp)
    3dcc:	e8 b9 00 00 00       	call   3e8a <close>
  return r;
    3dd1:	83 c4 10             	add    $0x10,%esp
    3dd4:	89 f0                	mov    %esi,%eax
}
    3dd6:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3dd9:	5b                   	pop    %ebx
    3dda:	5e                   	pop    %esi
    3ddb:	5d                   	pop    %ebp
    3ddc:	c3                   	ret    
    3ddd:	8d 76 00             	lea    0x0(%esi),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
    3de0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3de5:	eb ef                	jmp    3dd6 <stat+0x36>
    3de7:	89 f6                	mov    %esi,%esi
    3de9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003df0 <atoi>:
  return r;
}

int
atoi(const char *s)
{
    3df0:	55                   	push   %ebp
    3df1:	89 e5                	mov    %esp,%ebp
    3df3:	53                   	push   %ebx
    3df4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    3df7:	0f be 11             	movsbl (%ecx),%edx
    3dfa:	8d 42 d0             	lea    -0x30(%edx),%eax
    3dfd:	3c 09                	cmp    $0x9,%al
    3dff:	b8 00 00 00 00       	mov    $0x0,%eax
    3e04:	77 1f                	ja     3e25 <atoi+0x35>
    3e06:	8d 76 00             	lea    0x0(%esi),%esi
    3e09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
    3e10:	8d 04 80             	lea    (%eax,%eax,4),%eax
    3e13:	83 c1 01             	add    $0x1,%ecx
    3e16:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    3e1a:	0f be 11             	movsbl (%ecx),%edx
    3e1d:	8d 5a d0             	lea    -0x30(%edx),%ebx
    3e20:	80 fb 09             	cmp    $0x9,%bl
    3e23:	76 eb                	jbe    3e10 <atoi+0x20>
    n = n*10 + *s++ - '0';
  return n;
}
    3e25:	5b                   	pop    %ebx
    3e26:	5d                   	pop    %ebp
    3e27:	c3                   	ret    
    3e28:	90                   	nop
    3e29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003e30 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
    3e30:	55                   	push   %ebp
    3e31:	89 e5                	mov    %esp,%ebp
    3e33:	56                   	push   %esi
    3e34:	53                   	push   %ebx
    3e35:	8b 5d 10             	mov    0x10(%ebp),%ebx
    3e38:	8b 45 08             	mov    0x8(%ebp),%eax
    3e3b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    3e3e:	85 db                	test   %ebx,%ebx
    3e40:	7e 14                	jle    3e56 <memmove+0x26>
    3e42:	31 d2                	xor    %edx,%edx
    3e44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    3e48:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    3e4c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    3e4f:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    3e52:	39 da                	cmp    %ebx,%edx
    3e54:	75 f2                	jne    3e48 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
    3e56:	5b                   	pop    %ebx
    3e57:	5e                   	pop    %esi
    3e58:	5d                   	pop    %ebp
    3e59:	c3                   	ret    

00003e5a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    3e5a:	b8 01 00 00 00       	mov    $0x1,%eax
    3e5f:	cd 40                	int    $0x40
    3e61:	c3                   	ret    

00003e62 <exit>:
SYSCALL(exit)
    3e62:	b8 02 00 00 00       	mov    $0x2,%eax
    3e67:	cd 40                	int    $0x40
    3e69:	c3                   	ret    

00003e6a <wait>:
SYSCALL(wait)
    3e6a:	b8 03 00 00 00       	mov    $0x3,%eax
    3e6f:	cd 40                	int    $0x40
    3e71:	c3                   	ret    

00003e72 <pipe>:
SYSCALL(pipe)
    3e72:	b8 04 00 00 00       	mov    $0x4,%eax
    3e77:	cd 40                	int    $0x40
    3e79:	c3                   	ret    

00003e7a <read>:
SYSCALL(read)
    3e7a:	b8 05 00 00 00       	mov    $0x5,%eax
    3e7f:	cd 40                	int    $0x40
    3e81:	c3                   	ret    

00003e82 <write>:
SYSCALL(write)
    3e82:	b8 10 00 00 00       	mov    $0x10,%eax
    3e87:	cd 40                	int    $0x40
    3e89:	c3                   	ret    

00003e8a <close>:
SYSCALL(close)
    3e8a:	b8 15 00 00 00       	mov    $0x15,%eax
    3e8f:	cd 40                	int    $0x40
    3e91:	c3                   	ret    

00003e92 <kill>:
SYSCALL(kill)
    3e92:	b8 06 00 00 00       	mov    $0x6,%eax
    3e97:	cd 40                	int    $0x40
    3e99:	c3                   	ret    

00003e9a <exec>:
SYSCALL(exec)
    3e9a:	b8 07 00 00 00       	mov    $0x7,%eax
    3e9f:	cd 40                	int    $0x40
    3ea1:	c3                   	ret    

00003ea2 <open>:
SYSCALL(open)
    3ea2:	b8 0f 00 00 00       	mov    $0xf,%eax
    3ea7:	cd 40                	int    $0x40
    3ea9:	c3                   	ret    

00003eaa <mknod>:
SYSCALL(mknod)
    3eaa:	b8 11 00 00 00       	mov    $0x11,%eax
    3eaf:	cd 40                	int    $0x40
    3eb1:	c3                   	ret    

00003eb2 <unlink>:
SYSCALL(unlink)
    3eb2:	b8 12 00 00 00       	mov    $0x12,%eax
    3eb7:	cd 40                	int    $0x40
    3eb9:	c3                   	ret    

00003eba <fstat>:
SYSCALL(fstat)
    3eba:	b8 08 00 00 00       	mov    $0x8,%eax
    3ebf:	cd 40                	int    $0x40
    3ec1:	c3                   	ret    

00003ec2 <link>:
SYSCALL(link)
    3ec2:	b8 13 00 00 00       	mov    $0x13,%eax
    3ec7:	cd 40                	int    $0x40
    3ec9:	c3                   	ret    

00003eca <mkdir>:
SYSCALL(mkdir)
    3eca:	b8 14 00 00 00       	mov    $0x14,%eax
    3ecf:	cd 40                	int    $0x40
    3ed1:	c3                   	ret    

00003ed2 <chdir>:
SYSCALL(chdir)
    3ed2:	b8 09 00 00 00       	mov    $0x9,%eax
    3ed7:	cd 40                	int    $0x40
    3ed9:	c3                   	ret    

00003eda <dup>:
SYSCALL(dup)
    3eda:	b8 0a 00 00 00       	mov    $0xa,%eax
    3edf:	cd 40                	int    $0x40
    3ee1:	c3                   	ret    

00003ee2 <getpid>:
SYSCALL(getpid)
    3ee2:	b8 0b 00 00 00       	mov    $0xb,%eax
    3ee7:	cd 40                	int    $0x40
    3ee9:	c3                   	ret    

00003eea <sbrk>:
SYSCALL(sbrk)
    3eea:	b8 0c 00 00 00       	mov    $0xc,%eax
    3eef:	cd 40                	int    $0x40
    3ef1:	c3                   	ret    

00003ef2 <sleep>:
SYSCALL(sleep)
    3ef2:	b8 0d 00 00 00       	mov    $0xd,%eax
    3ef7:	cd 40                	int    $0x40
    3ef9:	c3                   	ret    

00003efa <uptime>:
SYSCALL(uptime)
    3efa:	b8 0e 00 00 00       	mov    $0xe,%eax
    3eff:	cd 40                	int    $0x40
    3f01:	c3                   	ret    

00003f02 <waitpid>:
SYSCALL(waitpid)
    3f02:	b8 16 00 00 00       	mov    $0x16,%eax
    3f07:	cd 40                	int    $0x40
    3f09:	c3                   	ret    
    3f0a:	66 90                	xchg   %ax,%ax
    3f0c:	66 90                	xchg   %ax,%ax
    3f0e:	66 90                	xchg   %ax,%ax

00003f10 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    3f10:	55                   	push   %ebp
    3f11:	89 e5                	mov    %esp,%ebp
    3f13:	57                   	push   %edi
    3f14:	56                   	push   %esi
    3f15:	53                   	push   %ebx
    3f16:	89 c6                	mov    %eax,%esi
    3f18:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    3f1b:	8b 5d 08             	mov    0x8(%ebp),%ebx
    3f1e:	85 db                	test   %ebx,%ebx
    3f20:	74 7e                	je     3fa0 <printint+0x90>
    3f22:	89 d0                	mov    %edx,%eax
    3f24:	c1 e8 1f             	shr    $0x1f,%eax
    3f27:	84 c0                	test   %al,%al
    3f29:	74 75                	je     3fa0 <printint+0x90>
    neg = 1;
    x = -xx;
    3f2b:	89 d0                	mov    %edx,%eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    3f2d:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
    3f34:	f7 d8                	neg    %eax
    3f36:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
    3f39:	31 ff                	xor    %edi,%edi
    3f3b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    3f3e:	89 ce                	mov    %ecx,%esi
    3f40:	eb 08                	jmp    3f4a <printint+0x3a>
    3f42:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    3f48:	89 cf                	mov    %ecx,%edi
    3f4a:	31 d2                	xor    %edx,%edx
    3f4c:	8d 4f 01             	lea    0x1(%edi),%ecx
    3f4f:	f7 f6                	div    %esi
    3f51:	0f b6 92 70 5a 00 00 	movzbl 0x5a70(%edx),%edx
  }while((x /= base) != 0);
    3f58:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
    3f5a:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
    3f5d:	75 e9                	jne    3f48 <printint+0x38>
  if(neg)
    3f5f:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    3f62:	8b 75 c0             	mov    -0x40(%ebp),%esi
    3f65:	85 c0                	test   %eax,%eax
    3f67:	74 08                	je     3f71 <printint+0x61>
    buf[i++] = '-';
    3f69:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
    3f6e:	8d 4f 02             	lea    0x2(%edi),%ecx
    3f71:	8d 7c 0d d7          	lea    -0x29(%ebp,%ecx,1),%edi
    3f75:	8d 76 00             	lea    0x0(%esi),%esi
    3f78:	0f b6 07             	movzbl (%edi),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3f7b:	83 ec 04             	sub    $0x4,%esp
    3f7e:	83 ef 01             	sub    $0x1,%edi
    3f81:	6a 01                	push   $0x1
    3f83:	53                   	push   %ebx
    3f84:	56                   	push   %esi
    3f85:	88 45 d7             	mov    %al,-0x29(%ebp)
    3f88:	e8 f5 fe ff ff       	call   3e82 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
    3f8d:	83 c4 10             	add    $0x10,%esp
    3f90:	39 df                	cmp    %ebx,%edi
    3f92:	75 e4                	jne    3f78 <printint+0x68>
    putc(fd, buf[i]);
}
    3f94:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3f97:	5b                   	pop    %ebx
    3f98:	5e                   	pop    %esi
    3f99:	5f                   	pop    %edi
    3f9a:	5d                   	pop    %ebp
    3f9b:	c3                   	ret    
    3f9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
    3fa0:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
    3fa2:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    3fa9:	eb 8b                	jmp    3f36 <printint+0x26>
    3fab:	90                   	nop
    3fac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003fb0 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    3fb0:	55                   	push   %ebp
    3fb1:	89 e5                	mov    %esp,%ebp
    3fb3:	57                   	push   %edi
    3fb4:	56                   	push   %esi
    3fb5:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    3fb6:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    3fb9:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    3fbc:	8b 75 0c             	mov    0xc(%ebp),%esi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    3fbf:	8b 7d 08             	mov    0x8(%ebp),%edi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    3fc2:	89 45 d0             	mov    %eax,-0x30(%ebp)
    3fc5:	0f b6 1e             	movzbl (%esi),%ebx
    3fc8:	83 c6 01             	add    $0x1,%esi
    3fcb:	84 db                	test   %bl,%bl
    3fcd:	0f 84 b0 00 00 00    	je     4083 <printf+0xd3>
    3fd3:	31 d2                	xor    %edx,%edx
    3fd5:	eb 39                	jmp    4010 <printf+0x60>
    3fd7:	89 f6                	mov    %esi,%esi
    3fd9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    3fe0:	83 f8 25             	cmp    $0x25,%eax
    3fe3:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
    3fe6:	ba 25 00 00 00       	mov    $0x25,%edx
  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    3feb:	74 18                	je     4005 <printf+0x55>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3fed:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    3ff0:	83 ec 04             	sub    $0x4,%esp
    3ff3:	88 5d e2             	mov    %bl,-0x1e(%ebp)
    3ff6:	6a 01                	push   $0x1
    3ff8:	50                   	push   %eax
    3ff9:	57                   	push   %edi
    3ffa:	e8 83 fe ff ff       	call   3e82 <write>
    3fff:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    4002:	83 c4 10             	add    $0x10,%esp
    4005:	83 c6 01             	add    $0x1,%esi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    4008:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    400c:	84 db                	test   %bl,%bl
    400e:	74 73                	je     4083 <printf+0xd3>
    c = fmt[i] & 0xff;
    if(state == 0){
    4010:	85 d2                	test   %edx,%edx
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    4012:	0f be cb             	movsbl %bl,%ecx
    4015:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    4018:	74 c6                	je     3fe0 <printf+0x30>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    401a:	83 fa 25             	cmp    $0x25,%edx
    401d:	75 e6                	jne    4005 <printf+0x55>
      if(c == 'd'){
    401f:	83 f8 64             	cmp    $0x64,%eax
    4022:	0f 84 f8 00 00 00    	je     4120 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    4028:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    402e:	83 f9 70             	cmp    $0x70,%ecx
    4031:	74 5d                	je     4090 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    4033:	83 f8 73             	cmp    $0x73,%eax
    4036:	0f 84 84 00 00 00    	je     40c0 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    403c:	83 f8 63             	cmp    $0x63,%eax
    403f:	0f 84 ea 00 00 00    	je     412f <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    4045:	83 f8 25             	cmp    $0x25,%eax
    4048:	0f 84 c2 00 00 00    	je     4110 <printf+0x160>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    404e:	8d 45 e7             	lea    -0x19(%ebp),%eax
    4051:	83 ec 04             	sub    $0x4,%esp
    4054:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    4058:	6a 01                	push   $0x1
    405a:	50                   	push   %eax
    405b:	57                   	push   %edi
    405c:	e8 21 fe ff ff       	call   3e82 <write>
    4061:	83 c4 0c             	add    $0xc,%esp
    4064:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    4067:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    406a:	6a 01                	push   $0x1
    406c:	50                   	push   %eax
    406d:	57                   	push   %edi
    406e:	83 c6 01             	add    $0x1,%esi
    4071:	e8 0c fe ff ff       	call   3e82 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    4076:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    407a:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    407d:	31 d2                	xor    %edx,%edx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    407f:	84 db                	test   %bl,%bl
    4081:	75 8d                	jne    4010 <printf+0x60>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
    4083:	8d 65 f4             	lea    -0xc(%ebp),%esp
    4086:	5b                   	pop    %ebx
    4087:	5e                   	pop    %esi
    4088:	5f                   	pop    %edi
    4089:	5d                   	pop    %ebp
    408a:	c3                   	ret    
    408b:	90                   	nop
    408c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
    4090:	83 ec 0c             	sub    $0xc,%esp
    4093:	b9 10 00 00 00       	mov    $0x10,%ecx
    4098:	6a 00                	push   $0x0
    409a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    409d:	89 f8                	mov    %edi,%eax
    409f:	8b 13                	mov    (%ebx),%edx
    40a1:	e8 6a fe ff ff       	call   3f10 <printint>
        ap++;
    40a6:	89 d8                	mov    %ebx,%eax
    40a8:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    40ab:	31 d2                	xor    %edx,%edx
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
    40ad:	83 c0 04             	add    $0x4,%eax
    40b0:	89 45 d0             	mov    %eax,-0x30(%ebp)
    40b3:	e9 4d ff ff ff       	jmp    4005 <printf+0x55>
    40b8:	90                   	nop
    40b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
    40c0:	8b 45 d0             	mov    -0x30(%ebp),%eax
    40c3:	8b 18                	mov    (%eax),%ebx
        ap++;
    40c5:	83 c0 04             	add    $0x4,%eax
    40c8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
          s = "(null)";
    40cb:	b8 68 5a 00 00       	mov    $0x5a68,%eax
    40d0:	85 db                	test   %ebx,%ebx
    40d2:	0f 44 d8             	cmove  %eax,%ebx
        while(*s != 0){
    40d5:	0f b6 03             	movzbl (%ebx),%eax
    40d8:	84 c0                	test   %al,%al
    40da:	74 23                	je     40ff <printf+0x14f>
    40dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    40e0:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    40e3:	8d 45 e3             	lea    -0x1d(%ebp),%eax
    40e6:	83 ec 04             	sub    $0x4,%esp
    40e9:	6a 01                	push   $0x1
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
    40eb:	83 c3 01             	add    $0x1,%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    40ee:	50                   	push   %eax
    40ef:	57                   	push   %edi
    40f0:	e8 8d fd ff ff       	call   3e82 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
    40f5:	0f b6 03             	movzbl (%ebx),%eax
    40f8:	83 c4 10             	add    $0x10,%esp
    40fb:	84 c0                	test   %al,%al
    40fd:	75 e1                	jne    40e0 <printf+0x130>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    40ff:	31 d2                	xor    %edx,%edx
    4101:	e9 ff fe ff ff       	jmp    4005 <printf+0x55>
    4106:	8d 76 00             	lea    0x0(%esi),%esi
    4109:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    4110:	83 ec 04             	sub    $0x4,%esp
    4113:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    4116:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    4119:	6a 01                	push   $0x1
    411b:	e9 4c ff ff ff       	jmp    406c <printf+0xbc>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
    4120:	83 ec 0c             	sub    $0xc,%esp
    4123:	b9 0a 00 00 00       	mov    $0xa,%ecx
    4128:	6a 01                	push   $0x1
    412a:	e9 6b ff ff ff       	jmp    409a <printf+0xea>
    412f:	8b 5d d0             	mov    -0x30(%ebp),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    4132:	83 ec 04             	sub    $0x4,%esp
    4135:	8b 03                	mov    (%ebx),%eax
    4137:	6a 01                	push   $0x1
    4139:	88 45 e4             	mov    %al,-0x1c(%ebp)
    413c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    413f:	50                   	push   %eax
    4140:	57                   	push   %edi
    4141:	e8 3c fd ff ff       	call   3e82 <write>
    4146:	e9 5b ff ff ff       	jmp    40a6 <printf+0xf6>
    414b:	66 90                	xchg   %ax,%ax
    414d:	66 90                	xchg   %ax,%ax
    414f:	90                   	nop

00004150 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    4150:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4151:	a1 00 64 00 00       	mov    0x6400,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
    4156:	89 e5                	mov    %esp,%ebp
    4158:	57                   	push   %edi
    4159:	56                   	push   %esi
    415a:	53                   	push   %ebx
    415b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    415e:	8b 10                	mov    (%eax),%edx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
    4160:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4163:	39 c8                	cmp    %ecx,%eax
    4165:	73 19                	jae    4180 <free+0x30>
    4167:	89 f6                	mov    %esi,%esi
    4169:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    4170:	39 d1                	cmp    %edx,%ecx
    4172:	72 1c                	jb     4190 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    4174:	39 d0                	cmp    %edx,%eax
    4176:	73 18                	jae    4190 <free+0x40>
static Header base;
static Header *freep;

void
free(void *ap)
{
    4178:	89 d0                	mov    %edx,%eax
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    417a:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    417c:	8b 10                	mov    (%eax),%edx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    417e:	72 f0                	jb     4170 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    4180:	39 d0                	cmp    %edx,%eax
    4182:	72 f4                	jb     4178 <free+0x28>
    4184:	39 d1                	cmp    %edx,%ecx
    4186:	73 f0                	jae    4178 <free+0x28>
    4188:	90                   	nop
    4189:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
    4190:	8b 73 fc             	mov    -0x4(%ebx),%esi
    4193:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    4196:	39 d7                	cmp    %edx,%edi
    4198:	74 19                	je     41b3 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    419a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    419d:	8b 50 04             	mov    0x4(%eax),%edx
    41a0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    41a3:	39 f1                	cmp    %esi,%ecx
    41a5:	74 23                	je     41ca <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    41a7:	89 08                	mov    %ecx,(%eax)
  freep = p;
    41a9:	a3 00 64 00 00       	mov    %eax,0x6400
}
    41ae:	5b                   	pop    %ebx
    41af:	5e                   	pop    %esi
    41b0:	5f                   	pop    %edi
    41b1:	5d                   	pop    %ebp
    41b2:	c3                   	ret    
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
    41b3:	03 72 04             	add    0x4(%edx),%esi
    41b6:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    41b9:	8b 10                	mov    (%eax),%edx
    41bb:	8b 12                	mov    (%edx),%edx
    41bd:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    41c0:	8b 50 04             	mov    0x4(%eax),%edx
    41c3:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    41c6:	39 f1                	cmp    %esi,%ecx
    41c8:	75 dd                	jne    41a7 <free+0x57>
    p->s.size += bp->s.size;
    41ca:	03 53 fc             	add    -0x4(%ebx),%edx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
    41cd:	a3 00 64 00 00       	mov    %eax,0x6400
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
    41d2:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    41d5:	8b 53 f8             	mov    -0x8(%ebx),%edx
    41d8:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
    41da:	5b                   	pop    %ebx
    41db:	5e                   	pop    %esi
    41dc:	5f                   	pop    %edi
    41dd:	5d                   	pop    %ebp
    41de:	c3                   	ret    
    41df:	90                   	nop

000041e0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    41e0:	55                   	push   %ebp
    41e1:	89 e5                	mov    %esp,%ebp
    41e3:	57                   	push   %edi
    41e4:	56                   	push   %esi
    41e5:	53                   	push   %ebx
    41e6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    41e9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    41ec:	8b 15 00 64 00 00    	mov    0x6400,%edx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    41f2:	8d 78 07             	lea    0x7(%eax),%edi
    41f5:	c1 ef 03             	shr    $0x3,%edi
    41f8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    41fb:	85 d2                	test   %edx,%edx
    41fd:	0f 84 a3 00 00 00    	je     42a6 <malloc+0xc6>
    4203:	8b 02                	mov    (%edx),%eax
    4205:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    4208:	39 cf                	cmp    %ecx,%edi
    420a:	76 74                	jbe    4280 <malloc+0xa0>
    420c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    4212:	be 00 10 00 00       	mov    $0x1000,%esi
    4217:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
    421e:	0f 43 f7             	cmovae %edi,%esi
    4221:	ba 00 80 00 00       	mov    $0x8000,%edx
    4226:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
    422c:	0f 46 da             	cmovbe %edx,%ebx
    422f:	eb 10                	jmp    4241 <malloc+0x61>
    4231:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    4238:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    423a:	8b 48 04             	mov    0x4(%eax),%ecx
    423d:	39 cf                	cmp    %ecx,%edi
    423f:	76 3f                	jbe    4280 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    4241:	39 05 00 64 00 00    	cmp    %eax,0x6400
    4247:	89 c2                	mov    %eax,%edx
    4249:	75 ed                	jne    4238 <malloc+0x58>
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
    424b:	83 ec 0c             	sub    $0xc,%esp
    424e:	53                   	push   %ebx
    424f:	e8 96 fc ff ff       	call   3eea <sbrk>
  if(p == (char*)-1)
    4254:	83 c4 10             	add    $0x10,%esp
    4257:	83 f8 ff             	cmp    $0xffffffff,%eax
    425a:	74 1c                	je     4278 <malloc+0x98>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
    425c:	89 70 04             	mov    %esi,0x4(%eax)
  free((void*)(hp + 1));
    425f:	83 ec 0c             	sub    $0xc,%esp
    4262:	83 c0 08             	add    $0x8,%eax
    4265:	50                   	push   %eax
    4266:	e8 e5 fe ff ff       	call   4150 <free>
  return freep;
    426b:	8b 15 00 64 00 00    	mov    0x6400,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
    4271:	83 c4 10             	add    $0x10,%esp
    4274:	85 d2                	test   %edx,%edx
    4276:	75 c0                	jne    4238 <malloc+0x58>
        return 0;
    4278:	31 c0                	xor    %eax,%eax
    427a:	eb 1c                	jmp    4298 <malloc+0xb8>
    427c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
    4280:	39 cf                	cmp    %ecx,%edi
    4282:	74 1c                	je     42a0 <malloc+0xc0>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
    4284:	29 f9                	sub    %edi,%ecx
    4286:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    4289:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    428c:	89 78 04             	mov    %edi,0x4(%eax)
      }
      freep = prevp;
    428f:	89 15 00 64 00 00    	mov    %edx,0x6400
      return (void*)(p + 1);
    4295:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
    4298:	8d 65 f4             	lea    -0xc(%ebp),%esp
    429b:	5b                   	pop    %ebx
    429c:	5e                   	pop    %esi
    429d:	5f                   	pop    %edi
    429e:	5d                   	pop    %ebp
    429f:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
    42a0:	8b 08                	mov    (%eax),%ecx
    42a2:	89 0a                	mov    %ecx,(%edx)
    42a4:	eb e9                	jmp    428f <malloc+0xaf>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    42a6:	c7 05 00 64 00 00 04 	movl   $0x6404,0x6400
    42ad:	64 00 00 
    42b0:	c7 05 04 64 00 00 04 	movl   $0x6404,0x6404
    42b7:	64 00 00 
    base.s.size = 0;
    42ba:	b8 04 64 00 00       	mov    $0x6404,%eax
    42bf:	c7 05 08 64 00 00 00 	movl   $0x0,0x6408
    42c6:	00 00 00 
    42c9:	e9 3e ff ff ff       	jmp    420c <malloc+0x2c>
