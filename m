Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 15537B27590
	for <lists+v9fs-developer@lfdr.de>; Fri, 15 Aug 2025 04:20:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e55szS1Z6VbaoTDBkg8z7Y/ZYx1oG/uGs7pwxiyPlhI=; b=QvqDl48zSORxELaX1SRiEk4jmN
	U60YV2MfNhjHnnyQO9ZOu8TYXPgcmrPgDzG/HHV3RA6zc6Jz5SWU5lckoOuMx+2zqufsL7PrXDOHJ
	XaogvxC0HviKJVkPOUnmacYmF4dATOF1BvBY9lrUfXPVxY5wBH8MMxFuBwXFz9opjquk=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1umk3o-0006oZ-EQ;
	Fri, 15 Aug 2025 02:20:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1umk3k-0006oS-LN
 for v9fs-developer@lists.sourceforge.net;
 Fri, 15 Aug 2025 02:20:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3to1JoTI7YxcKW36ucsrZ8J9JD5dqSy+UMJOKOKBxv0=; b=aeo8S6ZicZ3Qt1/UDNqFIA19DO
 VDzPaRX0A8dhLiJWzvx5zN49dMFS01it0+dL4lU4FRgP0Y7lfnZ9e0orOHuYp1sdUOYfbAD1LYc3d
 +TnFrxye5EXsCyaBgyu3mHrf7iCwFF3gun2R04zOJHmUt9xhOQRDq/JQ1Tql1G8ZuUKQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3to1JoTI7YxcKW36ucsrZ8J9JD5dqSy+UMJOKOKBxv0=; b=h9fUoeNO+Xxpsp21+hgLB4/QrK
 En7rO4CVqcjhwZpk9V6b/7ZzyuW5/spvrC4RbW7tX4L0+8bDQOlxb2be+U8k89FjpDCmRnxOEj7gD
 wzKGFMelXj1lcQbnWma1k8N9ykaUis9tVMnmE1mRBhcUm+ZMOX+eOHhSQRp3/PVmbkoE=;
Received: from submarine.notk.org ([62.210.214.84])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1umk3j-00083I-1o for v9fs-developer@lists.sourceforge.net;
 Fri, 15 Aug 2025 02:20:48 +0000
Received: from gaia.codewreck.org (localhost [127.0.0.1])
 by submarine.notk.org (Postfix) with ESMTPS id 4EF1A14C2D3;
 Fri, 15 Aug 2025 04:01:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org;
 s=2; t=1755223279;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=3to1JoTI7YxcKW36ucsrZ8J9JD5dqSy+UMJOKOKBxv0=;
 b=UPw4PWwRqxf1H5wm6Xxz+bk+TNXbRFnTYziuff+8i7C6OO8Se8RC09eI8Fcum+oBQS9poC
 b1Zoo0jfmSbXHuT8QZfYyItZad4X2x2SJEP2AyxwceCrfT0puraxxFHTdihNOAiuZIWika
 nkpROOMoLZMoWnLxAuyzug8AotDS8bUzWWCnMYaO7Os7sjgSgTvJqci7KJfKUFXI2o7I/o
 HiFDGcNMqo1c+f/cQNpTAtz91AHQIuefT07IyHLbCDN+RvdDuWnkmw+e9bnhXikd1BDVos
 qCNiWlLkUAvs72tRqhAaogpJj2VqOiPG8mKpRUvOf1Ko9YUdsrEoqV/4IAmbnA==
Received: from localhost (gaia.codewreck.org [local])
 by gaia.codewreck.org (OpenSMTPD) with ESMTPA id 831f3cb7;
 Fri, 15 Aug 2025 02:01:15 +0000 (UTC)
Date: Fri, 15 Aug 2025 11:01:00 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Nalivayko Sergey <Sergey.Nalivayko@kaspersky.com>
Message-ID: <aJ6U3DQn876wGS4C@codewreck.org>
References: <20250715154815.3501030-1-Sergey.Nalivayko@kaspersky.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250715154815.3501030-1-Sergey.Nalivayko@kaspersky.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Nalivayko Sergey wrote on Tue, Jul 15, 2025 at 06:48:15PM
 +0300: > This happens because of a race condition between: > > - The 9p client
 sending an invalid flush request and later cleaning it up; > - [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1umk3j-00083I-1o
Subject: Re: [V9fs-developer] [PATCH] net: 9p: fix double req put in
 p9_fd_cancelled
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Wang Hai <wanghai38@huawei.com>,
 lvc-project@linuxtesting.org, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, stable@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Nalivayko Sergey wrote on Tue, Jul 15, 2025 at 06:48:15PM +0300:
> This happens because of a race condition between:
> 
> - The 9p client sending an invalid flush request and later cleaning it up;
> - The 9p client in p9_read_work() canceled all pending requests.
> 
>       Thread 1                              Thread 2
>     ...
>     p9_client_create()
>     ...
>     p9_fd_create()
>     ...
>     p9_conn_create()
>     ...
>     // start Thread 2
>     INIT_WORK(&m->rq, p9_read_work);
>                                         p9_read_work()
>     ...
>     p9_client_rpc()
>     ...
>                                         ...
>                                         p9_conn_cancel()
>                                         ...
>                                         spin_lock(&m->req_lock);
>     ...
>     p9_fd_cancelled()
>     ...
>                                         ...
>                                         spin_unlock(&m->req_lock);
>                                         // status rewrite
>                                         p9_client_cb(m->client, req, REQ_STATUS_ERROR)
>                                         // first remove
>                                         list_del(&req->req_list);
>                                         ...
> 
>     spin_lock(&m->req_lock)
>     ...
>     // second remove
>     list_del(&req->req_list);
>     spin_unlock(&m->req_lock)
>   ...
> 
> Commit 74d6a5d56629 ("9p/trans_fd: Fix concurrency del of req_list in
> p9_fd_cancelled/p9_read_work") fixes a concurrency issue in the 9p filesystem
> client where the req_list could be deleted simultaneously by both
> p9_read_work and p9_fd_cancelled functions, but for the case where req->status
> equals REQ_STATUS_RCVD.

Sorry for the delay,
Thanks for the investigation, this makes sense and deserves fixing.

> Add an explicit check for REQ_STATUS_ERROR in p9_fd_cancelled before
> processing the request. Skip processing if the request is already in the error
> state, as it has been removed and its resources cleaned up.

Looking at the other status, it's quite unlikely but if other thread
would make it FLSHD we should also skip these -- and I don't think it's
possible as far as the logic goes but if it's not sent yet we would have
nothing to flush either, so it's probably better to invert the check,
and make it `if (req != SENT) return` ?

client.c already checks `READ_ONCE(oldreq->status) == REQ_STATUS_SENT`
before calling cancelled but that's without lock, so basically we're
checking nothing raced since that check, and it's not limited to RCVD
and ERROR.

If you can send a v2 with that I'll pick it up.

Thanks,
-- 
Dominique Martinet | Asmadeus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
