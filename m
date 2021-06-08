Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8CD3A041C
	for <lists+v9fs-developer@lfdr.de>; Tue,  8 Jun 2021 21:26:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lqhN0-0000zJ-9p; Tue, 08 Jun 2021 19:26:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <vgoyal@redhat.com>) id 1lqhMz-0000zC-9Z
 for v9fs-developer@lists.sourceforge.net; Tue, 08 Jun 2021 19:26:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LPDqsEBP/MDK1aKd0nqXwm2OMJM183ITXNbTcctz3N8=; b=S/4UQOyxZDvDBKTg9oz3ItQ9zj
 HJ1tkWaW3aJon1kUbq/GCkxGghsbwd6c04Vm+93nL1HVLf81SjKWC+DYlxxu9qtSJAxi9Nm5p2JHa
 Od0PG6ktYY9fRL9mZrozIKXv88LxQk6gGKS60Ra2ciXiDft3yPUIDsE+t428UgzqpOJI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LPDqsEBP/MDK1aKd0nqXwm2OMJM183ITXNbTcctz3N8=; b=YT183iZ4l/xNpZ/kCoKaFwN8lZ
 BankJhzMjbNDQ7G/gJJqpS2vB5bAiiLSqcRpR4m5wSDhrpZi5ycT4pJRA0LK6KF3LBoLhq8I7Ifms
 h1aprTAz5iURAqKqdqwNlcOvWvTqVA0okjv+lhLwOr38trn6iFwm5WA0Vi4HJV6n26dw=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lqhMr-00080W-VC
 for v9fs-developer@lists.sourceforge.net; Tue, 08 Jun 2021 19:26:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623180384;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LPDqsEBP/MDK1aKd0nqXwm2OMJM183ITXNbTcctz3N8=;
 b=L4dGllb5cWYWby6qsKnCXbkFMxJFYQQ+pctsoRjdNoeOEVnoYb2Nf88t9k5G/E9X7o6eHL
 pjNiMn0fHlXee4Py5txzwGEBwAbKGWphMeASpECYxRqU0coP39gurd+gb79tMMljT3VyD0
 JQ8vr72NXeXfQq8bC0EPND8UZrusJ20=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-71-5-T2Gw-wOvKmizB1GzmYSg-1; Tue, 08 Jun 2021 15:26:23 -0400
X-MC-Unique: 5-T2Gw-wOvKmizB1GzmYSg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C8872107ACCD;
 Tue,  8 Jun 2021 19:26:21 +0000 (UTC)
Received: from horse.redhat.com (ovpn-114-35.rdu2.redhat.com [10.10.114.35])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5C5315D9E3;
 Tue,  8 Jun 2021 19:26:18 +0000 (UTC)
Received: by horse.redhat.com (Postfix, from userid 10451)
 id E422222054F; Tue,  8 Jun 2021 15:26:17 -0400 (EDT)
Date: Tue, 8 Jun 2021 15:26:17 -0400
From: Vivek Goyal <vgoyal@redhat.com>
To: "Harry G. Coin" <hgcoin@gmail.com>
Message-ID: <20210608192617.GC504497@redhat.com>
References: <20210608153524.GB504497@redhat.com>
 <8929c252-3d99-8cdb-1c56-5fdb1fd29fc2@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8929c252-3d99-8cdb-1c56-5fdb1fd29fc2@gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lqhMr-00080W-VC
Subject: Re: [V9fs-developer] [Virtio-fs] [PATCH] init/do_mounts.c: Add
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
 linux kernel mailing list <linux-kernel@vger.kernel.org>, virtio-fs@redhat.com,
 viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Jun 08, 2021 at 01:38:56PM -0500, Harry G. Coin wrote:
> On 6/8/21 10:35 AM, Vivek Goyal wrote:
> > We want to be able to mount virtiofs as rootfs and pass appropriate
> > kernel command line. Right now there does not seem to be a good way
> > to do that. If I specify "root=3Dmyfs rootfstype=3Dvirtiofs", system
> > panics.
> >
> > virtio-fs: tag </dev/root> not found
> > ..
> > ..
> > [ end Kernel panic - not syncing: VFS: Unable to mount root fs on unkno=
wn-block(0,0) ]
> =

> Whatever the best direction forward might be for kernel patches
> regarding 'not block device as root', it would ease learning curves if
> 'the patterns that set config issue X' were the same across root 'not
> block device options' whether cephfs, nfs, 9p, virtiofs.

I think achieveing same pattern for all non-block options is pretty
hard. There are too many varieits, mtd, ubifs, nfs, cifs, and you
just mentioned cephfs.

It would be nice if somebody can achieve it. But that should not be
a blocker for this patch. Goal of this patch is to take care of virtiofs
and 9p. And any other filesystem which can work with this pattern.

I think ubi and mtd should be able to work with "root=3Dfstag:<tag>"
as well. Something like "root=3Dfstag:ubi:foo". And then ubi:foo
will should be passed to ubifs. I think only thing missing is
that current code assumes there is one filesystem passed in
rootfstype. If we want to try mounting device with multiple
filesystems then one can modify the code to call do_mount_root()
in a loop from a filesystem list.

Right now I did not need it, so I did not add it.

> All of them
> will have to handle the selinux xattr/issue, posix and flock issues,
> caching etc.

Filesystem specific flags will be passed by rootflags=3D.

> While by definition virtiofs has to exist only in a vm
> guest, the others could be baremetal or vm guest roots.=A0 (How much 9p's
> other-than-guest transports are used I don't know).
> =

> FYI (though patching the kernel may be the best option)=A0 there is a case
> that does not have those kernel panics for virtiofs-root and 9p root
> using stock fc34.=A0 As 9p, the virtiofs method uses the initrd creation
> mechanisms provided by 'dracut' or 'initramfs' to provide the 'sysroot
> pivot glue'.
> =

> On the fc34 guest a successful 'direct kernel boot' today looks like:
> =

> kernel path: /vmsystems/fedora_generic/boot/vmlinuz
> =

> initrd path: /vmsystems/fedora_generic/boot/initrd.img
> =

> Kernel args: root=3Dvirtiofs:myfs rd.shell rd.fstab

Does it work with upstream dracut or you have modified dracut to
parse "root=3Dvirtiofs:myfs" option.

I think it probably is better that both kernel and dracut parse
and understand same "root=3D" format string and I will try to
avoid creating a "root=3D" option which dracut understands but
not kernel. Or try creating two different wasy to mount =

virtiofs using "root=3D" for kernel and dracut.

That's why I am first trying to get this new syntax in the kernel
and once it works, I want to follow up with dracut folks to
parse "root=3Dfstag:<tag>" and be able to mount virtiofs/9p/foo
filesystem.

Thanks
Vivek

> =

> =

> The xml to pass through virtio-fs is:
> =

> <filesystem type=3D"mount" accessmode=3D"passthrough">
> =A0 <driver type=3D"virtiofs" queue=3D"1024"/>
> =A0 <binary xattr=3D"on">
> =A0=A0=A0 <lock posix=3D"on" flock=3D"on"/>
> =A0 </binary>
> =A0 <source dir=3D"/vmsystems/fedora_generic"/>
> =A0 <target dir=3D"myfs"/>
> </filesystem>
> =

> The guest fstab is:
> =

> myfs / virtiofs defaults 0 0
> =

> HTH
> =

> Harry Coin
> =

> =

> =




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
