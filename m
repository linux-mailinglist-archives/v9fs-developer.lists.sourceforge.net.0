Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFA01F75DC
	for <lists+v9fs-developer@lfdr.de>; Fri, 12 Jun 2020 11:24:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jjfup-0001VW-Lw; Fri, 12 Jun 2020 09:23:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jjfuo-0001VN-Js
 for v9fs-developer@lists.sourceforge.net; Fri, 12 Jun 2020 09:23:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gMUB2rFjZGbNx7OHbbAQSaSIXNLO4OraCWbxbLp9DUQ=; b=kB0EZ4QL7AuNtZ1ziI1DDkpONt
 7ECiHjG+9R/NgN2HTZb5XZMu+KjCbdg2TaSJNl2MycfjGAWcIaHToAm/Z4vDAgr3q3h5LSazh18O6
 7vWXc47eLHQiajV4ek2nETKzZNtuH5w2QkWugcbauJyv4A+KHp/AAvhRwamHkoGQ+EDo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gMUB2rFjZGbNx7OHbbAQSaSIXNLO4OraCWbxbLp9DUQ=; b=chdZRAPV0t6CJNu2F8L1Qa0X0K
 MBNH6yFD8sRhNZdxmGxzdbSsJ8W12UcPv4Mfr97WD8fxi29ZZ4isYQPVjqmesHNVC6CTxtqdXD3et
 4k5CH95ilWyzwFJhNdxgN0/de2vIwAsueuunS0bdYH8kLMZDZBaXu6NHFGurrZ+HKBBA=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jjfum-002x97-HT
 for v9fs-developer@lists.sourceforge.net; Fri, 12 Jun 2020 09:23:58 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 31238C009; Fri, 12 Jun 2020 11:23:43 +0200 (CEST)
Date: Fri, 12 Jun 2020 11:23:28 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: "Zhengbin (OSKernel)" <zhengbin13@huawei.com>
Message-ID: <20200612092328.GA12548@nautica>
References: <20200612073248.40020-1-zhengbin13@huawei.com>
 <20200612085835.GA8776@nautica>
 <fd5188fe-40e7-8996-ef20-5067bf4acc01@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fd5188fe-40e7-8996-ef20-5067bf4acc01@huawei.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jjfum-002x97-HT
Subject: Re: [V9fs-developer] [PATCH] 9p: Fix memory leak in v9fs_mount
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
Cc: ericvh@gmail.com, lucho@ionkov.net, yi.zhang@huawei.com,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Zhengbin (OSKernel) wrote on Fri, Jun 12, 2020:
> 
> On 2020/6/12 16:58, Dominique Martinet wrote:
> >Zheng Bin wrote on Fri, Jun 12, 2020:
> >>v9fs_mount
> >>   v9fs_session_init
> >>     v9fs_cache_session_get_cookie
> >>       v9fs_random_cachetag                     -->alloc cachetag
> >>       v9ses->fscache = fscache_acquire_cookie  -->maybe NULL
> >>   sb = sget                                    -->fail, goto clunk
> >>clunk_fid:
> >>   v9fs_session_close
> >>     if (v9ses->fscache)                        -->NULL
> >>       kfree(v9ses->cachetag)
> >>
> >>Thus memleak happens.
> >>
> >>Signed-off-by: Zheng Bin <zhengbin13@huawei.com>
> >LGTM.
> >I don't think it's critical so I'll queue it for 5.9 in a bit after testing
> 
> 5.8-rc1 has not been released yet, maybe this patch can be queued into 5.8?
> 
> Of course it depends on you, thanks.

5.8-rc1 will be cut in two days and Linus usually prefers patches to
have been in linux-next for a week or so before pushing, so we're
cutting it too close for me ; I'll also need a couple of days to run
tests as my setup is still a bit too manual for comfort.

It'd be possible to queue it in later rcs of course as that is a real
fix, but I think for a memory leak that should be quite unlikely in
practice it is just as simple to wait.



BTW I just noticed now and you didn't cc linux-kernel@vger.kernel.org
I tried bouncing the message but it doesn't show up yet on
lkml.kernel.org redirector[1]; if it doesn't come up could you please
resend with linux-kernel and linux-fsdevel in Cc?

[1] https://lkml.kernel.org/r/20200612073248.40020-1-zhengbin13@huawei.com 

Thanks,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
