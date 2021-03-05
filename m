Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E900032ED88
	for <lists+v9fs-developer@lfdr.de>; Fri,  5 Mar 2021 15:58:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bO2BV99H1GoeK7B2skPRhoO7e+Ev/k9BkEcY/85fhaY=; b=YrgnH28JMvWu/p23wkfh1PJgZ
	it8swKyEpr1YTBkIrCu/CoPtv0CeXg/FGw/1twXqWsXa0Sym3fhACnk756Bf+ilpm1jpQTh0h9g9K
	MuEZIDtKFG3My2dr4y8LWT5xvMn/o6joeoR731OYC5DZAObX0DX0XL4Ll2LSX4RfIF7ec=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lIBuM-0002Bm-1x; Fri, 05 Mar 2021 14:58:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <qemu_oss@crudebyte.com>) id 1lIBuJ-0002Bd-PJ
 for v9fs-developer@lists.sourceforge.net; Fri, 05 Mar 2021 14:58:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OCjB31jRrF5NsAhYCmtmSA4VIvxUrAeSy4dF2aX7weE=; b=AZTNCzxpYVTZhBRgbAAG06+MPg
 Grb54feRS53D9yHEdXx9V3a2vZ7xozc9KXip9OHGzuEOhNDGsYzfp5CPRTXa/OoO/XdFKCwxJO0zt
 zmF4p06aQiwySBEym3qyYFGqBrWEoWZMKMaKAm5scNF/1faGDIr5WxMrTCt57YoMuqow=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OCjB31jRrF5NsAhYCmtmSA4VIvxUrAeSy4dF2aX7weE=; b=d+bi9DGmCuM9i0HYmuUI9s6w8G
 B70RK9h1BvWD6Tu+zgrpVhOZqhPku6xmHSDkjLvgXUgPn7Kd1+89DRqgmEmkhtiD9fqypuC7GyWyh
 ObD8/ojEl9mmabIPH5VBDLYLF4/NJIMiBPb+qwOk6lbIy5n5fL3ZR/Qaldu34uCWLtVc=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lIBuD-0000GM-77
 for v9fs-developer@lists.sourceforge.net; Fri, 05 Mar 2021 14:58:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=OCjB31jRrF5NsAhYCmtmSA4VIvxUrAeSy4dF2aX7weE=; b=sLqe1Pbih/jz/xyAuBvBPoFBsX
 Lqub8NbECl/fgrEO6t0p8MGw4E3LjqSvZr9JAECvlajv5y/Uo2kMqiwkQMD9wMqoUm5LdAL2/0+9W
 YAIvLJgUjywZYz8PZWHay/zlxE1hE78v82QKGq/6VbrIDwq/0Rvd6QgkjiG8wf86dbwR6/2lGnWsk
 ZNgu2d3QvoKVByDO9AODxqmXULSOnSD4t9XT5Fl65AClkz2JUzYurx86WwpGwpwrikgRar/swPShS
 A39YnSYDuiGwWrV5WHBIbEEylC9mV+KwbWlnYxxKRzGBJz+zVwZnJ4/IhLebDiHG3N4gaV/OSkHhS
 iuTL5m1jDcdUUOOc23ZV4myulZ8ZpYdD1nsYL/P2pGDkRw5/t2A6Lg4b6mcJIsbXVqsHVa37Ka1uG
 ksFQQH/IzYjpKrFWycZ1XViULV3wifpJ+gftrEeNrn4UlNmqjXHKh/593oAhcp1+gEKny7tLtqIbn
 4FG66iZLGLUYu2V0yOMDeGkm9lY9R0qwQuBQpEdz2Y+bK5syOlCFmdnj4Ix88flGk/WN4Wd7rwN6X
 v6vx9zkwB+37l8LEnByiWzwFEW0aijr1Uzc250bspwl7JG8q3630cucZQZ/c7J2XjgvD0j3RkwFKc
 YeUIo62xMLePakdih9RxwtNQbQzqhGiEQ44BEdmA8=;
To: qemu-devel@nongnu.org
Date: Fri, 05 Mar 2021 15:57:17 +0100
Message-ID: <32960057.KqypvAduHN@silver>
In-Reply-To: <YD+iPTKnOlF/HwlV@codewreck.org>
References: <20200918213436.GA3520@redhat.com> <1805660.C9YIKG4Ep7@silver>
 <YD+iPTKnOlF/HwlV@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lIBuD-0000GM-77
Subject: Re: [V9fs-developer] Can not set high msize with virtio-9p (Was:
 Re: virtiofs vs 9p performance)
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
Cc: "Michael S. Tsirkin" <mst@redhat.com>, "Venegas Munoz,
 Jose Carlos" <jose.carlos.venegas.munoz@intel.com>, Greg Kurz <groug@kaod.org>,
 "cdupontd@redhat.com" <cdupontd@redhat.com>,
 virtio-fs-list <virtio-fs@redhat.com>,
 "Dr. David Alan Gilbert" <dgilbert@redhat.com>,
 Stefan Hajnoczi <stefanha@redhat.com>, v9fs-developer@lists.sourceforge.net,
 "Shinde, Archana M" <archana.m.shinde@intel.com>,
 Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mittwoch, 3. M=E4rz 2021 15:50:37 CET Dominique Martinet wrote:
> Christian Schoenebeck wrote on Wed, Mar 03, 2021 at 03:04:21PM +0100:
> > > We can definitely increase the default, for all transports in my
> > > opinion.
> > > As a first step, 64 or 128k?
> > =

> > Just to throw some numbers first; when linearly reading a 12 GB file on
> > guest (i.e. "time cat test.dat > /dev/null") on a test machine, these a=
re
> > the results that I get (cache=3Dmmap):
> > =

> > msize=3D16k: 2min7s (95 MB/s)
> > msize=3D64k: 17s (706 MB/s)
> > msize=3D128k: 12s (1000 MB/s)
> > msize=3D256k: 8s (1500 MB/s)
> > msize=3D512k: 6.5s (1846 MB/s)
> > =

> > Personally I would raise the default msize value at least to 128k.
> =

> Thanks for the numbers.
> I'm still a bit worried about too large chunks, let's go with 128k for
> now -- I'll send a couple of patches increasing the tcp max/default as
> well next week-ish.

Ok, sounds good!

> > Personally I don't find raw I/O the worst performance issue right now. =
As
> > you can see from the numbers above, if 'msize' is raised and I/O being
> > performed with large chunk sizes (e.g. 'cat' automatically uses a chunk
> > size according to the iounit advertised by stat) then the I/O results a=
re
> > okay.
> > =

> > What hurts IMO the most in practice is the sluggish behaviour regarding
> > dentries ATM. The following is with cache=3Dmmap (on guest side):
> > =

> > $ time ls /etc/ > /dev/null
> > real    0m0.091s
> > user    0m0.000s
> > sys     0m0.044s
> > $ time ls -l /etc/ > /dev/null
> > real    0m0.259s
> > user    0m0.008s
> > sys     0m0.016s
> > $ ls -l /etc/ | wc -l
> > 113
> > $
> =

> Yes, that is slow indeed.. Unfortunately cache=3Dnone/mmap means only open
> dentries are pinned, so that means a load of requests everytime.
> =

> I was going to suggest something like readdirplus or prefetching
> directory entries attributes in parallel/background, but since we're not
> keeping any entries around we can't even do that in that mode.
> =

> > With cache=3Dloose there is some improvement; on the first "ls" run (wh=
en
> > its
> > not in the dentry cache I assume) the results are similar. The subseque=
nt
> > runs then improve to around 50ms for "ls" and around 70ms for "ls -l".
> > But that's still far from numbers I would expect.
> =

> I'm surprised cached mode is that slow though, that is worth
> investigating.
> With that time range we are definitely sending more requests to the
> server than I would expect for cache=3Dloose, some stat revalidation
> perhaps? I thought there wasn't any.

Yes, it looks like more 9p requests are sent than actually required for =

readdir. But I haven't checked yet what's going on there in detail. That's =

definitely on my todo list, because this readdir/stat/direntry issue ATM =

really hurts the most IMO.

> I don't like cache=3Dloose/fscache right now as the reclaim mechanism
> doesn't work well as far as I'm aware (I've heard reports of 9p memory
> usage growing ad nauseam in these modes), so while it's fine for
> short-lived VMs it can't really be used for long periods of time as
> is... That's been on my todo for a while too, but unfortunately no time
> for that.

Ok, that's new to me. But I fear the opposite is currently worse; with =

cache=3Dmmap and running a VM for a longer time: 9p requests get slower and =

slower, e.g. at a certain point you're waiting like 20s for one request. I =

haven't investigated the cause here either yet. It may very well be an issu=
e =

on QEMU side: I have some doubts in the fid reclaim algorithm on 9p server =

side which is using just a linked list. Maybe that list is growing to =

ridiculous sizes and searching the list with O(n) starts to hurt after a =

while.

With cache=3Dloose I don't see such tremendous slowdowns even on long runs, =

which might indicate that this symptom might indeed be due to a problem on =

QEMU side.

> Ideally if that gets fixed, it really should be the default with some
> sort of cache revalidation like NFS does (if that hasn't changed, inode
> stats have a lifetime after which they get revalidated on access, and
> directory ctime changes lead to a fresh readdir) ; but we can't really
> do that right now if it "leaks".
> =

> Some cap to the number of open fids could be appreciable as well
> perhaps, to spare server resources and keep internal lists short.

I just reviewed the fid reclaim code on 9p servers side to some extent beca=
use =

of a security issue on 9p server side in this area recently, but I haven't =

really thought through nor captured the authors' original ideas behind it =

entirely yet. I still have some question marks here. Maybe Greg feels the =

same.

Probably when support for macOS is added (also on my todo list), then the =

amount of open fids needs to be limited anyway. Because macOS is much more =

conservative and does not allow a large number of open files by default.

> Anyway, there definitely is room for improvement; if you need ideas I
> have plenty but my time is more than limited right now and for the
> forseeable future... 9p work is purely on my freetime and there isn't
> much at the moment :(
> =

> I'll make time as necessary for reviews & tests but that's about as much
> as I can promise, sorry and good luck!

I fear that applies to all developers right now. To my knowledge there is n=
ot =

a single developer either paid and/or able to spend reasonable large time =

slices on 9p issues.

From my side: my plans are to hunt down the worst 9p performance issues in =

order of their impact, but like anybody else, when I find some free time =

slices for that.

#patience #optimistic

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
