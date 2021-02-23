Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBF2322BC6
	for <lists+v9fs-developer@lfdr.de>; Tue, 23 Feb 2021 14:57:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CCeh2im01uw+lN/tcUkeggHNa3ihfVGDCt27JoQmGps=; b=Axqrr6zNI8Z5wJ0Uv+PPYreU1
	Rgec0VGJK3/tS01LiO3Jr4XLYhibNB9eRef8QvhkVGmaH4tafFuSe8rmnMtNsWrrK6tL6NgSVuQnA
	LUicedrC7OSWjlLTxyC9Jq2wrcrb4Rr44eGBJmC7QiCxNupkIbFfQesH3e1cOniTiX0AE=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lEYBV-000851-0g; Tue, 23 Feb 2021 13:57:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <qemu_oss@crudebyte.com>) id 1lEYBT-00084t-LE
 for v9fs-developer@lists.sourceforge.net; Tue, 23 Feb 2021 13:57:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pvYxi63RTwoenMRUr+szwnZzIwxj34vAi8Rw3WEweuo=; b=HuEMw+hPYhoK7jT3n/M4dbIqtC
 kxqm1PjPl7CEOBf6L/Qz+CBmFmtIkkWBfNqYkbIAyI4TBklXGDa1TZz+bHiTD1gGF7oQYqyXR/ncY
 F5hzIVj9nKdo8qOgKvJGCR7Loy1oCm8X1V7EMb9H4u7r62gvG+PuYdDQeMVWtvwgO//k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pvYxi63RTwoenMRUr+szwnZzIwxj34vAi8Rw3WEweuo=; b=W+z86oPIIwCTvBDm1jVRxO7FuP
 JOtUY31FDMbTSJ4iUMewHlFiMfp3TYKwyEmLq0pp1cub4hdnYJwiEUHNrn4jcdVpPdHyjG19Xqg+k
 kDmDnwpFkwtE/U8qDCHiut/mAzdVDa4LXwXknmexTvk+hGlotvuf5WOSiRaZnWSTyrcA=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lEYBN-002WPZ-Tv
 for v9fs-developer@lists.sourceforge.net; Tue, 23 Feb 2021 13:57:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=pvYxi63RTwoenMRUr+szwnZzIwxj34vAi8Rw3WEweuo=; b=RjdXdfjzz69PEQAMftRgs7vRqC
 pNZKqO0blv2O+j/xKgEziD7EK1qsH1VbkX3YfauEKd/BYTy9Ob0uClmF1Is3i8Z4vvdzv8HXalPdF
 CYHeYi1cCoxaQI2LurAXQPZdywRnmrFRbbglBSO5pCFvIqJ61FJIz8ltuAOLa3wtKDK5zze6OPak/
 URdRIk4CApZO4rl/1YOhPuskrQofKsyBcKkeI7aV5o/Wer0LTyDM+jmqbV6tUG4ud3WwyHKfA+GCN
 q7SmjW0Iik62HrSD2yieKtIUfdPxyDOGAd6DIXmoIJNTKtwprd6FmHR/+LnmuCmhNZD/NMsB7bvtP
 5hZjIcTie/j/f8wYGSq3eCql7BNVexzqpdUbvIOmcp6IVdOIw8tkFfHbjWTY84tG7y6rUda5c0a1l
 cM+Ns0oM14xUetFVrCIHg4FutpA1OwoV4H/YH0p8ySU9x8TII2Mg4tayhuLO+IV0w2MgtLrrzOFeD
 YnqpEF+mLpC6DqJ5ZO2HgpEYbz06yxg4CchwjeGNeMCBrz6ZKyxLeNUaLDl3CmnSsix57hmAEH2DR
 WKfmjYN1nPXVXMaMyjLUauMlv3ABP5PyB6uGeXB4omtjPFJSVEge/NuNJ23hl49cQKbwnIlgvTGxc
 i5CQbc4ilhyKuq+xVhAiP9zljVSXCNP89ygs5SQLo=;
To: qemu-devel@nongnu.org
Date: Tue, 23 Feb 2021 14:39:48 +0100
Message-ID: <6115734.fQeFoySBn5@silver>
In-Reply-To: <20210222181159.6b274945@bahia.lan>
References: <20200918213436.GA3520@redhat.com> <2848338.ij5OB8EVuP@silver>
 <20210222181159.6b274945@bahia.lan>
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
X-Headers-End: 1lEYBN-002WPZ-Tv
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
Cc: "cdupontd@redhat.com" <cdupontd@redhat.com>,
 "Michael S. Tsirkin" <mst@redhat.com>, "Venegas Munoz,
 Jose Carlos" <jose.carlos.venegas.munoz@intel.com>, Greg Kurz <groug@kaod.org>,
 "Dr. David Alan Gilbert" <dgilbert@redhat.com>,
 virtio-fs-list <virtio-fs@redhat.com>, Stefan Hajnoczi <stefanha@redhat.com>,
 v9fs-developer@lists.sourceforge.net, "Shinde,
 Archana M" <archana.m.shinde@intel.com>, Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Montag, 22. Februar 2021 18:11:59 CET Greg Kurz wrote:
> On Mon, 22 Feb 2021 16:08:04 +0100
> Christian Schoenebeck <qemu_oss@crudebyte.com> wrote:
> 
> [...]
> 
> > I did not ever have a kernel crash when I boot a Linux guest with a 9pfs
> > root fs and 100 MiB msize.
> 
> Interesting.
> 
> > Should we ask virtio or 9p Linux client maintainers if
> > they can add some info what this is about?
> 
> Probably worth to try that first, even if I'm not sure anyone has a
> answer for that since all the people who worked on virtio-9p at
> the time have somehow deserted the project.

Michael, Dominique,

we are wondering here about the message size limitation of just 5 kiB in the 
9p Linux client (using virtio transport) which imposes a performance 
bottleneck, introduced by this kernel commit:

commit b49d8b5d7007a673796f3f99688b46931293873e
Author: Aneesh Kumar K.V <aneesh.kumar@linux.vnet.ibm.com>
Date:   Wed Aug 17 16:56:04 2011 +0000

    net/9p: Fix kernel crash with msize 512K
    
    With msize equal to 512K (PAGE_SIZE * VIRTQUEUE_NUM), we hit multiple
    crashes. This patch fix those.
    
    Signed-off-by: Aneesh Kumar K.V <aneesh.kumar@linux.vnet.ibm.com>
    Signed-off-by: Eric Van Hensbergen <ericvh@gmail.com>

Is this a fundamental maximum message size that cannot be exceeded with virtio 
in general or is there another reason for this limit that still applies?

Full discussion:
https://lists.gnu.org/archive/html/qemu-devel/2021-02/msg06343.html

> > > > As the kernel code sais trans_mod->maxsize, maybe its something in
> > > > virtio
> > > > on qemu side that does an automatic step back for some reason. I don't
> > > > see something in the 9pfs virtio transport driver
> > > > (hw/9pfs/virtio-9p-device.c on QEMU side) that would do this, so I
> > > > would
> > > > also need to dig deeper.
> > > > 
> > > > Do you have some RAM limitation in your setup somewhere?
> > > > 
> > > > For comparison, this is how I started the VM:
> > > > 
> > > > ~/git/qemu/build/qemu-system-x86_64 \
> > > > -machine pc,accel=kvm,usb=off,dump-guest-core=off -m 2048 \
> > > > -smp 4,sockets=4,cores=1,threads=1 -rtc base=utc \
> > > > -boot strict=on -kernel
> > > > /home/bee/vm/stretch/boot/vmlinuz-4.9.0-13-amd64 \
> > > > -initrd /home/bee/vm/stretch/boot/initrd.img-4.9.0-13-amd64 \
> > > > -append 'root=svnRoot rw rootfstype=9p
> > > > rootflags=trans=virtio,version=9p2000.L,msize=104857600,cache=mmap
> > > > console=ttyS0' \
> > > 
> > > First obvious difference I see between your setup and mine is that
> > > you're mounting the 9pfs as root from the kernel command line. For
> > > some reason, maybe this has an impact on the check in p9_client_create()
> > > ?
> > > 
> > > Can you reproduce with a scenario like Vivek's one ?
> > 
> > Yep, confirmed. If I boot a guest from an image file first and then try to
> > manually mount a 9pfs share after guest booted, then I get indeed that
> > msize capping of just 512 kiB as well. That's far too small. :/
> 
> Maybe worth digging :
> - why no capping happens in your scenario ?

Because I was wrong.

I just figured even in the 9p rootfs scenario it does indeed cap msize to 5kiB 
as well. The output of /etc/mtab on guest side was fooling me. I debugged this 
on 9p server side and the Linux 9p client always connects with a max. msize of 
5 kiB, no matter what you do.

> - is capping really needed ?
> 
> Cheers,

That's a good question and probably depends on whether there is a limitation 
on virtio side, which I don't have an answer for. Maybe Michael or Dominique 
can answer this.

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
