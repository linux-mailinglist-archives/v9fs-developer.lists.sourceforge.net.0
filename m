Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F22B93A8F61
	for <lists+v9fs-developer@lfdr.de>; Wed, 16 Jun 2021 05:25:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ltMBD-0004M9-RA; Wed, 16 Jun 2021 03:25:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@codewreck.org>) id 1ltMBC-0004Lt-5r
 for v9fs-developer@lists.sourceforge.net; Wed, 16 Jun 2021 03:25:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UF41cxCsn59VfZ1zaB/7LANWupA7/gtFYXligXAa+m0=; b=XZBYTctty2xXoAHvRx7qGCFh0z
 FfoK/3b/sZzEQiMQjF1rSIkqNk460inyCXcwSQq3wQjoTvkJHguTLYr/MYxbXtlpSEmukyRtSQhdR
 frBtVCgSAaVXS6A+09biR6hPf33FKwfOLiErL5K0L4jS0VQZqSo1DpEpw8YzE5wq/seo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UF41cxCsn59VfZ1zaB/7LANWupA7/gtFYXligXAa+m0=; b=krYoRMsiUm9bh0XzhqqRhW+EOH
 FjiqXE7COuGhl7gSTbNXRxcbrPpb6td51imixNjc/+fOMqLgHGhkKsSWhJ/mLRfIFpaomLimaIKCo
 25JXGmT8qiD2M6nWBx4DxY5FQZjouuUr7V0kb20uQkgTdx35zxYl85t9UZkWcfJm3Tz0=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1ltMB6-0000tl-7b
 for v9fs-developer@lists.sourceforge.net; Wed, 16 Jun 2021 03:25:26 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id D27D0C01D; Wed, 16 Jun 2021 05:25:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1623813914; bh=UF41cxCsn59VfZ1zaB/7LANWupA7/gtFYXligXAa+m0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GXJKKONj0LmR6qxboHv01516ugkbcb/tAdWjUdsaQC+P6mkyORKR/rnEASQMStKos
 o3IdEvGn0AlMO2KiMGMW5Qsb6bGRIN+k6lxYr7Pfmm+ozztcknKvsdvDorT6zwkqSl
 UoYwAhFeYygyfbwlp5EZAcrBS2g9JpTNA21X2QYOU7KgrrmF1kJIz+QJ/DfLSJJtUA
 y3xRvgFuJUZG+xlFZcRCoM2z+bDoj6x9r61mSuFiFMIgpnxZXadiGC63/D7NKCOIBB
 TnRhZx1JmafwcFyt1JVr490l5orIElXVZ1/oawphXgsIzyBdaaFSilYJWEGijZ2KhH
 /JQHXydXLzS9w==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 7034DC009;
 Wed, 16 Jun 2021 05:25:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1623813913; bh=UF41cxCsn59VfZ1zaB/7LANWupA7/gtFYXligXAa+m0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oki2/2Uw5o8ufmcpkC4jpFdYETCT0KE82Do6WV0y2d+mVCxEMGzNf3o993+v+EcTL
 2+aowAQKdzsIBxZcwaa1VbqsMFqY26QmCQATCNMBMqLS/wGcCKS6PM2Eu/G0wvgD6F
 FUS3QcJCgOJY8LSohYs/gUitLpEj7+ISD/9hfwd9VvvLJyPpC0HddtJRssohu1jLq/
 bBnWXzYziAEb9d2R4BStq2KgrZFbHrHEqYi1ESFqpNl6EG4rxeZWr8pl+xOZQSnbPl
 kOSjweO6xP74XWqSp26piXJ8KuNct9hRajPa7vlfRnW3m1qyrbs0i44XokAP173Irp
 Hp+vDUrjn1r2g==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id ab0577ff;
 Wed, 16 Jun 2021 03:25:06 +0000 (UTC)
Date: Wed, 16 Jun 2021 12:24:51 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Vivek Goyal <vgoyal@redhat.com>
Message-ID: <YMlvA2/L/n6XFa2h@codewreck.org>
References: <20210608153524.GB504497@redhat.com>
 <YMCPPCbjbRoPAEcL@stefanha-x1.localdomain>
 <20210609154543.GA579806@redhat.com>
 <YMHKZhfT0CUgeLno@stefanha-x1.localdomain>
 <YMHOXn2cpGh1T9vz@codewreck.org> <YMXyW0KXc3HqdUAj@codewreck.org>
 <20210614142804.GA869400@redhat.com>
 <YMfi3Q50b1wV+lDW@codewreck.org>
 <20210615135057.GB965196@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210615135057.GB965196@redhat.com>
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
X-Headers-End: 1ltMB6-0000tl-7b
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

Vivek Goyal wrote on Tue, Jun 15, 2021 at 09:50:57AM -0400:
>> Ultimately if we go through the explicit whitelist that's not required
>> anyway, and in that case it's probably better to check before as you've
>> said.
> 
> Yes, current whitelist based approach will not allow to have both
> block devices as well as tag/non-block based root devices. Are there
> any examples where we current filesystems support such things. And
> can filesystem deal with it instead?

Hmm I had thought ubi might allow for both through mount options, but
that doesn't seem to be the case.
I guess it is possible to imagine some fuse filesystem allowing both but
I'm not sure fuse is a valid target for rootfs, and looking at the list
of others filesystems which don't have the flag (from a quick grep:
mm/shmem, ipc/mqueue, nfs, sysfs, ramfs, procfs, overlayfs, hostfs,
fuse, ecryptfs, devpts, coda, binderfs, cifs, ceph, afs, 9p, cgroups) I
guess that might not be a problem.

> If this becomes a requirement, then we will have to go back to my
> previous proposal of "root=fstag=<tag>" instead. That way "root=<foo>"
> will be interpreted as block device while "root=fstag=<foo>" explicitly
> says its some kind of tag (and not a block device).

I guess that if it ever becomes an issue we could make rootwait wait for
only driver_probe_done() at that point, but as it is now sounds good to
me for now.


While I'm looking at this code, I feel that the two
 if (!strncmp(root_device_name, "mtd", 3) ||
     !strncmp(root_device_name, "ubi", 3)) {
will eventually cause some problems once we say arbitrary tags are
allowed if one ever starts with it, but I'm not sure that can be changed
without breaking something else so let's leave that aside for now as
well...

>> What I was advocating for is the whole feature being gated by some
>> option - my example with an embdedded device having 9p builtin (because
>> for some reason they have everything builtin) but not wanting to boot on
>> a tcp 9p rootfs still stands even if we're limiting this to a few
>> filesystems.
>> 
>> If you're keeping the idea of tags CONFIG_ROOT_TAGS ?
> 
> I thought about it and CONFIG_ROOT_TAGS made less sense because it will
> disable all filesystem roots. So say you don't want to boot from 9p
> rootfs but are ok booting from virtiofs rootfs, then disablig whole
> feature does not allow that.
> 
> We probably need to have per filesystem option. Something like CONFIG_ROOT_NFS
> and CONFIG_CIFS_ROOT. So may be we need to add CONFIG_ROOT_VIRTIOFS
> and COFIG_ROOT_9P_FS to decide wither to include filesystem in whitelist
> or not and that will enable/disable boot from root functionality.

Hm, I guess that makes sense.
A global kill switch might have made integration easier if it's disabled
by default like others, but you're right that in practice people would
only want to enable a specific filesystem, right.


> I feel that these kind of patches can go in later. Because a user
> can boot from 9p or virtiofs rootfs anyway using mtd prefix hack
> or using /dev/root as tag hack and adding these options does not
> close those paths. So I thought that adding these config
> options should not be a strict requirement for this patch series and
> these options can be added separately in respective filesystems. WDYT?

I wasn't aware of such possibilities, good to know :-D

Sounds good to me, I'll do proper review and retest the v2 patch over the
weekend.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
