Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BFECFABA23
	for <lists+v9fs-developer@lfdr.de>; Fri,  6 Sep 2019 16:02:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1i6EoW-00010q-5l; Fri, 06 Sep 2019 14:02:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1i6EoT-00010g-Bl
 for v9fs-developer@lists.sourceforge.net; Fri, 06 Sep 2019 14:02:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FaX5AmFw9s4ywZuvRRhWdJMy5mE8nAOc1vfI91D3/+s=; b=Wd0KhR7Sb1rI61ek4oh6LI7WeC
 AYr/5Ul5Fw0Mwc/GTuazlZjp5m4N/xLgiaIi0ij8W9g2/nNujazASLX6uzh3+BrACI8YxNHO0utTL
 z3FBfo+WBgKNl+fIDNf+TRJ/Kre35nwQBUI/aKdkTGnusCdqSVwPK6mv1x84VZ/7WkjM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FaX5AmFw9s4ywZuvRRhWdJMy5mE8nAOc1vfI91D3/+s=; b=eNamqqYwqrNltZLCoy4yE7K2jr
 kG984J176vXVHL4kMqe33cwVpS5YuA7I11FIvAZpwMb2CWnrlzFCMgk/D1/T6dvYIB8X69Njz8cyy
 SsUiH3RAfCsNewWODHvQ3kGJhbIwdbrQJwQ5VXNJslVkOnjXjsLMTp9lcUMsV78bAI6o=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1i6EoR-0020fX-6q
 for v9fs-developer@lists.sourceforge.net; Fri, 06 Sep 2019 14:02:09 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 74656C009; Fri,  6 Sep 2019 16:02:00 +0200 (CEST)
Date: Fri, 6 Sep 2019 16:01:45 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Colin King <colin.king@canonical.com>
Message-ID: <20190906140145.GA16910@nautica>
References: <20190906133812.17196-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190906133812.17196-1-colin.king@canonical.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: canonical.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1i6EoR-0020fX-6q
Subject: Re: [V9fs-developer] [PATCH] 9p: make two arrays static const,
 makes object smaller
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Colin King wrote on Fri, Sep 06, 2019:
> From: Colin Ian King <colin.king@canonical.com>
> 
> Don't populate the arrays on the stack but instead make them
> static const. Makes the object code smaller by 386 bytes.
> 
> Before:
>    text	   data	    bss	    dec	    hex	filename
>   17443	   2076	      0	  19519	   4c3f	fs/9p/vfs_inode_dotl.o
> 
> After:
>    text	   data	    bss	    dec	    hex	filename
>   16897	   2236	      0	  19133	   4abd	fs/9p/vfs_inode_dotl.o
> 
> (gcc version 9.2.1, amd64)
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Fine with me, I'll pick it up for the next cycle.

There are a couple of static structs in net/9p that aren't const (but
could be); I guess the static is all that matters here?
(I'll try to go through and make the rest const when I have time
though, no harm there)

Thanks,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
