Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE253A68FE
	for <lists+v9fs-developer@lfdr.de>; Mon, 14 Jun 2021 16:28:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lsna3-00014B-Tb; Mon, 14 Jun 2021 14:28:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <vgoyal@redhat.com>) id 1lsnZm-00012O-DC
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Jun 2021 14:28:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3i/0Xqcuqs9Z53r8ziuGN5pdDlWOmZITjoXYMrInUI0=; b=CmEXNJlgcf+9OVh1I0cin6HAEP
 LFlzY64ImjPe2wLMs6tKeSxh+8HmmixdtpZyz7joExrMpD2dlWke541vvXh22KAEa7Kyse7S/XdeY
 /6KzznDYGjA/qtABT32/ipXPrEVFUf1QhV7cen0LmYD18Bq751bPtxU38MG/TjsgbZWs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3i/0Xqcuqs9Z53r8ziuGN5pdDlWOmZITjoXYMrInUI0=; b=HfL6Q9H5w1jddQkxJiKz7XwRPx
 7fmswLMLAYpaqzWJBbuOBuFT2dcqlkDzb/ixMYpHSU4qjU4D6jXRT20A0uvZZHSYopQDwStU266Sj
 +38NINI+4tZ+ErFzjSchP156iT2JX4qZB/svKuVav8LOdPQX3MDlE8iKF4G/7sAZDXkk=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lsnZe-00035y-3n
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Jun 2021 14:28:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623680896;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=3i/0Xqcuqs9Z53r8ziuGN5pdDlWOmZITjoXYMrInUI0=;
 b=G4HDkC25jP4U959tzPWMRr8OUI8x34ACUzWhVpMV7OaEDaxgegWaFbn1eQZksIoEuf9/K1
 nkGe46i0lYrCNGdeaPd32KeKoPlzoAi5EjncLLAAtESIWHdeV19JUlhr5VrTBbtoHQZ7OG
 WGORerrrb4yFFI0uqpMuK0BiovwFgAY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-150-eYOC521FM2OGzLqsgSW1lg-1; Mon, 14 Jun 2021 10:28:14 -0400
X-MC-Unique: eYOC521FM2OGzLqsgSW1lg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 435651015C84;
 Mon, 14 Jun 2021 14:28:13 +0000 (UTC)
Received: from horse.redhat.com (ovpn-114-174.rdu2.redhat.com [10.10.114.174])
 by smtp.corp.redhat.com (Postfix) with ESMTP id ADF1C60657;
 Mon, 14 Jun 2021 14:28:04 +0000 (UTC)
Received: by horse.redhat.com (Postfix, from userid 10451)
 id 3CB2122054F; Mon, 14 Jun 2021 10:28:04 -0400 (EDT)
Date: Mon, 14 Jun 2021 10:28:04 -0400
From: Vivek Goyal <vgoyal@redhat.com>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20210614142804.GA869400@redhat.com>
References: <20210608153524.GB504497@redhat.com>
 <YMCPPCbjbRoPAEcL@stefanha-x1.localdomain>
 <20210609154543.GA579806@redhat.com>
 <YMHKZhfT0CUgeLno@stefanha-x1.localdomain>
 <YMHOXn2cpGh1T9vz@codewreck.org> <YMXyW0KXc3HqdUAj@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YMXyW0KXc3HqdUAj@codewreck.org>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lsnZe-00035y-3n
Subject: Re: [V9fs-developer] [PATCH] init/do_mounts.c: Add
 root="fstag:<tag>" syntax for root device
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
Cc: David Howells <dhowells@redhat.com>, Miklos Szeredi <miklos@szeredi.hu>,
 Richard Weinberger <richard.weinberger@gmail.com>,
 linux kernel mailing list <linux-kernel@vger.kernel.org>, dgilbert@redhat.com,
 virtio-fs@redhat.com, viro@zeniv.linux.org.uk,
 Stefan Hajnoczi <stefanha@redhat.com>, Christoph Hellwig <hch@infradead.org>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sun, Jun 13, 2021 at 08:56:11PM +0900, Dominique Martinet wrote:
> Dominique Martinet wrote on Thu, Jun 10, 2021 at 05:33:34PM +0900:
> > Stefan Hajnoczi wrote on Thu, Jun 10, 2021 at 09:16:38AM +0100:
> > > virtio-9p should be simple. I'm not sure how much additional setup the
> > > other 9p transports require. TCP and RDMA seem doable if there are
> > > kernel parameters to configure things before the root file system is
> > > mounted.
> > 
> > For TCP, we can probably piggyback on what nfs does for this, see the
> > ip= parameter in Documentation/admin-guide/nfs/nfsroot.rst -- it lives
> > in net/ipv4/ipconfig.c so should just work out of the box
> 
> Hm, just tried and it doesn't quite work for some reason -- in this
> stack trace:
>  kthread_should_stop+0x71/0xb0
>  wait_woken+0x182/0x1c0
>  __inet_stream_connect+0x48a/0xc00
>  inet_stream_connect+0x53/0xa0
>  p9_fd_create_tcp+0x2d6/0x420
>  p9_client_create+0x7bc/0x11d0
>  v9fs_session_init+0x1cd/0x1220
>  v9fs_mount+0x8c/0x870
>  legacy_get_tree+0xef/0x1d0
>  vfs_get_tree+0x83/0x240
>  path_mount+0xda3/0x1800
>  init_mount+0x98/0xdd
>  do_mount_root+0xe0/0x255
>  mount_root+0x47/0xd7
>  prepare_namespace+0x136/0x165
>  kernel_init+0xd/0x123
>  ret_from_fork+0x22/0x30
> 
> current->set_child_tid is null, causing a null deref when checking
> &to_kthread(current)->flags
> 
> It does work with nfsroot though so even if this doesn't look 9p
> specific I guess I'll need to debug that eventually, but this can
> be done later... I'm guessing they don't use the same connect() function
> as 9p's is ipv4-specific (ugh) and that needs fixing eventually anyway.
> 
> For reference this is relevant part of kernel command line I used for
> tcp:
> root=fstag:x.y.z.t rootflags=trans=tcp,aname=rootfs rootfstype=9p ip=dhcp
> 
> (and ip=dhcp requires CONFIG_IP_PNP_DHCP=y)
> 
> 
> 
> Virtio does work quite well though and that's good enough for me -- I
> was going to suggest also documenting increasing the msize (setting
> e.g. rootflags=msize=262144) but we really ought to increase the
> default, that came up recently and since no patch was sent I kind of
> forgot... Will do that now.
> 
> 
> 
> @Vivek - I personally don't really care much, but would tend to prefer
> your v2 (without fstag:) from a user perspective the later is definitely
> better but I don't really like the static nobdev_filesystems array --

I am not a big fan of nobdev_filesystems array but I really don't feel
comfortable opening up this code by default to all filesystems having
flag FS_REQUIRES_DEV. Use cases of this code path are not well documented
and something somewhere will be broken and called regression.

I think nobdev_filesystems is sort of a misfit. Even mtd, ubi, cifs
and nfs are nobdev filesystems but they are not covered by this.

May be this array needs to be called say "tag_based_rootfs[]" and
array entries can be gated by config options from filesystems.

#ifdef CONFIG_VIRTIO_FS
  "virtiofs",
#endif
#ifdef CONFIG_FOO
  "foo",
#endif

Now all the filesystems which want to simply pass a "tag" as source of
mount to filesystem directly during mount can opt-in into this.
virtiofs and 9p are the first two filesystmes to opt-in. And then
flow of mount code becomes much more clean.

Is it mtd or ubi device
   mount mtd/ubi root
Is it nfs/cifs device
   mount nfs/cifs root
Is it tag based fs
   mount tag based fs
else
   mount block device based fs. 

Calling it nobdev based fs makes it too generic while we are not
covering all the cases.

So my personal perference is that just to carve out a new class
of rootfs (tag based) and let users opt in if they fit into
this class. This kind of approach also reduces risk of any 
regression significantly.

I don't know enough about mtd/ubi but I suspect that it might be
possible that they can make use of this option as well.

> I'd bite the bullet and use FS_REQUIRES_DEV (and move this part of the
> code just a bit below after the root_wait check just in case it matters,

Problem with moving this below root_wait check is that if user boots
with root_wait option for virtiofs/9p, it will loop infitely. Reason
being that ROOT_DEV=0 and device will never show up.

I am assuming that for out use cases, device will need to be present
at the time of boot. We can't have a notion of waiting for device to
show up.

> but at that point if something would mount with /dev/root but not with
> the raw root=argument then they probably do require a device!)
> 
> It could also be gated by a config option like e.g. CONFIG_ROOT_NFS and
> others all are to make sure it doesn't impact anyone who doesn't want to
> be impacted - I'm sure some people want to make sure their device
> doesn't boot off a weird root if someone manages to change kernel params
> so would want a way of disabling the option...

I guess I could do that. Given more than one filesystem will use this
option (virtiofs and 9p to begin with), so we will have to have a 
config option name which is little more generic and not filesystem
specific like CONFIG_ROOT_NFS or CONFIG_ROOT_CIFS.

> 
> 
> Well, if you keep the array, please add 9p to the list and resend as a
> proper patch so I can reply with tested-by/reviewed-by tags on something
> more final.

Sure, I will add 9p to list.

> 
> 
> Also, matter-of-factedly, how is this going to be picked up?
> Is the plan to send it directly to Linus as part of the next virtiofs
> PR? Going through Al Viro?

I was hoping that this patch can be routed through Al Viro.

Thanks
Vivek



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
