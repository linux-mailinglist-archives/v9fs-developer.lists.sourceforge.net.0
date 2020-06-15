Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C20731F9484
	for <lists+v9fs-developer@lfdr.de>; Mon, 15 Jun 2020 12:21:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jkmF5-0004LD-L8; Mon, 15 Jun 2020 10:21:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jkmF3-0004L4-Gy
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Jun 2020 10:21:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z/Y1sS3kqs8dscDEjrk5GURIu+2XWCtiHVMRteETZdg=; b=RnnqXSHOGAyodWFT1lCy7BMjwA
 zOq/xrZ7WmhkVVJpNPkIRJxfXhFzlvGEsQmtVd2OtG2XzVfPbtoHa1Q4A3RoBhMpoxNsHLomACavc
 ts+Sw9pyZYKaMlTtUPfU5D79W4KNVY2jP/TU7rT4HfP8QEqS7d9YVizEojAukW/13wQ4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Z/Y1sS3kqs8dscDEjrk5GURIu+2XWCtiHVMRteETZdg=; b=ZCTdiqxGmfu0EmKKT0W1ZupHlS
 ESePgO4NdGV8U65nFFw7efG6OmUXGq0GDEsDCPqSE7Nw6GD5SmShpTjb6n9wEhHqa1KC3GG2C4xiR
 W1e0r1guctO4ukdTFUkSDcM9SPsdpWKS/l0DIqm655ejQ5Cx4m5YPol3a9CqQvTX5qyI=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jkmF1-003PgM-Ey
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Jun 2020 10:21:25 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 341B6C01C; Mon, 15 Jun 2020 12:21:08 +0200 (CEST)
Date: Mon, 15 Jun 2020 12:20:53 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Zheng Bin <zhengbin13@huawei.com>
Message-ID: <20200615102053.GA11026@nautica>
References: <20200615012153.89538-1-zhengbin13@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615012153.89538-1-zhengbin13@huawei.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jkmF1-003PgM-Ey
Subject: Re: [V9fs-developer] [PATCH RESEND] 9p: Fix memory leak in
 v9fs_mount
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
Cc: lucho@ionkov.net, yi.zhang@huawei.com, ericvh@gmail.com,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Zheng Bin wrote on Mon, Jun 15, 2020:
> v9fs_mount
>   v9fs_session_init
>     v9fs_cache_session_get_cookie
>       v9fs_random_cachetag                     -->alloc cachetag
>       v9ses->fscache = fscache_acquire_cookie  -->maybe NULL
>   sb = sget                                    -->fail, goto clunk
> clunk_fid:
>   v9fs_session_close
>     if (v9ses->fscache)                        -->NULL
>       kfree(v9ses->cachetag)
> 
> Thus memleak happens.
> 
> Signed-off-by: Zheng Bin <zhengbin13@huawei.com>

Thanks, will run tests & queue next weekend

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
