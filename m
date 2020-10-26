Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D562992B9
	for <lists+v9fs-developer@lfdr.de>; Mon, 26 Oct 2020 17:45:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kX5cc-0006ft-V1; Mon, 26 Oct 2020 16:45:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kX5cb-0006fV-6W
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Oct 2020 16:45:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ulnqTjMrBKaF480Abr2+mk3fNXPi753tTvCmHg1d4pg=; b=jQNoOSDgD0PkJJ1ekxDz8o0Ecr
 VybzhPkqYxU1VEnzJIc2Uw25Zt6TF6BN9qkZfGFdqi/Jly9pfYr7HU4yl88+NGxwgVa3l2MRbWlgt
 fN/pD5bBV/Ca9YoiMPtkh+oPSAzKKMwQ326H6MXYROJUJClUUfQuCQsc93fcW4RhBv0A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ulnqTjMrBKaF480Abr2+mk3fNXPi753tTvCmHg1d4pg=; b=OCMgJQfJorNArZbCYk8gH6H/40
 T7Jzf7wfauQrW9tWmcWmjf52YIh8u7UgiiMJ4glBWRJ6RcaNHON9OArCeHBhULJvlScwOxumpEbvC
 O61Zsl18E5KNxP3+UyBiqvv2/BWUC7x9VYT2APLm5A7AYJYNJGUuNyTdCKmy1jv5NlHQ=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kX5cW-007neF-IF
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Oct 2020 16:45:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=ulnqTjMrBKaF480Abr2+mk3fNXPi753tTvCmHg1d4pg=; b=f1NI3CAsOSysuZzKkwfJhVuIWR
 3mXIQtiVD7DD/2SdiUrYbTpuJuX6lgF28b/95rFLxUerMdwSVmj/ZV+tnAz6dfDbVkSdMl8QQJJ3n
 rpRsqBFIv8JAhq+bzsja5A3WUI151bKwWdqER6/6DpsxpQ5cju9L+9HnwftwJrMUJsnBY7ZyiSaZE
 8qIFt38vcTDLCQX9rCsElOM2Ls24D0mI6Qa8Th4tgk+hFQHG+OuASqdjaqYMzYmn28LiHoaDg4WOl
 jNsaZjcAxkuv+tE9b6PitSKZTpk4b1W73VyFNGg8Te+nIR/QvFEqofI+P0lH20xmNgUMLOXbB4jLN
 dNv1gxow==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kX5bu-0003Lt-GL; Mon, 26 Oct 2020 16:44:42 +0000
Date: Mon, 26 Oct 2020 16:44:42 +0000
From: Matthew Wilcox <willy@infradead.org>
To: dsterba@suse.cz, linux-fsdevel@vger.kernel.org, ericvh@gmail.com,
 lucho@ionkov.net, viro@zeniv.linux.org.uk, jlayton@kernel.org,
 idryomov@gmail.com, mark@fasheh.com, jlbec@evilplan.org,
 joseph.qi@linux.alibaba.com, v9fs-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, ceph-devel@vger.kernel.org,
 ocfs2-devel@oss.oracle.com, linux-btrfs@vger.kernel.org, clm@fb.com,
 josef@toxicpanda.com, dsterba@suse.com, stable@vger.kernel.org
Message-ID: <20201026164442.GU20115@casper.infradead.org>
References: <20201004180428.14494-1-willy@infradead.org>
 <20201004180428.14494-7-willy@infradead.org>
 <20201026163546.GP6756@twin.jikos.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201026163546.GP6756@twin.jikos.cz>
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1kX5cW-007neF-IF
Subject: Re: [V9fs-developer] [PATCH 6/7] btrfs: Promote to unsigned long
 long before shifting
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Oct 26, 2020 at 05:35:46PM +0100, David Sterba wrote:
> On Sun, Oct 04, 2020 at 07:04:27PM +0100, Matthew Wilcox (Oracle) wrote:
> > On 32-bit systems, this shift will overflow for files larger than 4GB.
> > 
> > Cc: stable@vger.kernel.org
> > Fixes: 53b381b3abeb ("Btrfs: RAID5 and RAID6")
> > Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> > ---
> >  fs/btrfs/raid56.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/fs/btrfs/raid56.c b/fs/btrfs/raid56.c
> > index 255490f42b5d..5ee0a53301bd 100644
> > --- a/fs/btrfs/raid56.c
> > +++ b/fs/btrfs/raid56.c
> > @@ -1089,7 +1089,7 @@ static int rbio_add_io_page(struct btrfs_raid_bio *rbio,
> >  	u64 disk_start;
> >  
> >  	stripe = &rbio->bbio->stripes[stripe_nr];
> > -	disk_start = stripe->physical + (page_index << PAGE_SHIFT);
> > +	disk_start = stripe->physical + ((loff_t)page_index << PAGE_SHIFT);
> 
> It seems that this patch is mechanical replacement. If you check the
> callers, the page_index is passed from an int that iterates over bits
> set in an unsigned long (bitmap). The result won't overflow.

Not mechanical, but I clearly made mistakes.  Will you pick up the
patches which actually fix bugs?


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
