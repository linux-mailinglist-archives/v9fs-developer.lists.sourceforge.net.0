Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 30611299355
	for <lists+v9fs-developer@lfdr.de>; Mon, 26 Oct 2020 18:06:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kX5wV-0006e8-U5; Mon, 26 Oct 2020 17:05:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dsterba@suse.cz>) id 1kX5wU-0006dl-1i
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Oct 2020 17:05:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/N6hOP+KgnZzaHIZ7RNdh1RIqYslx+xT0u7wioQ/HQM=; b=m2E6yehYs0SKAIBwZOiNjAKXhk
 /U9z/1fwxIBff7oNdP4bZ2QAgrLrWLGJ5CQTlyDtisoujkXQTuMvnst1DTnf5olcXxZW6UmwAMonM
 3RImQAqOgXQ91SxrFhoZYgK8wooB5EDnvmJ9YSxkgOMNUC3vbC+MsBrFMenbcSN0hoyE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/N6hOP+KgnZzaHIZ7RNdh1RIqYslx+xT0u7wioQ/HQM=; b=ZbrfEgNtMCvZLixP9zX9DV7RS+
 eWXIpOkxKO8Dhuc3w03A5IQG5cQDpezk9+QoOfBuAO0/lj/7VFDqTAZcXs2ah3M3k2uIM5kluXJ7q
 LVXZyJ90AtRwyBLSb7ch5dDWVhjrd0LbOPA5tmwOCQ7q/TNQaKc9siN+6ZfPz9Fn1NRg=;
Received: from mx2.suse.de ([195.135.220.15])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kX5wH-00EUrn-LD
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Oct 2020 17:05:57 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 36963ACD8;
 Mon, 26 Oct 2020 17:05:28 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
 id C43ADDA6E2; Mon, 26 Oct 2020 18:03:54 +0100 (CET)
Date: Mon, 26 Oct 2020 18:03:54 +0100
From: David Sterba <dsterba@suse.cz>
To: Matthew Wilcox <willy@infradead.org>
Message-ID: <20201026170354.GR6756@twin.jikos.cz>
Mail-Followup-To: dsterba@suse.cz, Matthew Wilcox <willy@infradead.org>,
 linux-fsdevel@vger.kernel.org, ericvh@gmail.com, lucho@ionkov.net,
 viro@zeniv.linux.org.uk, jlayton@kernel.org, idryomov@gmail.com,
 mark@fasheh.com, jlbec@evilplan.org, joseph.qi@linux.alibaba.com,
 v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 ceph-devel@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-btrfs@vger.kernel.org, clm@fb.com, josef@toxicpanda.com,
 dsterba@suse.com, stable@vger.kernel.org
References: <20201004180428.14494-1-willy@infradead.org>
 <20201004180428.14494-7-willy@infradead.org>
 <20201026163546.GP6756@twin.jikos.cz>
 <20201026164442.GU20115@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201026164442.GU20115@casper.infradead.org>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kX5wH-00EUrn-LD
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
Reply-To: dsterba@suse.cz
Cc: lucho@ionkov.net, clm@fb.com, ericvh@gmail.com, linux-btrfs@vger.kernel.org,
 mark@fasheh.com, jlayton@kernel.org, dsterba@suse.cz, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, joseph.qi@linux.alibaba.com, dsterba@suse.com,
 viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, idryomov@gmail.com, josef@toxicpanda.com,
 ceph-devel@vger.kernel.org, ocfs2-devel@oss.oracle.com, jlbec@evilplan.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Oct 26, 2020 at 04:44:42PM +0000, Matthew Wilcox wrote:
> On Mon, Oct 26, 2020 at 05:35:46PM +0100, David Sterba wrote:
> > On Sun, Oct 04, 2020 at 07:04:27PM +0100, Matthew Wilcox (Oracle) wrote:
> > > On 32-bit systems, this shift will overflow for files larger than 4GB.
> > > 
> > > Cc: stable@vger.kernel.org
> > > Fixes: 53b381b3abeb ("Btrfs: RAID5 and RAID6")
> > > Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> > > ---
> > >  fs/btrfs/raid56.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/fs/btrfs/raid56.c b/fs/btrfs/raid56.c
> > > index 255490f42b5d..5ee0a53301bd 100644
> > > --- a/fs/btrfs/raid56.c
> > > +++ b/fs/btrfs/raid56.c
> > > @@ -1089,7 +1089,7 @@ static int rbio_add_io_page(struct btrfs_raid_bio *rbio,
> > >  	u64 disk_start;
> > >  
> > >  	stripe = &rbio->bbio->stripes[stripe_nr];
> > > -	disk_start = stripe->physical + (page_index << PAGE_SHIFT);
> > > +	disk_start = stripe->physical + ((loff_t)page_index << PAGE_SHIFT);
> > 
> > It seems that this patch is mechanical replacement. If you check the
> > callers, the page_index is passed from an int that iterates over bits
> > set in an unsigned long (bitmap). The result won't overflow.
> 
> Not mechanical, but I clearly made mistakes.  Will you pick up the
> patches which actually fix bugs?

Yes, I just replied to the first patch, that does fix an overflow.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
