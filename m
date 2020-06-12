Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEFD1F75BD
	for <lists+v9fs-developer@lfdr.de>; Fri, 12 Jun 2020 11:11:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jjfiQ-0000sn-7F; Fri, 12 Jun 2020 09:11:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jjfiP-0000sa-9G
 for v9fs-developer@lists.sourceforge.net; Fri, 12 Jun 2020 09:11:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4Ph+SxNY14V5yNRBpAgTRF2084Z5ccr+akexWhrclgk=; b=lKrl4EQwV98AN/tpbXvLOwl+5l
 oHSZhByY/JIp2DNFfhbOQgci80K6E2gzfJ/OP8T2g+yDftf1QBBjlhXEYGicyWL27TT/r1/53Bg+6
 Z8dq6UNRatUMEKzQyp2MQVdeepOMhGLv077BCIQHotb7cKbwQJibhWnFK/A+LugmmSv0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4Ph+SxNY14V5yNRBpAgTRF2084Z5ccr+akexWhrclgk=; b=Dv591NHrZgwzxwKkN7bGJg5yCg
 xl91eUx4/j9SzVRmnzdnLSjGCecMWHLDfVazSUAKHz5a0N9PP3CHy9RrkY1L8mPcsUy0Wykf1m2eF
 qrtoupoUe1/Q0+6EDHMAQ7qGWis+qzkreu6bcaTRp281XweiKL8n/FJKp79tBD14LoPk=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jjfiM-00GZtm-3K
 for v9fs-developer@lists.sourceforge.net; Fri, 12 Jun 2020 09:11:09 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id BC650C009; Fri, 12 Jun 2020 11:10:59 +0200 (CEST)
Date: Fri, 12 Jun 2020 11:10:44 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Wang Hai <wanghai38@huawei.com>
Message-ID: <20200612091044.GA11129@nautica>
References: <20200612090833.36149-1-wanghai38@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200612090833.36149-1-wanghai38@huawei.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.1 (/)
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
X-Headers-End: 1jjfiM-00GZtm-3K
Subject: Re: [V9fs-developer] [PATCH v2] 9p/trans_fd: Fix concurrency del of
 req_list in p9_fd_cancelled/p9_read_work
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
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Wang Hai wrote on Fri, Jun 12, 2020:
> p9_read_work and p9_fd_cancelled may be called concurrently.
> In some cases, req->req_list may be deleted by both p9_read_work
> and p9_fd_cancelled.
> 
> We can fix it by ignoring replies associated with a cancelled
> request and ignoring cancelled request if message has been received
> before lock.
> 
> Fixes: 60ff779c4abb ("9p: client: remove unused code and any reference to "cancelled" function")
> Reported-by: syzbot+77a25acfa0382e06ab23@syzkaller.appspotmail.com
> Signed-off-by: Wang Hai <wanghai38@huawei.com>

Thanks! looks good to me, I'll queue for 5.9 as well unless you're in a
hurry.
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
