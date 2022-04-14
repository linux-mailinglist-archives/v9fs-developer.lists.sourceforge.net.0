Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 86671500DE9
	for <lists+v9fs-developer@lfdr.de>; Thu, 14 Apr 2022 14:45:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1neyqf-0004mW-9v; Thu, 14 Apr 2022 12:45:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1neyqd-0004mO-CE
 for v9fs-developer@lists.sourceforge.net; Thu, 14 Apr 2022 12:45:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q89LmOY4QsQwqDUIV/jiE3VXQh22TbF6MoKNt2t/lbY=; b=RJspXWCgZfEjiO2b1nxniRlvg3
 KU89QWNSs9xwIMUWUPMZ4FTc6jcu4RSEPWf/c5ArNZ8UmQxNhZWrmpVxeCQC7ZCtM0xoR35kJwvN5
 0pkjACQdcxT7vDSGuFKO2kWah5qJdNryJIRMmNzwP2VIzruXPNyaGkvIOaKyxaQDXBhA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Q89LmOY4QsQwqDUIV/jiE3VXQh22TbF6MoKNt2t/lbY=; b=AkFPPyCFuEyVjEZQRwo1xOrod9
 Vn6tHHlBBT9gkFOPnJlHCbyJAlGwwWunDtrH5vvZL+0AMT5of5+Sy1RggrNn3KLhL0uKl7ZA2OvAS
 cemLCUHDyvmEcqydOMfzsWqA0MP56O98gwEFlLkB/7LjaDbk08dXnKKHmYTp9nsUHw10=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1neyqZ-00GGyj-28
 for v9fs-developer@lists.sourceforge.net; Thu, 14 Apr 2022 12:45:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=Q89LmOY4QsQwqDUIV/jiE3VXQh22TbF6MoKNt2t/lbY=; b=Y604GdzeZvrieynRAz3bmrTjl9
 OUtJvuqb0RUPm1Qod0VyHNsNkJJ3FEzHzva8XTvqyi1oFEhjGBTcbUhydSuofO9sXioNXYXXUEmtw
 IGMBWoleyc0I4g6OTxrX6U10YrdV734RwH+JqCOJIBxk79AED2nAJqLos4EP8ufaWwwkHTc5cYiaA
 MILjYXzCZXbEJK5xh9b8h/Kbb+MfEk/VTn3WivVL4KqpNy20kiEMrO1TDOwjlWUHCJlg9MXT9FFmE
 /Y9Aa3gOHUIlyuy2GjTyfXtZl62J3M35TRE2Y0/vJomIaH/sxFBySnewQKTFIT6+7aA8ojUBxkMbI
 SzhTheyjRKCpdPsFIlM6SM8RiVd/p3ZAcRezXPnYB12DQo8YdHv+DTbPhgcJFI0WIB7DqWGRxW9/P
 WF0dGEzdcl2oYyACSlOhD52mZZaa/KdLhsQX+d7MqP4tjPR9rZ8Y5NZxgkvVkRgqDSrMsQ4AR0Mrq
 OK/oCzKKm/5BxB8YvKb+psouKamIqdxZLScIJ+OkBH9zArk1yrUx+5YR1OEjZaateCXYbonmVk+/2
 d2hwVLh0IyBR5wHdzb7wgE8Z5k6GHxoqDll6JZ4e43xQufc+8ow5Eh0qHpfbHSIqmx5wHbjEh/7bW
 bi8LWVNqH31oLZkZgR0TC3hxUVODXDDqf3myvVde0=;
To: asmadeus@codewreck.org
Date: Thu, 14 Apr 2022 14:44:53 +0200
Message-ID: <2551609.RCmPuZc3Qn@silver>
In-Reply-To: <YlX/XRWwQ7eQntLr@codewreck.org>
References: <CAAZOf26g-L2nSV-Siw6mwWQv1nv6on8c0fWqB4bKmX73QAFzow@mail.gmail.com>
 <3119964.Qa6D4ExsIi@silver> <YlX/XRWwQ7eQntLr@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mittwoch,
 13. April 2022 00:38:21 CEST asmadeus@codewreck.org
 wrote: > Christian Schoenebeck wrote on Mon, Apr 11, 2022 at 03:41:45PM +0200:
 > > I get more convinced that it's a bug on Linux kernel [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1neyqZ-00GGyj-28
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mittwoch, 13. April 2022 00:38:21 CEST asmadeus@codewreck.org wrote:
> Christian Schoenebeck wrote on Mon, Apr 11, 2022 at 03:41:45PM +0200:
> > I get more convinced that it's a bug on Linux kernel side. When guest is
> > booted I always immediately get a read("/var/log/wtmp") = EBADF error on
> > guest. And the 9p command sequence sent to QEMU 9p server were:
> 
> Yes, I'm not pointing fingers, just trying to understand :)

Don't worry, that was not my impression, nor was it my intention either. I'm 
jut trying to interpret what I'm seeing here.

> > ...
> > v9fs_clunk tag 0 id 120 fid 568
> > v9fs_walk tag 0 id 110 fid 1 newfid 568 nwnames 1
> > v9fs_rerror tag 0 id 110 err 2
> > v9fs_walk tag 0 id 110 fid 26 newfid 568 nwnames 1
> > v9fs_rerror tag 0 id 110 err 2
> > v9fs_readlink tag 0 id 22 fid 474
> > v9fs_readlink_return tag 0 id 22 name /run
> > v9fs_readlink tag 0 id 22 fid 474
> > v9fs_readlink_return tag 0 id 22 name /run
> > v9fs_readlink tag 0 id 22 fid 474
> > v9fs_readlink_return tag 0 id 22 name /run
> > v9fs_readlink tag 0 id 22 fid 474
> > v9fs_readlink_return tag 0 id 22 name /run
> > v9fs_walk tag 0 id 110 fid 633 newfid 568 nwnames 1
> > v9fs_rerror tag 0 id 110 err 2
> > v9fs_walk tag 0 id 110 fid 875 newfid 568 nwnames 0
> > v9fs_walk_return tag 0 id 110 nwnames 0 qids (nil)
> > v9fs_open tag 0 id 12 fid 568 mode 32769
> > v9fs_open_return tag 0 id 12 qid={type 0 version 0 path 820297} iounit
> > 507904 v9fs_walk tag 0 id 110 fid 875 newfid 900 nwnames 0
> > v9fs_walk_return tag 0 id 110 nwnames 0 qids (nil)
> > v9fs_open tag 0 id 12 fid 900 mode 2
> > v9fs_open_return tag 0 id 12 qid={type 0 version 0 path 820297} iounit
> > 507904 v9fs_lock tag 0 id 52 fid 568 type 1 start 0 length 0
> > v9fs_lock_return tag 0 id 52 status 0
> > v9fs_xattrwalk tag 0 id 30 fid 568 newfid 901 name security.capability
> > v9fs_rerror tag 0 id 30 err 95
> > v9fs_read tag 0 id 116 fid 568 off 192512 max_count 256
> > 
> > So guest opens /var/log/wtmp with fid=568 mode=32769, which is write-only
> > mode, and then it tries to read that fid 568, which eventually causes the
> > read() call on host to error with EBADF. Which makes sense, as the file
> > was
> > opened in write-only mode, hence read() is not possible with that file
> > descriptor.
> 
> Oh! That's something we can work on. the vfs code has different caches
> for read only and read-write fids, perhaps the new netfs code just used
> the wrong one somewhere. I'll have a look.
> 
> > The other things I noticed when looking at the 9p command sequence above:
> > there is a Twalk on fid 568 before, which is not clunked before reusing
> > fid
> > 568 with Topen later. And before that Twalk on fid 568 there is a Tclunk
> > on
> > fid 568, but apparently that fid was not used before.
> 
> This one though is just weird, I don't see where linux would make up a fid
> to clunk like this... Could messages be ordered a bit weird through
> multithreading?
> e.g. thread 1 opens, thread 2 clunks almost immediately afterwards, and
> would be printed the other way around?

Yeah, something like that was also my guess.

> Should still be serialized through the virtio ring buffer so I don't
> believe what I'm saying myself... It might be worth digging further as
> well.
> 
> > > Perhaps backing filesystem dependant? qemu version? virtfs access
> > > options?
> > 
> > I tried with different hardware and different file systems (ext4, btrfs),
> > same misbehaviours.
> > 
> > QEMU is latest git version. I also tried several different QEMU versions,
> > same thing.
> > 
> > QEMU command line used:
> > 
> > ~/git/qemu/build/qemu-system-x86_64 \
> > -machine pc,accel=kvm,usb=off,dump-guest-core=off -m 16384 \
> > -smp 8,sockets=8,cores=1,threads=1 -rtc base=utc -boot strict=on \
> > -kernel ~/vm/bullseye/boot/vmlinuz \
> > -initrd ~/vm/bullseye/boot/initrd.img \
> > -append 'root=fsRoot rw rootfstype=9p
> > rootflags=trans=virtio,version=9p2000.L,msize=4186112,cache=loose
> > console=ttyS0' \ -fsdev
> > local,security_model=mapped,multidevs=remap,id=fsdev-fs0,path=$HOME/vm/bu
> > llseye/ \ -device virtio-9p-pci,id=fs0,fsdev=fsdev-fs0,mount_tag=fsRoot \
> > -sandbox
> > on,obsolete=deny,elevateprivileges=deny,spawn=deny,resourcecontrol=deny \
> > -nographic
> > 
> > Important for reproducing this issue:
> >   * cache=loose
> >   * -smp N (with N>1)
> >   * Guest booted with Linux kernel containing commit eb497943fa21
> >   
> >     (uname >= 5.16)
> > 
> > I'm pretty sure that you can reproduce this issue with the QEMU 9p rootfs
> > setup HOWTO linked before.
> 
> Yes, I'm not sure why I can't reproduce... All my computers are pretty
> slow but the conditions should be met.
> I'll try again with a command line closer to what you just gave here.

I'm not surprised that you could not reproduce the EBADF errors yet. To make 
this more clear, as for the git client errors: I have like 200+ git 
repositories checked out on that test VM, and only about 5 of them trigger 
EBADF errors on 'git pull'. But those few repositories reproduce the EBADF 
errors reliably here.

In other words: these EBADF errors only seem to trigger under certain 
circumstances, so it requires quite a bunch of test material to get a 
reproducer.

Like I said though, with the Bullseye installation I immediately get EBADF 
errors already when booting, whereas with a Buster VM it boots without errors.

> > > It's all extremely slow though... like the final checkout counting files
> > > at less than 10/s
> > 
> > It is VERY slow. And the weird thing is that cache=loose got much slower
> > than cache=mmap. My worst case expactation would be cache=loose at least
> > not performing worse than cache=mmap.
> 
> Yes, some profiling is also in order, it didn't use to be that slow so
> it must not be reusing previously open fids as it should have or
> something..

If somebody has some more ideas what I can try/test, let me know. However ATM 
I won't be able to review the netfs and vfs code to actually find the cause of 
these issues.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
