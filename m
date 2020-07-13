Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C4421D0FF
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Jul 2020 09:57:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jutKn-0005TZ-42; Mon, 13 Jul 2020 07:57:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hch@lst.de>) id 1jutKl-0005TS-OY
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 07:57:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xKxrW7+0/Oa+Cdjzm4QeeOQp+Psocrt0aL2jTavsdbI=; b=NssfktHqmTK3Yw/vpcSvDvIMRl
 01FK/dLg9PEYfKRKXy2PEtC/GSotn+M05pUqhSqj03WR5wNx8r5k595OOd6xUjLZ7vOvIrKM23XYm
 3Gim8EB3HDoUW7yeXyCWeLRwC5CpDf1yATBVNbxwXRZZ3M88yXYfDrwCdnwpyoBeqvDU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xKxrW7+0/Oa+Cdjzm4QeeOQp+Psocrt0aL2jTavsdbI=; b=Ik5s5nDn3Uc2tBvZ5jWxFk3/Bi
 pVxvjHVnylDckZJEwRs6E/3FhUOYnkEgt89T8LkIei+M7v41NToH64UqWFPoXUJ1YvyCPRAD+oqwh
 PTeTBJG3ybLliU0syl9jH5hYsCxGDz8blUhnvUMNhkjOV/BCpEkOHvKpTTWO6I6dm07w=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jutKj-00FlX7-Nb
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 07:57:07 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B741F68B02; Mon, 13 Jul 2020 09:38:06 +0200 (CEST)
Date: Mon, 13 Jul 2020 09:38:06 +0200
From: Christoph Hellwig <hch@lst.de>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20200713073806.GA14676@lst.de>
References: <20200710085722.435850-1-hch@lst.de>
 <5bee3e33-2400-2d85-080e-d10cd82b0d85@nazar.ca>
 <20200711104923.GA6584@nautica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200711104923.GA6584@nautica>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jutKj-00FlX7-Nb
Subject: Re: [V9fs-developer] [PATCH] net/9p: validate fds in p9_fd_open
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
Cc: lucho@ionkov.net, syzbot+e6f77e16ff68b2434a2c@syzkaller.appspotmail.com,
 ericvh@gmail.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, v9fs-developer@lists.sourceforge.net,
 Doug Nazar <nazard@nazar.ca>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sat, Jul 11, 2020 at 12:49:23PM +0200, Dominique Martinet wrote:
> > >diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
> > >index 13cd683a658ab6..1cd8ea0e493617 100644
> > >--- a/net/9p/trans_fd.c
> > >+++ b/net/9p/trans_fd.c
> > >@@ -803,20 +803,28 @@ static int p9_fd_open(struct p9_client *client, int rfd, int wfd)
> > >  		return -ENOMEM;
> > >  	ts->rd = fget(rfd);
> > >+	if (!ts->rd)
> > >+		goto out_free_ts;
> > >+	if (!(ts->rd->f_mode & FMODE_READ))
> > >+		goto out_put_wr;
> > 
> > 		goto out_put_rd;
> > 
> > unless I'm mistaken.
> 
> Good catch, I've amended the commit so feel free to skip resending
> unless want to change something
> https://github.com/martinetd/linux/commit/28e987a0dc66744fb119e18150188fd8e3debd40

Thanks, this looks good to me.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
