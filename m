Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F07526E40
	for <lists+v9fs-developer@lfdr.de>; Wed, 22 May 2019 21:48:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hTXDS-0000tO-4U; Wed, 22 May 2019 19:47:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1hTXDQ-0000tE-RW
 for v9fs-developer@lists.sourceforge.net; Wed, 22 May 2019 19:47:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vd+/4uDJStvAKiQaCLjcw2smiHR+BqrdulLPjaj1hLU=; b=OuCTRiGUl2KietTO+9wzLVdjaf
 NJyWinx1q4QxKHKr6GMZhgtrFOdJlTd+lKWWZhg8TI98olnWP5wGVMG/PFDgJNSbb5IKSGLN2SMmQ
 aMmZynNMDPh/T95IaVGNm/pLV3/+DjmhrYdlTdXp/trBKE8es8+aFw4Ljf4yObh0S3Nw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vd+/4uDJStvAKiQaCLjcw2smiHR+BqrdulLPjaj1hLU=; b=fKJmnDllYzi9pKJOBCsJac/vK5
 GsgwyUXifobU3mwwlxrVKyCNYuu6PMnuNaFo9ypzbKdbmXqVNBnXI8+e7fU50koOB2b4uHokVL9cb
 cf/1wM4DO0D4v7sGMJVmSyYTmZsMZp1cQRnLhe4qJe+J7kuJBX60KySklKCpIXLD2THg=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hTXDP-000huC-By
 for v9fs-developer@lists.sourceforge.net; Wed, 22 May 2019 19:47:56 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id EC896C009; Wed, 22 May 2019 21:47:48 +0200 (CEST)
Date: Wed, 22 May 2019 21:47:33 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Bharath Vedartham <linux.bhar@gmail.com>
Message-ID: <20190522194733.GA4766@nautica>
References: <20190522194519.GA5313@bharath12345-Inspiron-5559>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522194519.GA5313@bharath12345-Inspiron-5559>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hTXDP-000huC-By
Subject: Re: [V9fs-developer] [PATCH v2] 9p/cache.c: Fix memory leak in
 v9fs_cache_session_get_cookie
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
Cc: ericvh@gmail.com, lucho@ionkov.net, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Bharath Vedartham wrote on Thu, May 23, 2019:
> v9fs_cache_session_get_cookie assigns a random cachetag to v9ses->cachetag,
> if the cachetag is not assigned previously.
> 
> v9fs_random_cachetag allocates memory to v9ses->cachetag with kmalloc and uses
> scnprintf to fill it up with a cachetag.
> 
> But if scnprintf fails, v9ses->cachetag is not freed in the current
> code causing a memory leak.
> 
> Fix this by freeing v9ses->cachetag it v9fs_random_cachetag fails.
> 
> This was reported by syzbot, the link to the report is below:
> https://syzkaller.appspot.com/bug?id=f012bdf297a7a4c860c38a88b44fbee43fd9bbf3
> 
> Reported-by: syzbot+3a030a73b6c1e9833815@syzkaller.appspotmail.com
> Signed-off-by: Bharath Vedartham <linux.bhar@gmail.com>


Thanks!

I'm on limited internet right now but will run tests and queue this up tomorrow

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
