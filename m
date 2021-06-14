Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6D53A5EC2
	for <lists+v9fs-developer@lfdr.de>; Mon, 14 Jun 2021 11:02:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lsiUC-0006ol-U8; Mon, 14 Jun 2021 09:02:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <asmadeus@codewreck.org>) id 1lsiUA-0006oU-6I
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Jun 2021 09:02:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AE8xWq3+O6y8F4JIxC9P1TzjZjOLXYNQVdQLQm0W2PY=; b=jH+y336GPjDCfv9YjwPZYljGzs
 8B75cIa+k7L9aQlGebzDGmX3iU1FY1I8HT1C+rxpG/pmXvuInVx/NkT3e/R67RnXAcwbW1Tflk2Mh
 CiG0RTl1L40rTetOq+NpVQ6ZCwFQrF1VI6oT19nPMwV1zZ/cOonxPWs9cZ+UWxuaHr1c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AE8xWq3+O6y8F4JIxC9P1TzjZjOLXYNQVdQLQm0W2PY=; b=AwRvAxGFTlVd5WJTmPxjnvamMo
 zXvH6dbj1q3i+KSlsctH7i2PDpZcOQcuheVJRytId3UPCmp+qet7hyqdEaoaGKGIeRlTNxicE6QZD
 58u7jdrPsAdiYoxdfiO6c5MuZvQKUYW6wBsIMz+sCIsjkNKWAHcro/viOHQzpM3kjHI8=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lsiU0-008h5K-UH
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Jun 2021 09:02:23 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id A7159C01F; Mon, 14 Jun 2021 11:02:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1623661325; bh=AE8xWq3+O6y8F4JIxC9P1TzjZjOLXYNQVdQLQm0W2PY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=3ISs6qI8xXvss0UhLXH7OC25/miPDXriKk7/HaF77S72iDnZbySAYKvv4xyBjM5hX
 nHwbnBI8IxPwHdcP2mR8VoAwn624EIFIpk28AcOvyDW9m21l5UEMC/Nx5VwSkspQZo
 AQfe+U8K9FE9makBwwWuDniWr+5s7+DxSLhVDKGG20b8BCmvzepHyfWdrevLzt0Oh8
 OwD9s0Jmwxi/Y9HS4vcJ8IIzUPMx+vz6h2h4HWcsD3KSHhzKlebZx8fye2NO4y3zis
 kVQc+TRhaR9RKXf5xJUZziSwfB2sSpZ3V8OSPzuQHpt3y+FQA/xgCXVqQlq+gfG64J
 ZWL8ySBHfBs0w==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 17624C01B;
 Mon, 14 Jun 2021 11:02:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1623661324; bh=AE8xWq3+O6y8F4JIxC9P1TzjZjOLXYNQVdQLQm0W2PY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=O1rsHoPVY22AMd4p7M+BgKFly+4EE6cYp8gmk0Mm8Sbi7fW4uGFQQjEzHl/1Au0mA
 mFlFh1o4zuEvkPEJELUswT6QHeCxZ6UvaYB+bzNVwc5z3hj90IQknbh5IKYow7HKkr
 zrAYvK58PRZlqvYPxexGngL260zjelfN3qer0QLd39EdQ59jkM39UZ0BsYepLiu+lj
 BnQ6ZJR7a+84I5T6VRHMgIsGQornIU/xD6NgMvVXMUqIB71s/bw9yLc7mtdG3yLS4r
 r+RK451He4pIyklmmsE7kvcAalQdcQI588/CJ2Any0jJg4OMbR/IUvETv4k6OcisCO
 MVHMEsxynqJ4g==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id df5f9604;
 Mon, 14 Jun 2021 09:01:59 +0000 (UTC)
Date: Mon, 14 Jun 2021 18:01:44 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <YMca+N0UiGNZ1lSm@codewreck.org>
References: <20210606230922.77268-1-changbin.du@gmail.com>
 <YMcaEq95T+1GxZz2@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YMcaEq95T+1GxZz2@localhost>
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
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1lsiU0-008h5K-UH
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
 v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Changbin Du <changbin.du@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Josh Triplett wrote on Mon, Jun 14, 2021 at 01:57:54AM -0700:
> On Mon, Jun 07, 2021 at 07:09:19AM +0800, Changbin Du wrote:
> > Just like cifs and nfs, this short series enables rootfs support for 9p.
> > Bellow is an example which mounts v9fs with tag 'r' as rootfs in qemu
> > guest via virtio transport.
> > 
> >   $ qemu-system-x86_64 -enable-kvm -cpu host -m 1024 \
> >         -virtfs local,path=$rootfs_dir,mount_tag=r,security_model=passthrough,id=r \
> >         -kernel /path/to/linux/arch/x86/boot/bzImage -nographic \
> >         -append "root=/dev/v9fs v9fsroot=r,trans=virtio rw console=ttyS0 3"
> 
> Rather than inventing a pseudo-device /dev/v9fs for this, would it
> potentially work to use the existing rootfstype and rootflags options
> for this? rootfstype already determines what filesystem should be used
> to mount the root, and rootflags already provides options for that
> filesystem.
> 
> For instance, for the above example:
> rootfstype=9p root=r rootflags=trans=virtio
> 
> That would require a bit of fiddling to make rootfstype=9p allow a root
> that's just the mount_tag. If that isn't an option, then even with
> root=/dev/v9fs I think it still makes sense to use the existing
> rootflags for "trans=virtio" rather than creating a new "v9fsroot"
> option for that.

This doesn't work as is because of the way the code is written, if
there's no block device associated with a root=x option right now it
will lead to kernel panic.

I replied with folks in Cc but there's another thread on linux-fsdevel@
with a more generic approach that will build a list of filesystems which
don't require such a block device (either hardcoded with virtiofs and 9p
or based on FS_REQUIRES_DEV), thread started there but there's a second
patch hidden an more discussion below:
https://lore.kernel.org/linux-fsdevel/20210608153524.GB504497@redhat.com/


My preferred approach right now would be to go with their approach, and
adjust the documentation Changbin Du wrote here, to have the best of
both worlds.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
