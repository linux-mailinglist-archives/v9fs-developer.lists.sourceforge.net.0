Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D771153A83
	for <lists+v9fs-developer@lfdr.de>; Wed,  5 Feb 2020 22:55:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1izSdd-0003mN-Ad; Wed, 05 Feb 2020 21:55:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1izSdb-0003m5-CY
 for v9fs-developer@lists.sourceforge.net; Wed, 05 Feb 2020 21:55:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=us9/NdthOB+7RQc3OrgQ0DA4VQdmnfBaop+ACMPx27I=; b=ZVMYOYwUeMOXtAcb9fzSZ623Ac
 8ur/XZpyiTpB6JCsuAJ21TY6tsLViQahByZ4E2yD+g+PlZJpGM7TXFsL12sGBl225ckkBmgF8vxpq
 Mj/X1Jnn3D1rRhSuDZWMbt9Qpr1nve5HQi9yd/3TlSuTOUnOEd23I73a33ZvTIHx8DCE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=us9/NdthOB+7RQc3OrgQ0DA4VQdmnfBaop+ACMPx27I=; b=MP6FOYm0lgRhS/8U6L5I8AIySR
 wZRzctRed8VvrB05sq5IsmWp0q5a0XwZLEsKcBkcQ3aq9VOGIyISQpzNrUnSp90Lw/EUsLlgnWCwa
 y6kmaV+9g2RhideBi0DGdCBbTKVEc8o0KwXI+mYkjuNkzNJpHhI/J92MS82wadCJXE8A=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1izSdY-000cHL-HD
 for v9fs-developer@lists.sourceforge.net; Wed, 05 Feb 2020 21:55:11 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id E3728C009; Wed,  5 Feb 2020 22:55:01 +0100 (CET)
Date: Wed, 5 Feb 2020 22:54:46 +0100
From: Dominique Martinet <asmadeus@codewreck.org>
To: Sergey Alirzaev <l29ah@cock.li>
Message-ID: <20200205215446.GB3942@nautica>
References: <20200205204053.12751-1-l29ah@cock.li>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205204053.12751-1-l29ah@cock.li>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: cock.li]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1izSdY-000cHL-HD
Subject: Re: [V9fs-developer] [PATCH] 9pnet: allow making incomplete read
 requests
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, v9fs-developer@lists.sourceforge.net,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Sergey Alirzaev wrote on Wed, Feb 05, 2020:
> A user doesn't necessarily want to wait for all the requested data to
> be available, since the waiting time for each request is unbounded.
> 
> The new method permits sending one read request at a time and getting
> the response ASAP, allowing to use 9pnet with synthetic file systems
> representing arbitrary data streams.

Much better, thanks!

> Signed-off-by: Sergey Alirzaev <l29ah@cock.li>
> [...]
> +		if (n != count) {
> +			*err = -EFAULT;
> +			p9_tag_remove(clnt, req);
> +			return n;
>  		}
> -		p9_tag_remove(clnt, req);
> +	} else {
> +		iov_iter_advance(to, count);
> +		count;

Any reason for this stray 'count;' statement?

If you're ok with this I'll just take patch without that line, don't
bother resubmitting.
Will take a fair amount of time to make it to linux-next though, test
setup needs some love and I want to run tests even if this should be
straightforward...

Thanks,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
