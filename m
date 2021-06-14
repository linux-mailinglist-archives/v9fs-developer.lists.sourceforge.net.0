Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 892613A5EF4
	for <lists+v9fs-developer@lfdr.de>; Mon, 14 Jun 2021 11:13:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lsiei-0007Fk-Cq; Mon, 14 Jun 2021 09:13:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <josh@joshtriplett.org>) id 1lsief-0007Fb-V5
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Jun 2021 09:13:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HqC8ppzjbq58szsRQXJPohMw0oo3DrYRjFPAskvtlgs=; b=aCB42ErMFuxbnRsbUSTKvl2jy7
 Lfnzm3rNAZZvDxRE+71R66LTG68Au896PC9GZqGyBngTjtK+qCtagoFSakhoqG2qIbZ7vwdutmnuu
 QtthBsLdW7XcCHJUkCwOC3AH7/k7/Bu3BR1b035Dl3zdgerCcj+L8l/450FTbOchSZYg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HqC8ppzjbq58szsRQXJPohMw0oo3DrYRjFPAskvtlgs=; b=WyfKHh5qlaLG7r8NmT6XdQkkNV
 iXsrx4nfKQRdak1ZW0vPAC/4P/nFd98SnmkyMRHZLYgWm6SaLCzVqMJKGyseOQMlMgRP9eDo9MmCV
 HDFvAjoYDyhegfpEgkXNWiacYviLfvULv17AKutiSMjeBjfFDMgsQnpkek0L7XrnsFiM=;
Received: from mslow1.mail.gandi.net ([217.70.178.240])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lsieb-008i8W-MV
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Jun 2021 09:13:15 +0000
Received: from relay11.mail.gandi.net (unknown [217.70.178.231])
 by mslow1.mail.gandi.net (Postfix) with ESMTP id 50510D1BF5
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 14 Jun 2021 08:58:05 +0000 (UTC)
Received: (Authenticated sender: josh@joshtriplett.org)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 247DD100008;
 Mon, 14 Jun 2021 08:57:55 +0000 (UTC)
Date: Mon, 14 Jun 2021 01:57:54 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Changbin Du <changbin.du@gmail.com>
Message-ID: <YMcaEq95T+1GxZz2@localhost>
References: <20210606230922.77268-1-changbin.du@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210606230922.77268-1-changbin.du@gmail.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.178.240 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lsieb-008i8W-MV
Subject: Re: [V9fs-developer] [PATCH v3 0/3] 9p: add support for root file
 systems
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Jun 07, 2021 at 07:09:19AM +0800, Changbin Du wrote:
> Just like cifs and nfs, this short series enables rootfs support for 9p.
> Bellow is an example which mounts v9fs with tag 'r' as rootfs in qemu
> guest via virtio transport.
> 
>   $ qemu-system-x86_64 -enable-kvm -cpu host -m 1024 \
>         -virtfs local,path=$rootfs_dir,mount_tag=r,security_model=passthrough,id=r \
>         -kernel /path/to/linux/arch/x86/boot/bzImage -nographic \
>         -append "root=/dev/v9fs v9fsroot=r,trans=virtio rw console=ttyS0 3"

Rather than inventing a pseudo-device /dev/v9fs for this, would it
potentially work to use the existing rootfstype and rootflags options
for this? rootfstype already determines what filesystem should be used
to mount the root, and rootflags already provides options for that
filesystem.

For instance, for the above example:
rootfstype=9p root=r rootflags=trans=virtio

That would require a bit of fiddling to make rootfstype=9p allow a root
that's just the mount_tag. If that isn't an option, then even with
root=/dev/v9fs I think it still makes sense to use the existing
rootflags for "trans=virtio" rather than creating a new "v9fsroot"
option for that.

- Josh Triplett


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
