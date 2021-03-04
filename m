Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDB132CAAA
	for <lists+v9fs-developer@lfdr.de>; Thu,  4 Mar 2021 04:01:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lHeF6-0008MD-Qm; Thu, 04 Mar 2021 03:01:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@gaia.codewreck.org>) id 1lHeF5-0008M5-JA
 for v9fs-developer@lists.sourceforge.net; Thu, 04 Mar 2021 03:01:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5F7Z8p6mZsz3CvMl+8iJUXJXZOmn2B81gRz2UN5/6v0=; b=mIEOJuG4zgVM9xQj43kgLUFDkR
 CPnAnRAdsE74bUS4eEQAwfYgyhEBrJtI2zRSdQVg323eWxXaAbgyQTNJFuAU6wTfFHY0M314+BBTH
 ysvolFH9joBeXociyqtfoisVNcnZTQiyqthvsWDMkOg+jl4NLuTVtz5tFLxZ2kmVrbOA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5F7Z8p6mZsz3CvMl+8iJUXJXZOmn2B81gRz2UN5/6v0=; b=EWp8Gw+mh/IHNq21YXZyxnfR9E
 FyNhH+k+qGf2VfZ+koXQMFoanmP0Pt0y95r5Jy75YHbvUfRbEMuQl9Vjk7AG7xGElGa3mU5ohbf87
 MiU6Avi4iMmTkKmywtc4x3u3syN8JZUKcaYK7eIaZM6UcxsgptSB6lpXO2qyuc4YTw5g=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lHeF0-000304-Gv
 for v9fs-developer@lists.sourceforge.net; Thu, 04 Mar 2021 03:01:35 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 1AAD6C01B; Thu,  4 Mar 2021 04:01:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1614826884; bh=5F7Z8p6mZsz3CvMl+8iJUXJXZOmn2B81gRz2UN5/6v0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yykxb+BSKnII9f2bQitmnPBKTpaugho7q80WToHdviyQjTExF6RiKrnTChRe+4K5r
 ub+LVSQGM2H9bj0WYCGDqQUoaS44HoPhPs5t5ZlC7JF+L9K5oGoOGe7OXSN64a1oGY
 5JbkmmClP1uT4Zyecl5gG/X8NokPAV3eiRUIhyGxENlkU1kK/GSp1vtnpR5RX7X12N
 I90XRfNFwItDUPk25GQkoGwKIN5bszpjRE2tS0FhsEWHbh8FxGQvWbB2w6JGbdYbfX
 YosteMEhC012WGkzHWTqNAg6qA4Fb+r17GY6AYN5mkbE7IeetAr7IH4m0qwgD0smdK
 YovYPZnv8YCoA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 1936CC01B;
 Thu,  4 Mar 2021 04:01:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1614826883; bh=5F7Z8p6mZsz3CvMl+8iJUXJXZOmn2B81gRz2UN5/6v0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lqgbDHyu5B2kFuEFvDsEwHmrwLGDI0ZTAMyOUJEqsy7GMHO2Wv83xF/EXUvt242K/
 lI4gQyAdbuKMqbhQC9tNOCApUMhZjrlqTkCgVQTUm3V9o3bS6FkQDBiG7Yi4EkMOiL
 8mJet03MZv3adjHukzkTVbFOAJUDcMLwGhypIhiSjY4iZpZxacWYDHJPdK5zZcfXnG
 mQxK5JHQGYEX8tu4aP95z+Pd6pOfaA7Zxepz7BVVssrCqTQKVmNpIuJ7W3neG47KBk
 0ZKG2hy6KqEWewRw5H2vQPYn0l4d3uGc83KCeCdOUfZY/qK/oEeeloyEm4W6H+jY4B
 qMZkPY9ykEZyw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id c794a0c4;
 Thu, 4 Mar 2021 03:01:18 +0000 (UTC)
Date: Thu, 4 Mar 2021 12:01:03 +0900
From: asmadeus@codewreck.org
To: davem@davemloft.net
Message-ID: <YEBNb6MnQa7zRApd@codewreck.org>
References: <20210302171932.28e86231@xhacker.debian>
 <161482020724.32353.3785422808049340949.git-patchwork-notify@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161482020724.32353.3785422808049340949.git-patchwork-notify@kernel.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1lHeF0-000304-Gv
Subject: Re: [V9fs-developer] [PATCH v2] net: 9p: advance iov on empty read
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
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jisheng Zhang <Jisheng.Zhang@synaptics.com>,
 kuba@kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


patchwork-bot+netdevbpf@kernel.org wrote on Thu, Mar 04, 2021 at 01:10:07AM +0000:
> This patch was applied to netdev/net.git

thanks for taking the patch, I didn't take the time to reply yesterday
after my bisect finally finished.

I've got the culprit now, could you add the following?

Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>
(or reviewed-by/tested-by, or just leave it out I'm not fussy)
Fixes: cf03f316ad20 ("fs: 9p: add generic splice_read file operations")
Cc: stable@vger.kernel.org # v5.11


Cheers,
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
