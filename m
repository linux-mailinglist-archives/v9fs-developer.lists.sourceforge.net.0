Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F9D5F726F
	for <lists+v9fs-developer@lfdr.de>; Fri,  7 Oct 2022 03:04:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ogbn0-0001Fi-JY;
	Fri, 07 Oct 2022 01:04:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1ogbmz-0001Fb-1a
 for v9fs-developer@lists.sourceforge.net;
 Fri, 07 Oct 2022 01:04:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4PhS/IKoUSCkA//t1LO+OGOn20FJ5HQYa77RDrFnZt4=; b=KrLoPr9c+m8U6AgeoVIfxpb/U+
 i4CHF9xVdy73KrByXdJCck8TSLQ2q3XvX2NO4f86Gpt5+OWRZmabGnX87prP0+/x1dGuHVJrDXi4w
 y3vydKhC6LNMtP89egQuyC0u4Ds+zNCjhxfoKwakjYRchLxSjPBTGpxnmcTScu66NHso=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4PhS/IKoUSCkA//t1LO+OGOn20FJ5HQYa77RDrFnZt4=; b=E0NMUwkDp7tGwyW2yNUKCmp8Bm
 lY+79ZfA1tYWO6OmLASJGHnB/4vX4+NXcjlNSAYWXxWTh+XHwyxUc03JMklZxnsd6m2ZA3aOfSVTP
 Rsjmn7TsyW3lK+ubGZqF5BatnyOLINSYnZJa3KFCXxZlS8lUcpIyxN+JLo7t0sgCwyoU=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ogbmu-0004OE-Qi for v9fs-developer@lists.sourceforge.net;
 Fri, 07 Oct 2022 01:04:32 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 41DEEC01D; Fri,  7 Oct 2022 03:04:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1665104661; bh=4PhS/IKoUSCkA//t1LO+OGOn20FJ5HQYa77RDrFnZt4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DX4D7gFB4+BZ5auNM60Wp1xXfO3H5+48oW2IfjDNpIrZMzSxvlEleu6wiagpLcNMv
 VD7Py7ID0himh4R035uLgH18ogbEPPFHcO6GhuhOhtGnEifIx54Zq4R/pS3L4nEQPG
 JEzy+LjWmZoyxJYt8ZLdkhYN5eoCe7gyZFTrFRzwUHNgGW31oaYAPIC3HhTFO1aWGK
 3yThiWnLNjTS9wo2be3EIDhD0mnoO5NiPSomD9QAQN9zSz0LwWzy1oxeb/M4Duwxky
 QpnRbA2MMN7zJIy6jfufWqCfrupucHqcv7ahGur4dTR1TQoV3K5tUZC4xul44D7TGe
 tJPNmk14r1JoQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 2508EC009;
 Fri,  7 Oct 2022 03:04:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1665104660; bh=4PhS/IKoUSCkA//t1LO+OGOn20FJ5HQYa77RDrFnZt4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=f5yrEMPQ1LsgZt3FGvDTkpir5X/hIkSrWBuoHK5KQuBfHzPmK+EQEbwBWOwLcB+Fv
 ctim+uzeDxzv/L6cDI4Mk4ngNnxLsksTZ8O9BZ6SVAPuxTghiEzCdKZYYpq8oBbw8c
 DHELzEYof2Hi2F4u2jZX1WnNFESXyZE500BI2P8cUWKjXbny3/6Qxx7d3X/3teYAut
 1BkAH5BACYB1ELVvhnaBYPrdrrlA9Wqf/ozfxDcC06O5B58CveUZ8IKNIvLn43G+1p
 neSMNosFrl+TXPLxn8z6NLY478yact8LtEwAdseDXWwdrKqtp09/XkK/2odbAvQIWa
 knTHAyD2GFVXA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id cb2fb44a;
 Fri, 7 Oct 2022 01:04:15 +0000 (UTC)
Date: Fri, 7 Oct 2022 10:03:59 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <Yz96//Gf4tCteJLm@codewreck.org>
References: <00000000000039af4d05915a9f56@google.com>
 <000000000000c1d3ca0593128b24@google.com>
 <345de429-a88b-7097-d177-adecf9fed342@I-love.SAKURA.ne.jp>
 <4870107.4IDB3aycit@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4870107.4IDB3aycit@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Thu, Oct 06,
 2022 at 04:55:23PM
 +0200: > > diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c > > index
 e758978b44be..9870597da583
 100644 > > --- a/net/9p/trans_fd.c > > [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1ogbmu-0004OE-Qi
Subject: Re: [V9fs-developer] [PATCH] 9p/trans_fd: always use O_NONBLOCK
 read/write
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
Cc: Latchesar Ionkov <lucho@ionkov.net>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>, netdev@vger.kernel.org,
 syzkaller-bugs@googlegroups.com, Eric Van Hensbergen <ericvh@gmail.com>,
 syzbot <syzbot+8b41a1365f1106fd0f33@syzkaller.appspotmail.com>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Thu, Oct 06, 2022 at 04:55:23PM +0200:
> > diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
> > index e758978b44be..9870597da583 100644
> > --- a/net/9p/trans_fd.c
> > +++ b/net/9p/trans_fd.c
> > @@ -821,11 +821,13 @@ static int p9_fd_open(struct p9_client *client, int
> > rfd, int wfd) goto out_free_ts;
> >  	if (!(ts->rd->f_mode & FMODE_READ))
> >  		goto out_put_rd;
> > +	ts->rd->f_flags |= O_NONBLOCK;
> 
> ... I think this deserves a short comment like:
> 
>     /* prevent hung task with pipes */

Good point, I've sneaked in this comment:
    /* prevent workers from hanging on IO when fd is a pipe */

https://github.com/martinetd/linux/commit/ef575281b21e9a34dfae544a187c6aac2ae424a9


> Reviewed-by: Christian Schoenebeck <linux_oss@crudebyte.com>

Thank you!

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
