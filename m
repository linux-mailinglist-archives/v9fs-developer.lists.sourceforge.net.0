Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D58299246
	for <lists+v9fs-developer@lfdr.de>; Mon, 26 Oct 2020 17:23:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kX5HV-0008N5-Ni; Mon, 26 Oct 2020 16:23:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dsterba@suse.cz>) id 1kX5HU-0008Mv-Jd
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Oct 2020 16:23:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O5YV0y8CepESWDoakC1dKNFeKgGavb3H1sau/egCT4A=; b=KogNP1wdHJ4oytoeZjidtHP5yL
 cnkst1Rp94H5PQJ04BJEKATgK7ft23OAWoeN6q8t6+/FW2ZJvJ1BYW7QAM5y3pH5iRLTdtZF6Rbgb
 gFILR1G54C6e4s7Je8RgXEv5E9iyYw4SAUEFamIysNFIgnIknJ+16Uxb8n5wsiXLDYC8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=O5YV0y8CepESWDoakC1dKNFeKgGavb3H1sau/egCT4A=; b=Ay+1GUtQoyjF+CrZDYj6JC7FCg
 +NjirUHzUEjNbn8jzQlpQUphiVhfXDy6ok6hjWd7JVmrrAanJMBS8kwqq4ZAsD7eUlj89OIdIkpYW
 KA/nKvqxkghG7n+e4jaZ5iexEQm2biE6f03onBqBCD8oYQIluooOlCMGkx04HlsaF6Mc=;
Received: from mx2.suse.de ([195.135.220.15])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kX5HL-007m0O-WD
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Oct 2020 16:23:36 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 8CA9CAB8F;
 Mon, 26 Oct 2020 16:23:14 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
 id 06C89DA6E2; Mon, 26 Oct 2020 17:21:39 +0100 (CET)
Date: Mon, 26 Oct 2020 17:21:39 +0100
From: David Sterba <dsterba@suse.cz>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Message-ID: <20201026162139.GO6756@twin.jikos.cz>
Mail-Followup-To: dsterba@suse.cz,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 linux-fsdevel@vger.kernel.org, ericvh@gmail.com, lucho@ionkov.net,
 viro@zeniv.linux.org.uk, jlayton@kernel.org, idryomov@gmail.com,
 mark@fasheh.com, jlbec@evilplan.org, joseph.qi@linux.alibaba.com,
 v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 ceph-devel@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-btrfs@vger.kernel.org, clm@fb.com, josef@toxicpanda.com,
 dsterba@suse.com, stable@vger.kernel.org
References: <20201004180428.14494-1-willy@infradead.org>
 <20201004180428.14494-8-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201004180428.14494-8-willy@infradead.org>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kX5HL-007m0O-WD
Subject: Re: [V9fs-developer] [PATCH 7/7] btrfs: Promote to unsigned long
 long before multiplying
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
 mark@fasheh.com, jlayton@kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, josef@toxicpanda.com, joseph.qi@linux.alibaba.com,
 dsterba@suse.com, viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, idryomov@gmail.com,
 ceph-devel@vger.kernel.org, ocfs2-devel@oss.oracle.com, jlbec@evilplan.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sun, Oct 04, 2020 at 07:04:28PM +0100, Matthew Wilcox (Oracle) wrote:
> On 32-bit systems, these shifts will overflow for files larger than 4GB.
> Add helper functions to avoid this problem coming back.
> 
> Cc: stable@vger.kernel.org
> Fixes: 73ff61dbe5ed ("Btrfs: fix device replace of a missing RAID 5/6 device")
> Fixes: be50a8ddaae1 ("Btrfs: Simplify scrub_setup_recheck_block()'s argument")
> Fixes: ff023aac3119 ("Btrfs: add code to scrub to copy read data to another disk")
> Fixes: b5d67f64f9bc ("Btrfs: change scrub to support big blocks")
> Fixes: a2de733c78fa ("btrfs: scrub")
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> ---
>  fs/btrfs/scrub.c | 25 ++++++++++++++++---------
>  1 file changed, 16 insertions(+), 9 deletions(-)
> 
> diff --git a/fs/btrfs/scrub.c b/fs/btrfs/scrub.c
> index 354ab9985a34..ccbaf9c6e87a 100644
> --- a/fs/btrfs/scrub.c
> +++ b/fs/btrfs/scrub.c
> @@ -1262,12 +1262,17 @@ static inline void scrub_stripe_index_and_offset(u64 logical, u64 map_type,
>  	}
>  }
>  
> +static u64 sblock_length(struct scrub_block *sblock)
> +{
> +	return (u64)sblock->page_count * PAGE_SIZE;

page_count will be 32 at most, the type is int and this will never
overflow. The value is usualy number of pages in the arrays scrub_bio::pagev or
scrub_block::pagev bounded by SCRUB_PAGES_PER_WR_BIO (32) or
SCRUB_MAX_PAGES_PER_BLOCK (16).  The scrub code does not use mappings
and it reads raw blocks to own pages and does the checksum verification.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
