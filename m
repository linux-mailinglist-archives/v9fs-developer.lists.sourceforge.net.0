Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F52401017
	for <lists+v9fs-developer@lfdr.de>; Sun,  5 Sep 2021 16:08:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UfKU9Xq+K+j1fUhHoHRF2XtFjMU7RiHTAnqk/liSDCY=; b=di7ilmF2OdoIr0Vpm2y0mXC3i
	n6ah6HdV4iWF3bomjdGMT7g3nDLGS8mAUG1tBmNinRmqazz2xvBk4iWT0quBStE/Sgp53U2Ego0ob
	Mq5ueASVtn4qzHOy0qzGyw/OVLVs2aASpQoyTHymzu+lxl2uz/HZNg8sTO5sAjEcpHopM=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mMsoR-0003mQ-H1; Sun, 05 Sep 2021 14:07:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux_oss@crudebyte.com>) id 1mMsoG-0003mD-CD
 for v9fs-developer@lists.sourceforge.net; Sun, 05 Sep 2021 14:07:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IuretZyFZs1KI18cMliVpIjYMRXc1j5/4gT4w9nc3nw=; b=awYHJgSOB4/xR8BzZxH9K8qXVC
 5sbs7nIwsuykZUZqLH5UGN0Mz0lic6D7tD4zt4W3XdlOmFmrYQjFa8mn1gcFlMT1CYnxPc7BM03iZ
 vHzQOzl1fbVIjHS9QVopUUqaBk8OCW8uOPF+oROi7VP/ySXUrHYp2E8ELAN1JzSJOSnY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IuretZyFZs1KI18cMliVpIjYMRXc1j5/4gT4w9nc3nw=; b=IMyf3G3ClRZrcoLDMDnfSOkafj
 C+aL8f+DSrFiBcg4uAs7oY+XddZiL0dQm+AjnV4DbWbz12gJ7qV9rRniliYcSS+QmDYiD4nOTrlje
 o7bZjSBx2CyXHjBDCIeIy6F4Nd2cNnMZkZnUauddBqNG5/PyjcxP+I9+wpi4JB2cDh+o=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mMso9-0004HP-C4
 for v9fs-developer@lists.sourceforge.net; Sun, 05 Sep 2021 14:07:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=IuretZyFZs1KI18cMliVpIjYMRXc1j5/4gT4w9nc3nw=; b=LFCFg76w5km7YZ82OxCvJ4Wvnf
 kwn0tYY7wyUmE86Wv4TnEVjEZTRRVIDZkAaZ7mqukQHAtKUmKslU69fBkhkryXezq3x6xnLZ+j0Ii
 SgCYrsJbhUPh1p7kwXeCbYvIUs6PjJFr2D/SnUVeWo+zRsFgavVyNxFn/BLySdX/cK/FM9THxc9II
 flxZa7NwZDPGcK1Ohcu24+GRCsygXeBc5JUIpu2iraJxzcdq7+Trlw7HHmeaeygNldxbTfTSnYUMR
 2QSoDMH2c8yRpsXB+mD/rdUP2KCBehYKt1yX9+hJcbRimzZ2R3piXB+pJ6Ob2g7uSfOfHiAqRr4RP
 rr07y5/9Q4Gir4+Ut/1deXmybspMqPMO7YJvfmIXomrmv9rKfxhrS2eLWObz+ObyeT/TM2gK/UGAO
 LjABzAg0n5QJXTnRRHeNtrAH9BO2R/SPe7nBaiAvmNM/E/ARMS+Ceb88apKaGKSVKrvX3xGqSdlBx
 H8CWLD34beC0bHvg7EOJcKH9pSZIk+dqiE56t6bCWqdEopQ4LgTETUAJkMFEgYX1I76mM4eaSNqVg
 To5j57RlG29ZId9iN4MTJ/KluAMP+teq9TBqMKBJbSU5t4DCp5tEsELYx6lSBA+wHKqRLBMg11HnN
 9c4y+/gyeriJhLqk60HpNoUm2+OYdIkwZPUejXGJA=;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Sun, 05 Sep 2021 15:33:11 +0200
Message-ID: <1915472.2DI3jHSlUk@silver>
In-Reply-To: <YTQB5jCbvhmCWzNd@codewreck.org>
References: <cover.1630770829.git.linux_oss@crudebyte.com>
 <61ea0f0faaaaf26dd3c762eabe4420306ced21b9.1630770829.git.linux_oss@crudebyte.com>
 <YTQB5jCbvhmCWzNd@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mMso9-0004HP-C4
Subject: Re: [V9fs-developer] [PATCH 2/2] net/9p: increase default msize to
 128k
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>,
 v9fs-developer@lists.sourceforge.net, Greg Kurz <groug@kaod.org>,
 Latchesar Ionkov <lucho@ionkov.net>, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sonntag, 5. September 2021 01:31:50 CEST Dominique Martinet wrote:
> Hi Christian,
> 
> thanks for the follow up, this has been on my todolist forever and
> despite how simple it is I never took the time for it...
> 
> 
> I've applied both patches to my -next branch... We're a bit tight for
> this merge window (v5.15) but I'll send it to linux mid next week anyway.

That would be great!

> I've also added this patch (sorry for laziness) for TCP, other transports
> are OK iirc:
> 
> From 657e35583c70bed86526cb8eb207abe3d55ea4ea Mon Sep 17 00:00:00 2001
> From: Dominique Martinet <asmadeus@codewreck.org>
> Date: Sun, 5 Sep 2021 08:29:22 +0900
> Subject: [PATCH] net/9p: increase tcp max msize to 1MB
> 
> Historically TCP has been limited to 64K buffers, but increasing msize
> provides huge performance benefits especially as latency increase so allow
> for bigger buffers.
> 
> Ideally further improvements could change the allocation from the current
> contiguous chunk in slab (kmem_cache) to some scatter-gather compatible
> API...
> 
> Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
> 
> diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
> index f4dd0456beaf..007bbcc68010 100644
> --- a/net/9p/trans_fd.c
> +++ b/net/9p/trans_fd.c
> @@ -34,7 +34,7 @@
>  #include <linux/syscalls.h> /* killme */
> 
>  #define P9_PORT 564
> -#define MAX_SOCK_BUF (64*1024)
> +#define MAX_SOCK_BUF (1024*1024)
>  #define MAXPOLLWADDR   2
> 
>  static struct p9_trans_module p9_tcp_trans;

Yes, makes sense.

Is the TCP transport driver of the Linux 9p client somewhat equally mature to 
the virtio transport driver? Because I still have macOS support for 9p in QEMU 
on my TODO list and accordingly a decision for a specific transport type for 
macOS will be needed.

For the next series mentioned by me (getting rid of the 512k msize capping) I 
first need to readup on the Linux kernel code. According to the discussion we 
already had about that issue, the reason for that capping was that the amount 
of virtio elements is currently hard coded in the Linux client's virtio 
transport:

On Samstag, 27. Februar 2021 01:03:40 CEST Dominique Martinet wrote:
> Christian Schoenebeck wrote on Fri, Feb 26, 2021 at 02:49:12PM +0100:
> > Right now the client uses a hard coded amount of 128 elements. So what
> > about replacing VIRTQUEUE_NUM by a variable which is initialized with a
> > value according to the user's requested 'msize' option at init time?
> > 
> > According to the virtio specs the max. amount of elements in a virtqueue
> > is
> > 32768. So 32768 * 4k = 128M as new upper limit would already be a
> > significant improvement and would not require too many changes to the
> > client code, right?
> The current code inits the chan->sg at probe time (when driver is
> loader) and not mount time, and it is currently embedded in the chan
> struct, so that would need allocating at mount time (p9_client_create ;
> either resizing if required or not sharing) but it doesn't sound too
> intrusive yes.
> 
> I don't see more adherenences to VIRTQUEUE_NUM that would hurt trying.

So probably as a first step I would only re-allocate the virtio elements 
according to the user supplied (i.e. large) 'msize' value if the 9p driver is 
not in use at that point, and stick to capping otherwise. That should probably 
be fine for many users and would avoid need for some synchronization measures 
and the traps it might bring. But again, I still need to read more of the 
Linux client code first.

BTW just in case I have not mentioned it before: there are some developer docs 
for the QEMU 9p server implementation now:
https://wiki.qemu.org/Documentation/9p

Best regards,
Christian Schoenebeck




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
