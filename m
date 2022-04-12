Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 118D74FEA29
	for <lists+v9fs-developer@lfdr.de>; Wed, 13 Apr 2022 00:39:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nePA5-0004t3-Ep; Tue, 12 Apr 2022 22:39:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1nePA4-0004sx-05
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Apr 2022 22:38:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8cKWiKZ+6BTHDIeYecZe923WDWd/fUmOnyJCVtqwQRk=; b=HXSfX2gtZONlWepL/K7HTdKM86
 jB9459zV5YoIqaJ1diqeYpXF9g8xw7FOzI6uYR4SSXtfQJ8wCfRQzGhW+XQH1M7QsGhGLAh4odTEK
 uCI0N98pnEeyXFqu2MiXih0MT1rFdoY7bRE+0JW+EkP3vEjdST6w6dKF3ERGrvDcSL7Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8cKWiKZ+6BTHDIeYecZe923WDWd/fUmOnyJCVtqwQRk=; b=MEeu/AqigMMSmzOPsAq/GJNS9O
 BDwDtWbz7rJKsBNTgQ5XVmFMEgJRpViRzX00TPUpnPnARlOaL60sRKw1n3FAVfY9xjDFlRZnKG97L
 cKq1QqmojshoQ0K4l3Au5xMKFGE7r6Tyyx+Lq8t4UvOSboxCAYI3Biu4EzT4Skd2DHSM=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1neP9x-00EbC2-Kt
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Apr 2022 22:38:57 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 9F43AC01D; Wed, 13 Apr 2022 00:38:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1649803124; bh=8cKWiKZ+6BTHDIeYecZe923WDWd/fUmOnyJCVtqwQRk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xix1bDeHUQT3ZqeDnohFxngYVBB2GaqGRSBdrCkd2NEli8gI7VqWEECi8sKr7tSjY
 xZiiD03oA1W1WquGYTDrxpyeItbGTJSSjZYUMLaieFCtxhJTaL9z7U2UpnvDia7iyF
 K9td8IDlZNtkJuSSb8h5gi174t/ICDqLoEVkJypLyxohitIFV7crlpA20eAGINwxQY
 XDniQCVuL4VWzbdxKrCHuM+1yj35FFnc8VNh6gzAJRxy33UEkQiSCQ1l3YVLMQ2dNy
 aFIo8afl0xuLa85euau8Tllx6mzVg5O1QIRIrW23bzIDLhZl9lN6fFGTcWUhEEArmy
 HtBUpgbhHfPqQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 7F9E9C009;
 Wed, 13 Apr 2022 00:38:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1649803123; bh=8cKWiKZ+6BTHDIeYecZe923WDWd/fUmOnyJCVtqwQRk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QIFkVHZ2ZiGbLOIJpIJcCiS1PLc/cPhwSWBrjYJf9pKPl7B7UmiOchF498QnFkb4y
 d6SAVmOieXRM32MCO7wMHOysrLbU/K7WSjFEzaHPQYYs3ShQxhorVvthNbdgA7A/fF
 otUGRti4jEfWxDr0jUP64iVY6uWuxbrL15XEvAWogBuvScpSDvwwSIkZP2ZokXAT+b
 bbNaKaUl153IEmtWTExOL35yYuFKLq4RYPdrr9w3DKTN1rFppUZO5r4/lqqHEpAkLv
 9iG0aoGGFsNboqQdBUgse5KM+QDo4HxXDYXCzGRqICleQEAS0qI8jNGqVTEIX5TVf5
 OQXfpP3fslG+Q==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 4f5f244e;
 Tue, 12 Apr 2022 22:38:37 +0000 (UTC)
Date: Wed, 13 Apr 2022 07:38:21 +0900
From: asmadeus@codewreck.org
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YlX/XRWwQ7eQntLr@codewreck.org>
References: <CAAZOf26g-L2nSV-Siw6mwWQv1nv6on8c0fWqB4bKmX73QAFzow@mail.gmail.com>
 <1966295.VQPMLLWD4E@silver> <YlNgN5f1KnT1walD@codewreck.org>
 <3119964.Qa6D4ExsIi@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3119964.Qa6D4ExsIi@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Mon, Apr 11,
 2022 at 03:41:45PM
 +0200: > I get more convinced that it's a bug on Linux kernel side. When
 guest is > booted I always immediately get a read("/var/log/wtmp [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1neP9x-00EbC2-Kt
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
Cc: lucho@ionkov.net, David Kahurani <k.kahurani@gmail.com>, ericvh@gmail.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kurz <groug@kaod.org>, David Howells <dhowells@redhat.com>,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Mon, Apr 11, 2022 at 03:41:45PM +0200:
> I get more convinced that it's a bug on Linux kernel side. When guest is
> booted I always immediately get a read("/var/log/wtmp") = EBADF error on
> guest. And the 9p command sequence sent to QEMU 9p server were:

Yes, I'm not pointing fingers, just trying to understand :)

> 
> ...
> v9fs_clunk tag 0 id 120 fid 568
> v9fs_walk tag 0 id 110 fid 1 newfid 568 nwnames 1
> v9fs_rerror tag 0 id 110 err 2
> v9fs_walk tag 0 id 110 fid 26 newfid 568 nwnames 1
> v9fs_rerror tag 0 id 110 err 2
> v9fs_readlink tag 0 id 22 fid 474
> v9fs_readlink_return tag 0 id 22 name /run
> v9fs_readlink tag 0 id 22 fid 474
> v9fs_readlink_return tag 0 id 22 name /run
> v9fs_readlink tag 0 id 22 fid 474
> v9fs_readlink_return tag 0 id 22 name /run
> v9fs_readlink tag 0 id 22 fid 474
> v9fs_readlink_return tag 0 id 22 name /run
> v9fs_walk tag 0 id 110 fid 633 newfid 568 nwnames 1
> v9fs_rerror tag 0 id 110 err 2
> v9fs_walk tag 0 id 110 fid 875 newfid 568 nwnames 0
> v9fs_walk_return tag 0 id 110 nwnames 0 qids (nil)
> v9fs_open tag 0 id 12 fid 568 mode 32769
> v9fs_open_return tag 0 id 12 qid={type 0 version 0 path 820297} iounit 507904
> v9fs_walk tag 0 id 110 fid 875 newfid 900 nwnames 0
> v9fs_walk_return tag 0 id 110 nwnames 0 qids (nil)
> v9fs_open tag 0 id 12 fid 900 mode 2
> v9fs_open_return tag 0 id 12 qid={type 0 version 0 path 820297} iounit 507904
> v9fs_lock tag 0 id 52 fid 568 type 1 start 0 length 0
> v9fs_lock_return tag 0 id 52 status 0
> v9fs_xattrwalk tag 0 id 30 fid 568 newfid 901 name security.capability
> v9fs_rerror tag 0 id 30 err 95
> v9fs_read tag 0 id 116 fid 568 off 192512 max_count 256
> 
> So guest opens /var/log/wtmp with fid=568 mode=32769, which is write-only
> mode, and then it tries to read that fid 568, which eventually causes the
> read() call on host to error with EBADF. Which makes sense, as the file was
> opened in write-only mode, hence read() is not possible with that file
> descriptor.

Oh! That's something we can work on. the vfs code has different caches
for read only and read-write fids, perhaps the new netfs code just used
the wrong one somewhere. I'll have a look.

> The other things I noticed when looking at the 9p command sequence above:
> there is a Twalk on fid 568 before, which is not clunked before reusing fid
> 568 with Topen later. And before that Twalk on fid 568 there is a Tclunk on
> fid 568, but apparently that fid was not used before.

This one though is just weird, I don't see where linux would make up a fid to
clunk like this... Could messages be ordered a bit weird through
multithreading?
e.g. thread 1 opens, thread 2 clunks almost immediately afterwards, and
would be printed the other way around?
Should still be serialized through the virtio ring buffer so I don't
believe what I'm saying myself... It might be worth digging further as
well.

> > Perhaps backing filesystem dependant? qemu version? virtfs access options?
> 
> I tried with different hardware and different file systems (ext4, btrfs), same
> misbehaviours.
> 
> QEMU is latest git version. I also tried several different QEMU versions, same
> thing.
> 
> QEMU command line used:
> 
> ~/git/qemu/build/qemu-system-x86_64 \
> -machine pc,accel=kvm,usb=off,dump-guest-core=off -m 16384 \
> -smp 8,sockets=8,cores=1,threads=1 -rtc base=utc -boot strict=on \
> -kernel ~/vm/bullseye/boot/vmlinuz \
> -initrd ~/vm/bullseye/boot/initrd.img \
> -append 'root=fsRoot rw rootfstype=9p rootflags=trans=virtio,version=9p2000.L,msize=4186112,cache=loose console=ttyS0' \
> -fsdev local,security_model=mapped,multidevs=remap,id=fsdev-fs0,path=$HOME/vm/bullseye/ \
> -device virtio-9p-pci,id=fs0,fsdev=fsdev-fs0,mount_tag=fsRoot \
> -sandbox on,obsolete=deny,elevateprivileges=deny,spawn=deny,resourcecontrol=deny \
> -nographic
> 
> Important for reproducing this issue:
> 
>   * cache=loose
>   * -smp N (with N>1)
>   * Guest booted with Linux kernel containing commit eb497943fa21
>     (uname >= 5.16)
> 
> I'm pretty sure that you can reproduce this issue with the QEMU 9p rootfs
> setup HOWTO linked before.

Yes, I'm not sure why I can't reproduce... All my computers are pretty
slow but the conditions should be met.
I'll try again with a command line closer to what you just gave here.


> > It's all extremely slow though... like the final checkout counting files
> > at less than 10/s
> 
> It is VERY slow. And the weird thing is that cache=loose got much slower than
> cache=mmap. My worst case expactation would be cache=loose at least not
> performing worse than cache=mmap.

Yes, some profiling is also in order, it didn't use to be that slow so
it must not be reusing previously open fids as it should have or
something..

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
