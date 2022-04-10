Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 475444FAED8
	for <lists+v9fs-developer@lfdr.de>; Sun, 10 Apr 2022 18:19:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ndaI4-0001sa-TM; Sun, 10 Apr 2022 16:19:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1ndaI3-0001sS-KH
 for v9fs-developer@lists.sourceforge.net; Sun, 10 Apr 2022 16:19:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iXhxaxOJ7zcu/qjQPnyjomESbF8vvrLASyS5P7s+x3k=; b=KkG0sMpE6mk53rUZT32XNOg664
 TFd2PEVkPnuu9eDHTWF3UYh1KUc7BUrpoCHqIEh7uBJjk5vG4qkSufuPrhhdU68vYCyH76ec3Y8Uf
 uUjmbyQWmOS0zG1s0GnGGJhA/XIMIpmogyCb43KC7I65fiKYeZPGIuQz3MtrxoBM2vig=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iXhxaxOJ7zcu/qjQPnyjomESbF8vvrLASyS5P7s+x3k=; b=Kii8YPhiwpTo87TIGXhgZn/Sra
 isRz202mrAa2lwrfRsBUE+MmTUldjrc0DZfL8HqHMEZMsQq8Nd6Owpp1qKv8TO1znCYbxTKTNbISJ
 VR30aI1uwC6/3Xccp5LcHQVWpBGVCC8S3y1R+zAbRKI30tY6flSlnp8QD1pxjOFcO6Ro=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1ndaI1-0004Fx-44
 for v9fs-developer@lists.sourceforge.net; Sun, 10 Apr 2022 16:19:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=iXhxaxOJ7zcu/qjQPnyjomESbF8vvrLASyS5P7s+x3k=; b=jmLugh90t2msM6S5E0h/SNUMBJ
 Jv6yqUTaFeAFbb7FYRdELoxxH0oWEHMbSwRjaKIKvQEbkPw5MwI9O0y+IkWMx2ARzMaeyKxVXiuoo
 behJgtO3xLf5mVDLclw4bFjFQwNqfAV/c7pgYWnHfZqUyPEWKcVZDUC46t0tvBeCMtHHhQ1gyq5um
 Sr7GOfuEE0OCvaYgG5dMli7kIWd0HlTlTKxJY6JD35a/hSo1DCHcZTGv5P8VGVH6p5k20m8mJZp71
 pyxKDXTc0Vdd/67XGATa1+IexLIkZO8eKvreUVShnE2JVRsG4XcQN6spPPsR003BDdMsBIfqxwWyC
 keHSHbGbYtWdH0Hv7tFc5WMwvNtG7XRY0Fwx+7MQ6ML2L2Unf7xZSGMYeoSv/bhxChyYRbmxUCKTq
 FQplaaFeifWf7JXk1Mdy3kXJl1sArYGawiaD5CrvL8huHA9Yro+WYkU0yKNwgyIUoE+bh2dnRIJu2
 SwqhS8oN/OWhKx9mMBMa9Kp1H/4x8uopsih9WyO+KIRKV7KCiNyFRhMhU2LD1fgi+f/W2HOMBzEiw
 6PZ/1tcH2+ksytYHCNrG9E0XvrM5UWOvuNHu8PNhuMyOEhlMzcFGz9Eh5p5Wvyf8Qppb3U51NfJ+P
 jnSF4gbokxB+HPZfHa8OjOg+xXy2OB33SqY5nyBDg=;
To: asmadeus@codewreck.org
Date: Sun, 10 Apr 2022 18:18:38 +0200
Message-ID: <1966295.VQPMLLWD4E@silver>
In-Reply-To: <9591612.lsmsJCMaJN@silver>
References: <CAAZOf26g-L2nSV-Siw6mwWQv1nv6on8c0fWqB4bKmX73QAFzow@mail.gmail.com>
 <3791738.ukkqOL8KQD@silver> <9591612.lsmsJCMaJN@silver>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Samstag, 9. April 2022 13:16:11 CEST Christian Schoenebeck
    wrote: > On Mittwoch, 30. März 2022 14:21:16 CEST Christian Schoenebeck wrote:
    > > I made some tests & benchmarks regarding the fs-cache i [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1ndaI1-0004Fx-44
Subject: Re: [V9fs-developer] 9p fs-cache tests/benchmark (was: 9p fscache
 Duplicate cookie detected)
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: lucho@ionkov.net, David Kahurani <k.kahurani@gmail.com>, ericvh@gmail.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kurz <groug@kaod.org>, David Howells <dhowells@redhat.com>,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Samstag, 9. April 2022 13:16:11 CEST Christian Schoenebeck wrote:
> On Mittwoch, 30. M=E4rz 2022 14:21:16 CEST Christian Schoenebeck wrote:
> > I made some tests & benchmarks regarding the fs-cache issue of 9p, runn=
ing
> > different kernel versions and kernel configurations in comparison.
> [...]
> > Case  Linux kernel version           .config  msize    cache  duration =
 host cpu  errors/warnings
> >
> > A)    5.17.0+[2] + msize patches[1]  debug    4186112  mmap   20m 40s  =
 ~80%      none
> > B)    5.17.0+[2] + msize patches[1]  debug    4186112  loose  31m 28s  =
 ~35%      several errors (compilation completed)
> > C)    5.17.0+[2] + msize patches[1]  debug    507904   mmap   20m 25s  =
 ~84%      none
> > D)    5.17.0+[2] + msize patches[1]  debug    507904   loose  31m 2s   =
 ~33%      several errors (compilation completed)
> > E)    5.17.0+[2]                     debug    512000   mmap   23m 45s  =
 ~75%      none
> > F)    5.17.0+[2]                     debug    512000   loose  32m 6s   =
 ~31%      several errors (compilation completed)
> > G)    5.17.0+[2]                     release  512000   mmap   23m 18s  =
 ~76%      none
> > H)    5.17.0+[2]                     release  512000   loose  32m 33s  =
 ~31%      several errors (compilation completed)
> > I)    5.17.0+[2] + msize patches[1]  release  4186112  mmap   20m 30s  =
 ~83%      none
> > J)    5.17.0+[2] + msize patches[1]  release  4186112  loose  31m 21s  =
 ~31%      several errors (compilation completed)
> > K)    5.10.84                        release  512000   mmap   39m 20s  =
 ~80%      none
> > L)    5.10.84                        release  512000   loose  13m 40s  =
 ~55%      none
> [...]
> > About the errors: I actually already see errors with cache=3Dloose and =
recent
> > kernel version just when booting the guest OS. For these tests I chose =
some
> > sources which allowed me to complete the build to capture some benchmar=
k as
> > well, I got some "soft" errors with those, but the build completed at l=
east.
> > I had other sources OTOH which did not complete though and aborted with
> > certain invalid file descriptor errors, which I obviously could not use=
 for
> > those benchmarks here.
> =

> I used git-bisect to identify the commit that broke 9p behaviour, and it =
is
> indeed this one:
> =

> commit eb497943fa215897f2f60fd28aa6fe52da27ca6c (HEAD, refs/bisect/bad)
> Author: David Howells <dhowells@redhat.com>
> Date:   Tue Nov 2 08:29:55 2021 +0000
> =

>     9p: Convert to using the netfs helper lib to do reads and caching
>     =

>     Convert the 9p filesystem to use the netfs helper lib to handle readp=
age,
>     readahead and write_begin, converting those into a common issue_op fo=
r the
>     filesystem itself to handle.  The netfs helper lib also handles readi=
ng
>     from fscache if a cache is available, and interleaving reads from both
>     sources.

I looked into the errors I get, and as far as I can see it, all misbehaviou=
rs
that I see, boil down to "Bad file descriptor" (EBADF) errors being the
originating cause.

The easiest misbehaviours on the guest system I can look into, are errors
with the git client. For instance 'git fetch origin' fails this way:

...
write(3, "d16782889ee07005d1f57eb884f4a06b"..., 40) =3D 40
write(3, "\n", 1)                       =3D 1
close(3)                                =3D 0
access(".git/hooks/reference-transaction", X_OK) =3D -1 ENOENT (No such fil=
e or directory)
openat(AT_FDCWD, ".git/logs/refs/remotes/origin/master", O_WRONLY|O_CREAT|O=
_APPEND, 0666) =3D 3
openat(AT_FDCWD, "/etc/localtime", O_RDONLY|O_CLOEXEC) =3D 7
fstat(7, {st_mode=3DS_IFREG|0644, st_size=3D2326, ...}) =3D 0
fstat(7, {st_mode=3DS_IFREG|0644, st_size=3D2326, ...}) =3D 0
read(7, "TZif2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\t\0\0\0\t\0\0\0\0"..., 8=
192) =3D 2326
lseek(7, -1467, SEEK_CUR)               =3D 859
read(7, "TZif2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\t\0\0\0\t\0\0\0\0"..., 8=
192) =3D 1467
close(7)                                =3D 0
write(3, "d8a68c5027ef629d93b9d9519ff4da95"..., 168) =3D -1 EBADF (Bad file=
 descriptor)
...
error: cannot update the ref 'refs/remotes/origin/master': unable to append=
 to '.git/logs/refs/remotes/origin/master': Bad file descriptor

I tried to manually replicate those file access operations on that
.git/logs/refs/remotes/origin/master file in question, and it worked. But w=
hen
I look at the strace output above, I see there is a close(3) call just befo=
re
the subsequent openat(".git/logs/refs/remotes/origin/master") call returnin=
g 3,
which makes me wonder, is this maybe a concurrency issue on file descriptor
management?

Ideas anyone?

Best regards,
Christian Schoenebeck






_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
