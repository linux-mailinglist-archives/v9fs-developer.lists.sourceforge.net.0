Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 983EA3D0EC1
	for <lists+v9fs-developer@lfdr.de>; Wed, 21 Jul 2021 14:22:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pqx0vjT5sVltIsNGBUnTpsdGsqyCzdbiCK46ElDh2sQ=; b=UZIjSb5C0Uk9GbAc3GYnGpH8z
	4QlBatlXdRkxnfcYt/XpU6Q/ZZ1eJloH+FpAv3YtpaVE8yLT1oivjR5RDsfwltZmv/lyHeht1awpQ
	MOeQxWITgKS4fw8SQHSVchrU04qLZG2fcnUogkVJIU7vRJTAvIYxU7fV96nANJcKL+NoM=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m6BFZ-0007eT-5c; Wed, 21 Jul 2021 12:22:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <qemu_oss@crudebyte.com>) id 1m6BFX-0007eI-GC
 for v9fs-developer@lists.sourceforge.net; Wed, 21 Jul 2021 12:22:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ALSXaGUwKqtUwhb4CrYwk1phMfIPhzy9s/P7EfM9LQQ=; b=U6+LbHrAyqBQrnUUGl0VDaTP9A
 FPxSsbs0ttQP97PAPWmDytrMurzyDvuSFXxFd56mAOLxaVI8WgoA1Fn++/YowoxD9poygkfvZQ2c1
 T4DKoepuDERDzvzATZaSZf+MYUnIDSCYwS9rOSY1hvC2VVEKa5wy7OhkIY74IutPU9WY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ALSXaGUwKqtUwhb4CrYwk1phMfIPhzy9s/P7EfM9LQQ=; b=LO+bHiLBGQjTxvI+UeEfaFFauo
 PfobLIeBJo3UWOgDSI81EPPDiHqKlDihmZBN2ibZ+xYIbs0f0measECc+I2nG7h9l5SpoHvPUyo56
 5uPWnVdctCJC08u5/OgNXulWXHKBSxpQzqzthYtBx2sbp6MKhHfnw/SyxIttGcSEp5cw=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m6BFK-00Ffnv-Fy
 for v9fs-developer@lists.sourceforge.net; Wed, 21 Jul 2021 12:22:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=ALSXaGUwKqtUwhb4CrYwk1phMfIPhzy9s/P7EfM9LQQ=; b=Shi7oKE5OKpepb+geV9+5UBqH4
 avF0VKnDU3e64Klf7vT27o93/8YHunnqMFglHDqN0OS7UKZ4mXcl5AbR6+0TPobKgz3LW6BTINpRx
 BZwxQ449MEbVQLJvuxdO9mdKJEigm2TBp3zzAU0b1F7gP4Fzm7mKt7ASAbuXfGVU8G4Vz4Ug4RBJK
 3aeB2o7h17il5kBoYjkknD8vwQVwsVMJjW8T2nqvpO2xWqJr/dKwtVGs4m+Ba+cwMphOHCi1rJtES
 MjQve0TZurGGV1WF8hPJxECCZ1jCrfKggBB9jvcEFlcFgaoyPDOHOO6X5b5EZTwE9vxoInRzKtrH6
 GOhl1mj2uJzDke11MZ4t7QzAY8YQlLHYEldQdJom8xAYZVyq8vJjAuQFOIjbYYjtoCgI5jvdScgiS
 cV3Xwr8ssYfgMXBR0EZcp2ZIpD6bItojIhMCfW0RvmHFYKpZSx0o6+21Gd39Fui+kc7uUTINS7qIS
 6qlhpKwiUwOCJDms9ETCesfmODeB/mlJBNlPNhV777TAti7HJFxAwLPpZoJ4LeA6w8ztRK7j5aKAb
 u9pj9zpQR0PrqBT6op78L+eMG9+huRDXbustV22DBad0Tj/IrzkP+syEKw3ze671jNtLP/BinHe0B
 S+hITX0UsFZ6XeeyZQKVfy3+6ghYa8mT6jfgh73KU=;
To: bug-tar@gnu.org
Date: Wed, 21 Jul 2021 13:47:54 +0200
Message-ID: <1626869407.N3qi2ZRltA@silver>
In-Reply-To: <YPdjlDaM5DupjHU+@codewreck.org>
References: <2672527.YDO70zjxOC@silver> <YPcEjQ7ZQhm3WSyx@redhat.com>
 <YPdjlDaM5DupjHU+@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: gnu.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1m6BFK-00Ffnv-Fy
Subject: Re: [V9fs-developer] tar does not support partial reads
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
Reply-To: Christian Schoenebeck <qemu_oss@crudebyte.com>
Cc: Daniel =?ISO-8859-1?Q?P=2E_Berrang=E9?= <berrange@redhat.com>,
 Greg Kurz <groug@kaod.org>, Sergey Alirzaev <l29ah@cock.li>,
 Nikos Tsipinakis <nikos@tsipinakis.com>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mittwoch, 21. Juli 2021 02:00:20 CEST Dominique Martinet wrote:
> Daniel P. Berrang=E9 wrote on Tue, Jul 20, 2021 at 06:14:53PM +0100:
> > > > When attempting to read a file (other than a pipe or FIFO) that =

supports non-blocking reads and has no data currently available:
> > > >     - If O_NONBLOCK is set, read() shall return -1 and set errno to
> > > >     [EAGAIN].
> > > >     =

> > > >     - If O_NONBLOCK is clear, read() shall block the calling thread
> > > >     until some data becomes available.
> > > >     =

> > > >     - The use of the O_NONBLOCK flag has no effect if there is some
> > > >     data available.> > > =

> > > > and
> > > > =

> > > > [EAGAIN]
> > > > =

> > > >     The file is neither a pipe, nor a FIFO, nor a socket, the
> > > >     O_NONBLOCK flag is set for the file descriptor, and the thread
> > > >     would be delayed in the read operation.
> Not much time to reply now (will follow up in more details tomorrow),
> but that was (unfortunately?) a voluntary change:
> =

> http://lkml.kernel.org/r/20200205003457.24340-2-l29ah@cock.li
> =

> with the argument that if some program goes out of its way to use
> O_NONBLOCK on open it can also handle short reads (which by the way can
> also happen without O_NONBLOCK as bugs on other filesystems, so in my
> opinion is something that should be handled regardless of what we do
> here -- I've seen enough data being eaten by programs that take
> shortcuts on IO as soon as something goes wrong instead of erroring or
> taking care of these)
> =

> Unfortunately GNU tar doesn't, and Nikos Tsipinakis (added to Ccs) sent
> a patch to bug-tar@ in ... september last year which looked good enough
> to me but didn't seem to be taken? I didn't check.

For reference, Nikos' full_read() patch for tar from Sept 2020:
https://lists.gnu.org/archive/html/bug-tar/2020-09/msg00001.html

> I agree this isn't posix, but it was discussed as a quirk that seemed
> better than yet another weird mount option that e.g. NFS has for special
> netfs behaviour.
> =

> The argument was for synthetic fs having a file that would stream things
> and implementing tail -f like behaviour on it, problem being that if
> they would make the fake-file a pipe it would stay local to the linux
> client and not go through the 9p server, so it was deemed difficult to
> emulate the behaviour.
> If you have a practical way of doing this then I'll be happy to revert
> Sergey's commit (also added to cc), as I can agree sticking to posix
> when possible is better.

Allowing partial reads is useful, sometimes even necessary. That POSIX =

mandates this to be an exclusive feature for non-regular files (i.e. being =

explicitly marked as such) no longer fits into our time.

Forcing either one behaviour system wide for all apps will still break thin=
gs, =

no matter if hard coded or as a mount option.

I would prefer a more general solution allowing individual apps to decide =

whether they want to allow short reads or not, e.g. by adding a public flag =

like O_PARTIAL to fcntl.h on Linux side.

> > > I was thinking to something like that (not tested yet):
> > > =

> > > --- a/fs/9p/vfs_file.c
> > > +++ b/fs/9p/vfs_file.c
> > > @@ -389,8 +389,22 @@ v9fs_file_read_iter(struct kiocb *iocb, struct
> > > iov_iter *t>> > =

> > >         p9_debug(P9_DEBUG_VFS, "count %zu offset %lld\n",
> > >         =

> > >                  iov_iter_count(to), iocb->ki_pos);
> > > =

> > > -       if (iocb->ki_filp->f_flags & O_NONBLOCK)
> > > +       if (iocb->ki_filp->f_flags & O_NONBLOCK) {
> > > +               size_t count =3D iov_iter_count(to);
> > > +
> > > =

> > >                 ret =3D p9_client_read_once(fid, iocb->ki_pos, to, &e=
rr);
> > > =

> > > +               if (!ret)
> > > +                       return err;
> > > +
> > > +               /*
> > > +                * POSIX requires to ignore O_NONBLOCK if some data is
> > > +                * already available.
> > > +                */
> > > +               if (ret !=3D count) {
> > > +                       iocb->ki_pos +=3D ret;
> > > +                       ret =3D p9_client_read(fid, iocb->ki_pos, to,
> > > &err);
> > > +               }
> =

> That seems overly complicated, just use p9_client_read as per the else
> (e.g. remove the condition) if that's what you want.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
