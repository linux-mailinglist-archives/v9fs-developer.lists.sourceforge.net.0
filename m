Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3705B1F6A4E
	for <lists+v9fs-developer@lfdr.de>; Thu, 11 Jun 2020 16:51:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jjOYG-0004zF-8d; Thu, 11 Jun 2020 14:51:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1jjOYC-0004yr-Ke
 for v9fs-developer@lists.sourceforge.net; Thu, 11 Jun 2020 14:51:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2tc+rbs3cYLNVVDM36a+YAIXPKkWCZna/AbZUSRxxbs=; b=Le81hoBDEapx5+LokEag3seEqr
 kcvZse7f/ZKCj1687GZgZVFsejaNpfq040ZwSh33dpa2ABcTIXNdjNDxytwSzgR94G1Ven1Gp9f9i
 74IxuWzb3xTym/PwZa/ZqVVCTsItPtt0q6vjOA72sSHW6NP/lUSWShQ++vQTjaJsQHWs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2tc+rbs3cYLNVVDM36a+YAIXPKkWCZna/AbZUSRxxbs=; b=fqxAbct21QSh1b8fvLQ74cxZrc
 qnVf93MmeqhYJXBOByLPBhuL9Mcvg5iM0QHtpWzVC0xPoVXd9ufPEYG8A3Q3rgWR23vVrLHHLPazc
 T+PUAMdVuEXlIo7nkvZ+h7xYsrJMNmUTNIxRJnzRwWCIZMY1UKyzJyxJ6+DRTcpJ2cCw=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jjOYA-00FXFi-HL
 for v9fs-developer@lists.sourceforge.net; Thu, 11 Jun 2020 14:51:28 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 38925C009; Thu, 11 Jun 2020 16:51:10 +0200 (CEST)
Date: Thu, 11 Jun 2020 16:50:55 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Wang Hai <wanghai38@huawei.com>
Message-ID: <20200611145055.GA28945@nautica>
References: <20200611014855.60550-1-wanghai38@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200611014855.60550-1-wanghai38@huawei.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jjOYA-00FXFi-HL
Subject: Re: [V9fs-developer] [PATCH] 9p/trans_fd: Fix concurrency del of
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

Wang Hai wrote on Thu, Jun 11, 2020:
> p9_read_work and p9_fd_cancelled may be called concurrently.

Good catch. I'm sure this fixes some of the old syzbot bugs...
I'll check other transports handle this properly as well.

> Before list_del(&m->rreq->req_list) in p9_read_work is called,
> the req->req_list may have been deleted in p9_fd_cancelled.
> We can fix it by setting req->status to REQ_STATUS_FLSHD after
> list_del(&req->req_list) in p9_fd_cancelled.

hm if you do that read_work will fail with EIO and all further 9p
messages will not be read?
p9_read_work probably should handle REQ_STATUS_FLSHD in a special case
that just throws the message away without error as well.

> Before list_del(&req->req_list) in p9_fd_cancelled is called,
> the req->req_list may have been deleted in p9_read_work.
> We should return when req->status = REQ_STATUS_RCVD which means
> we just received a response for oldreq, so we need do nothing
> in p9_fd_cancelled.

I'll need some time to convince myself the refcounting is correct in
this case.
Pre-ref counting this definitely was wrong, but now it might just work
by chance.... I'll double-check.

> Fixes: 60ff779c4abb ("9p: client: remove unused code and any reference
> to "cancelled" function")

I don't understand how this commit is related?
At least make it afd8d65411 ("9P: Add cancelled() to the transport
functions.") which adds the op, not something that removed a previous
version of cancelled even earlier.

> diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
> index f868cf6fba79..a563699629cb 100644
> --- a/net/9p/trans_fd.c
> +++ b/net/9p/trans_fd.c
> @@ -718,11 +718,18 @@ static int p9_fd_cancelled(struct p9_client *client, struct p9_req_t *req)
>  {
>  	p9_debug(P9_DEBUG_TRANS, "client %p req %p\n", client, req);
>  
> -	/* we haven't received a response for oldreq,
> -	 * remove it from the list.
> +	/* If req->status == REQ_STATUS_RCVD, it means we just received a
> +	 * response for oldreq, we need do nothing here. Else, remove it from
> +	 * the list.

(nitpick) this feels a bit hard to read, and does not give any
information: you're just paraphrasing the C code.

I would suggest moving the comment after the spinlock and say what we
really do ; something as simple as "ignore cancelled request if message
has been received before lock" is enough.

>  	 */
>  	spin_lock(&client->lock);
> +	if (req->status == REQ_STATUS_RCVD) {
> +		spin_unlock(&client->lock);
> +		return 0;
> +	}
> +
>  	list_del(&req->req_list);
> +	req->status = REQ_STATUS_FLSHD;
>  	spin_unlock(&client->lock);
>  	p9_req_put(req);
>  
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
