Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5F421C3CD
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Jul 2020 12:49:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1juD4m-0003Au-Do; Sat, 11 Jul 2020 10:49:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1juD4l-0003Ao-HT
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Jul 2020 10:49:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6Zl6ddT6LukUl9P4xnmeSATFWMCuS95v/2wv4WokuuQ=; b=LGq7YAX2sp4cI62oo/sIM3Gya1
 wrXG0f5YagvBOb3s1oez0nM+Uv7b3Ljjda0HzuCHvm3TwAltUgI9jb5JoudvkL9QEdkvIbeR1Q0wz
 DTdCWGFGl2wiuh58IuJlm4VWXiQMcHBT4zFL12zSi0SNVMWY2nKDS4v6kCT31WFViWHQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6Zl6ddT6LukUl9P4xnmeSATFWMCuS95v/2wv4WokuuQ=; b=VnovRB+eu6QPNbPac8fy7js5F2
 qT7cu9OjymlNiLD/SfmfNLyivR4dYpI+doGapu8RgbZ6EgRafzGQyYOt05oyHw6NLabz3+cBWZXZ+
 ACNFRIfvTrOoJoUeZ6aNLl4kXJ1JKC2b8D3G7PnfGf0mYsOFkV5Cb+iwxQvsmLNQiYbo=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1juD4j-0030QL-B4
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Jul 2020 10:49:47 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id E7A47C009; Sat, 11 Jul 2020 12:49:38 +0200 (CEST)
Date: Sat, 11 Jul 2020 12:49:23 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Doug Nazar <nazard@nazar.ca>
Message-ID: <20200711104923.GA6584@nautica>
References: <20200710085722.435850-1-hch@lst.de>
 <5bee3e33-2400-2d85-080e-d10cd82b0d85@nazar.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5bee3e33-2400-2d85-080e-d10cd82b0d85@nazar.ca>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1juD4j-0030QL-B4
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
 v9fs-developer@lists.sourceforge.net, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Doug Nazar wrote on Fri, Jul 10, 2020:
> On 2020-07-10 04:57, Christoph Hellwig wrote:
> 
> >diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
> >index 13cd683a658ab6..1cd8ea0e493617 100644
> >--- a/net/9p/trans_fd.c
> >+++ b/net/9p/trans_fd.c
> >@@ -803,20 +803,28 @@ static int p9_fd_open(struct p9_client *client, int rfd, int wfd)
> >  		return -ENOMEM;
> >  	ts->rd = fget(rfd);
> >+	if (!ts->rd)
> >+		goto out_free_ts;
> >+	if (!(ts->rd->f_mode & FMODE_READ))
> >+		goto out_put_wr;
> 
> 		goto out_put_rd;
> 
> unless I'm mistaken.

Good catch, I've amended the commit so feel free to skip resending
unless want to change something
https://github.com/martinetd/linux/commit/28e987a0dc66744fb119e18150188fd8e3debd40

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
