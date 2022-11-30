Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D1A63D5D6
	for <lists+v9fs-developer@lfdr.de>; Wed, 30 Nov 2022 13:43:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p0MRC-0001z1-F0;
	Wed, 30 Nov 2022 12:43:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1p0MRA-0001yu-Qb
 for v9fs-developer@lists.sourceforge.net;
 Wed, 30 Nov 2022 12:43:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/BlcjrhlqFewCWUJrrIEfdV+ZSjxYvhgiyJGvIdAx+w=; b=chgODHwDey9cqr56LobPU6vDL3
 GOFf65RK/gkbQcyxtB5Jb94wUBaw/Ea5qH+V2gX8twzb48pxyU2MbHOzmgiR3HIpgXujtUcvO+528
 1NmcgrKaUjIknAwd01e7DoCz926Qrqo4IFbXzfqayeBKA5DZpFjREl7XulbnRc+Ce/QY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/BlcjrhlqFewCWUJrrIEfdV+ZSjxYvhgiyJGvIdAx+w=; b=IKLRVucpA38Q0pJlpOP7S1Ng7a
 CUhSBZ/eYMbw/Gi3AjlphispAVR83tUex8ErqFpaJSJuWRJ1bZWkiCNhtAvI8Dce4+Fjsfig7TKAA
 1ri84gWLylPUyNu2xZU0B2fm/NDolYYr2IFQn8ZjVr3nuU0JzMdDT3VbIYl5FK8VZj7k=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p0MR9-001P4n-AV for v9fs-developer@lists.sourceforge.net;
 Wed, 30 Nov 2022 12:43:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=/BlcjrhlqFewCWUJrrIEfdV+ZSjxYvhgiyJGvIdAx+w=; b=bpjDeNkppxzTtMyTUxjxhx0xQh
 EWKf76ISQ7SoDJ0EOpicgmCOEREw5IHvO653wvxSVqfCsoyjv87MzjvGiTej4MQfOCmLx1x3kdnuD
 OumJcs7i/XH0vslJ9seiobfgQmmHnCK80GE1XM13w6PHTOmzqI18HEQo2O2wRYzoCJ1R51gBjjrtl
 Dif7dAIxl5BhbmmOqr7Lpc94+2gOP3MmEGUJ6d72tJsbnqKAzKIiZ9eaaoYjVV37cS8fNW42C8r+v
 NcEfnn9durihatI+ZxjmdDFlJ0b4HsxQQlmQZHoQ9ludbQJObFoch5RwjKdXg8ASlfns1m1S39a2c
 Ltmf1QMp7P6atn6OJG8lOC69LNVMlHnEeHhI+Orfdri134X4fa11hX/FHDVJodMk3vG4dYAVE5XnO
 uMvvXabkcdpip95UufW4LqU1l4tzLXEcR67N62bBWKkXAKU6/wpO846Do6CMRRd+He13JAjXo9O1f
 t1xU5+fXophHji8FycSiBTiIL71wTwQR/rzyIngTffoGUf436lNQGK+zvQTpTDJ6IVJleV8PhPa0J
 UQ9FANkrfNtSxzxk3yFASZaGpvD+1HxXNfAgGc8U3RE1rrj3bQVIwYfq6r4xqpzEWBBj2H5iCVeDu
 SeE7oIWwV8uowKRZB/GoE9zkf/CnLhgGMb2X/DaKI=;
To: Schspa Shi <schspa@gmail.com>, asmadeus@codewreck.org
Date: Wed, 30 Nov 2022 13:43:20 +0100
Message-ID: <2356667.R3SNuAaExM@silver>
In-Reply-To: <Y4c5N/SAuszTLiEA@codewreck.org>
References: <20221129162251.90790-1-schspa@gmail.com>
 <m2o7sowzas.fsf@gmail.com> <Y4c5N/SAuszTLiEA@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wednesday, November 30,
 2022 12:06:31 PM CET asmadeus@codewreck.org
 wrote: > Schspa Shi wrote on Wed, Nov 30, 2022 at 04:14:32PM +0800: > > >
 - reqs are alloced in a kmem_cache created with SLAB_TY [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: crudebyte.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1p0MR9-001P4n-AV
Subject: Re: [V9fs-developer] [PATCH] 9p: fix crash when transaction killed
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: lucho@ionkov.net, syzbot+8f1060e2aaf8ca55220b@syzkaller.appspotmail.com,
 ericvh@gmail.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 edumazet@google.com, v9fs-developer@lists.sourceforge.net, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wednesday, November 30, 2022 12:06:31 PM CET asmadeus@codewreck.org wrote:
> Schspa Shi wrote on Wed, Nov 30, 2022 at 04:14:32PM +0800:
> > >  - reqs are alloced in a kmem_cache created with SLAB_TYPESAFE_BY_RCU.
> > >  This means that if we get a req from idr_find, even if it has just been
> > >  freed, it either is still in the state it was freed at (hence refcount
> > >  0, we ignore it) or is another req coming from the same cache (if
> > 
> > If the req was newly alloced(It was at a new page), refcount maybe not
> > 0, there will be problem in this case. It seems we can't relay on this.
> > 
> > We need to set the refcount to zero before add it to idr in p9_tag_alloc.
> 
> Hmm, if it's reused then it's zero by definition, but if it's a new
> allocation (uninitialized) then anything goes; that lookup could find
> and increase it before the refcount_set, and we'd have an off by one
> leading to use after free. Good catch!
> 
> Initializing it to zero will lead to the client busy-looping until after
> the refcount is properly set, which should work.
> Setting refcount early might have us use an re-used req before the tag
> has been changed so that one cannot move.
> 
> Could you test with just that changed if syzbot still reproduces this
> bug? (perhaps add a comment if you send this)
> 
> ------
> diff --git a/net/9p/client.c b/net/9p/client.c
> index aaa37b07e30a..aa64724f6a69 100644
> --- a/net/9p/client.c
> +++ b/net/9p/client.c
> @@ -297,6 +297,7 @@ p9_tag_alloc(struct p9_client *c, int8_t type, uint t_size, uint r_size,
>  	p9pdu_reset(&req->rc);
>  	req->t_err = 0;
>  	req->status = REQ_STATUS_ALLOC;
> +	refcount_set(&req->refcount, 0);
>  	init_waitqueue_head(&req->wq);
>  	INIT_LIST_HEAD(&req->req_list);
> 
> ----- 
> 
> > >  refcount isn't zero, we can check its tag)
> > 
> > As for the release case, the next request will have the same tag with
> > high probability. It's better to make the tag value to be an increase
> > sequence, thus will avoid very much possible req reuse.
> 
> I'd love to be able to do this, but it would break some servers that
> assume tags are small (e.g. using it as an index for a tag array)
> ... I thought nfs-ganesha was doing this but they properly put in in
> buckets, so that's one less server to worry about, but I wouldn't put
> it past some simple servers to do that; having a way to lookup a given
> tag for flush is an implementation requirement.

I really think it's time to emit tag number sequentially. If it turns out that
it's a server that is broken, we could then simply ignore replies with old/
unknown tag number. It would also help a lot when debugging 9p issues in
general when you know tag numbers are not re-used (in near future).

A 9p server must not make any assumptions how tag numbers are generated by
client, whether dense or sparse, or whatever. If it does then server is
broken, which is much easier to fix than synchronization issues we have to
deal with like this one.

> That shouldn't be a problem though as that will just lead to either fail
> the guard check after lookup (m->rreq->status != REQ_STATUS_SENT) or be
> processed as a normal reply if it's already been sent by the other
> thread at this point.
> OTOH, that m->rreq->status isn't protected by m->req_lock in trans_fd,
> and that is probably another bug...





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
