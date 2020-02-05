Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7085315270D
	for <lists+v9fs-developer@lfdr.de>; Wed,  5 Feb 2020 08:35:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1izFDe-0007e7-Rq; Wed, 05 Feb 2020 07:35:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1izFDd-0007e0-IE
 for v9fs-developer@lists.sourceforge.net; Wed, 05 Feb 2020 07:35:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LceVz68GpWJcOWNJC9tEjGyiyhAFRWgYgCq4BBsKAYg=; b=i/8+SJRzzjBdW+9pQTVl1k51lT
 ow+uXbHOjdMtA/M6sXeH8UGHjyY2LRErE36XMx21CaQtm2TY3Fxo165FY17/HE9jgDXiiOIczvCL7
 4wLvZcqeV3gYgPjnIvhjVx7T2Jnwl+GDJb+0Tz27MR75yfyVAbLQwhyTuiPZ6uIfKIzY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LceVz68GpWJcOWNJC9tEjGyiyhAFRWgYgCq4BBsKAYg=; b=JOArhXnhetIyqGX/0sBo8PKBD6
 SiWeC30cdgQEdq1jMcibzdZwO3L1qbM8Bcp3sqcHkmXT/W+VKR9rMkY0wcBMieCfMwmj4cxHWPWlV
 RZYm8C9wEaHJXCcScZDzFLw1NB+3UeaBtlqB6dHnIc4RU2fK7uMpVu7ECp47GQO+I/l0=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1izFDb-00AjPD-96
 for v9fs-developer@lists.sourceforge.net; Wed, 05 Feb 2020 07:35:29 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id AC309C009; Wed,  5 Feb 2020 08:35:19 +0100 (CET)
Date: Wed, 5 Feb 2020 08:35:04 +0100
From: Dominique Martinet <asmadeus@codewreck.org>
To: Sergey Alirzaev <l29ah@cock.li>
Message-ID: <20200205073504.GA16626@nautica>
References: <20200205003457.24340-1-l29ah@cock.li>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205003457.24340-1-l29ah@cock.li>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.3 (/)
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
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1izFDb-00AjPD-96
Subject: Re: [V9fs-developer] [PATCH 1/2] 9pnet: allow making incomplete
 read requests
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
> be available, since the waiting time is unbounded.

I'm not sure I agree on the argument there: the waiting time is
unbounded for a single request as well. What's your use case?

I think it would be better to describe what you really do with
O_NONBLOCK that requires this, and not just false theoritical
arguments.


> Signed-off-by: Sergey Alirzaev <l29ah@cock.li>

Code-wise looks mostly good, just a nitpick about keeping the total
variable in p9_client_read_once inline.

> ---
>  include/net/9p/client.h |   2 +
>  net/9p/client.c         | 133 ++++++++++++++++++++++------------------
>  2 files changed, 76 insertions(+), 59 deletions(-)
> 
> --- a/net/9p/client.c
> +++ b/net/9p/client.c
> @@ -1548,83 +1548,98 @@ EXPORT_SYMBOL(p9_client_unlinkat);
>  
>  int
>  p9_client_read(struct p9_fid *fid, u64 offset, struct iov_iter *to, int *err)
> +{
> +	int total = 0;
> +	*err = 0;
> +
> +	while (iov_iter_count(to)) {
> +		int count;
> +
> +		count = p9_client_read_once(fid, offset, to, err);
> +		if (!count || *err)
> +			break;
> +		offset += count;
> +		total += count;
> +	}
> +	return total;
> +}
> +EXPORT_SYMBOL(p9_client_read);
> +
> +int
> +p9_client_read_once(struct p9_fid *fid, u64 offset, struct iov_iter *to,
> +		    int *err)
>  {
>  	struct p9_client *clnt = fid->clnt;
>  	struct p9_req_t *req;
>  	int total = 0;

total only makes sense in an iterating p9_client_read, I think it makes
code harder to read here (can basically use count or 0 directly now)

> -	*err = 0;
> +	int count = iov_iter_count(to);
> +	int rsize, non_zc = 0;
> +	char *dataptr;
>  
> +	*err = 0;
>  	p9_debug(P9_DEBUG_9P, ">>> TREAD fid %d offset %llu %d\n",
>  		   fid->fid, (unsigned long long) offset, (int)iov_iter_count(to));
>  
> -	while (iov_iter_count(to)) {
> -		int count = iov_iter_count(to);
> -		int rsize, non_zc = 0;
> -		char *dataptr;
> +	rsize = fid->iounit;
> +	if (!rsize || rsize > clnt->msize - P9_IOHDRSZ)
> +		rsize = clnt->msize - P9_IOHDRSZ;
>  
> -		rsize = fid->iounit;
> -		if (!rsize || rsize > clnt->msize-P9_IOHDRSZ)
> -			rsize = clnt->msize - P9_IOHDRSZ;
> +	if (count < rsize)
> +		rsize = count;
>  
> -		if (count < rsize)
> -			rsize = count;
> +	/* Don't bother zerocopy for small IO (< 1024) */
> +	if (clnt->trans_mod->zc_request && rsize > 1024) {
> +		/* response header len is 11
> +		 * PDU Header(7) + IO Size (4)
> +		 */
> +		req = p9_client_zc_rpc(clnt, P9_TREAD, to, NULL, rsize,
> +				       0, 11, "dqd", fid->fid,
> +				       offset, rsize);
> +	} else {
> +		non_zc = 1;
> +		req = p9_client_rpc(clnt, P9_TREAD, "dqd", fid->fid, offset,
> +				    rsize);
> +	}
> +	if (IS_ERR(req)) {
> +		*err = PTR_ERR(req);
> +		return total;
> +	}
>  
> -		/* Don't bother zerocopy for small IO (< 1024) */
> -		if (clnt->trans_mod->zc_request && rsize > 1024) {
> -			/*
> -			 * response header len is 11
> -			 * PDU Header(7) + IO Size (4)
> -			 */
> -			req = p9_client_zc_rpc(clnt, P9_TREAD, to, NULL, rsize,
> -					       0, 11, "dqd", fid->fid,
> -					       offset, rsize);
> -		} else {
> -			non_zc = 1;
> -			req = p9_client_rpc(clnt, P9_TREAD, "dqd", fid->fid, offset,
> -					    rsize);
> -		}
> -		if (IS_ERR(req)) {
> -			*err = PTR_ERR(req);
> -			break;
> -		}
> +	*err = p9pdu_readf(&req->rc, clnt->proto_version,
> +			   "D", &count, &dataptr);
> +	if (*err) {
> +		trace_9p_protocol_dump(clnt, &req->rc);
> +		p9_tag_remove(clnt, req);
> +		return total;
> +	}
> +	if (rsize < count) {
> +		pr_err("bogus RREAD count (%d > %d)\n", count, rsize);
> +		count = rsize;
> +	}
>  
> -		*err = p9pdu_readf(&req->rc, clnt->proto_version,
> -				   "D", &count, &dataptr);
> -		if (*err) {
> -			trace_9p_protocol_dump(clnt, &req->rc);
> -			p9_tag_remove(clnt, req);
> -			break;
> -		}
> -		if (rsize < count) {
> -			pr_err("bogus RREAD count (%d > %d)\n", count, rsize);
> -			count = rsize;
> -		}
> +	p9_debug(P9_DEBUG_9P, "<<< RREAD count %d\n", count);
> +	if (!count) {
> +		p9_tag_remove(clnt, req);
> +		return total;
> +	}
>  
> -		p9_debug(P9_DEBUG_9P, "<<< RREAD count %d\n", count);
> -		if (!count) {
> -			p9_tag_remove(clnt, req);
> -			break;
> -		}
> +	if (non_zc) {
> +		int n = copy_to_iter(dataptr, count, to);
>  
> -		if (non_zc) {
> -			int n = copy_to_iter(dataptr, count, to);
> -			total += n;
> -			offset += n;
> -			if (n != count) {
> -				*err = -EFAULT;
> -				p9_tag_remove(clnt, req);
> -				break;
> -			}
> -		} else {
> -			iov_iter_advance(to, count);
> -			total += count;
> -			offset += count;
> +		total += n;
> +		if (n != count) {
> +			*err = -EFAULT;
> +			p9_tag_remove(clnt, req);
> +			return total;
>  		}
> -		p9_tag_remove(clnt, req);
> +	} else {
> +		iov_iter_advance(to, count);
> +		total += count;
>  	}
> +	p9_tag_remove(clnt, req);
>  	return total;
>  }
> -EXPORT_SYMBOL(p9_client_read);
> +EXPORT_SYMBOL(p9_client_read_once);
>  
>  int
>  p9_client_write(struct p9_fid *fid, u64 offset, struct iov_iter *from, int *err)

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
