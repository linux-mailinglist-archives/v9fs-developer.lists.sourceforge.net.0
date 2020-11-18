Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7792B7DD3
	for <lists+v9fs-developer@lfdr.de>; Wed, 18 Nov 2020 13:49:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kfMu6-0003Rr-8I; Wed, 18 Nov 2020 12:49:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1kfMKk-0005S5-4z
 for v9fs-developer@lists.sourceforge.net; Wed, 18 Nov 2020 12:13:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vwJHgNKGQbZl2EwfB2TfXfGUisAomAHMeNWf/iz3SIo=; b=cqGmQeERSW+FSa6Yh832nj+z06
 2Wv6Q4Hqa/Vt5D306m3B0zZ9Tu+uDJJKDhrjsUDU2ei4tgQxghKGsh3C9USleyDx3yPsCtcOAfYoI
 nJZXrO8GfTia4YPlhGAfs7UbtrqeXVVZ3oFM98/eQgwcdxxHGhZRtYqx9enjDX7Cfilw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vwJHgNKGQbZl2EwfB2TfXfGUisAomAHMeNWf/iz3SIo=; b=KsZ/H40JPHKAOnpg14TeJht2Fe
 Eoz3F0a8pHfkJzNV9jo9rY3f0bo1mNrWc9rVqrIhK/lMHrTTdtO9gqYnpNIRqLy3ZxjI3qNqS32In
 1qqksWkTy3rpqmG5ciwnEDGu7Fm/1V/rQQEQ/DK5U7mishJsaFEXS5YgWFKNWYJ1Abkk=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kfM97-00DOxJ-K5
 for v9fs-developer@lists.sourceforge.net; Wed, 18 Nov 2020 12:01:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605700856;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=vwJHgNKGQbZl2EwfB2TfXfGUisAomAHMeNWf/iz3SIo=;
 b=aoHwpsM8pZCYItRFC7mMUqAAnMRxZFMCx/dkCb0ZySv1PLwkgfiHqhKyDm5IpwNnASxwSc
 v05R+uHOoOqLlRrg5jyM3dv7InQRkbYoAWorDHpLnBqK3fa8UymMEbz1aDMMJbWqa5BJ6Y
 M22NhKJGSsVSIogW49BBbPN7cEM0aV4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-588-Vv7zJAryPLu1LbTzoZB3pA-1; Wed, 18 Nov 2020 07:00:54 -0500
X-MC-Unique: Vv7zJAryPLu1LbTzoZB3pA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 20D886D246;
 Wed, 18 Nov 2020 12:00:53 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-246.rdu2.redhat.com
 [10.10.112.246])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A9F02196FB;
 Wed, 18 Nov 2020 12:00:48 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <1517306.1605699813@warthog.procyon.org.uk>
References: <1517306.1605699813@warthog.procyon.org.uk>
 <1514086.1605697347@warthog.procyon.org.uk>
To: Dominique Martinet <asmadeus@codewreck.org>
MIME-Version: 1.0
Content-ID: <1553534.1605700847.1@warthog.procyon.org.uk>
Date: Wed, 18 Nov 2020 12:00:47 +0000
Message-ID: <1553535.1605700847@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kfM97-00DOxJ-K5
Subject: Re: [V9fs-developer] [PATCH] 9p: Convert to new fscache API
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
 dhowells@redhat.com, linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

David Howells <dhowells@redhat.com> wrote:

> +static void v9fs_req_issue_op(struct netfs_read_subrequest *subreq)
>  {
> +	struct netfs_read_request *rreq = subreq->rreq;
> +	struct p9_fid *fid = rreq->netfs_priv;
>  	struct iov_iter to;
> +	loff_t pos = subreq->start + subreq->transferred;
> +	size_t len = subreq->len   - subreq->transferred;
>  	int retval, err;
>  
> +	iov_iter_xarray(&to, READ, &rreq->mapping->i_pages, pos, len);
>  
> +	retval = p9_client_read(fid, pos, &to, &err);
> +	if (retval)
> +		subreq->error = retval;

I forgot something: netfs_subreq_terminated() needs to be called when the read
is complete.  If p9_client_read() is synchronous, then that would be here,
probably something like:

	retval = p9_client_read(fid, pos, &to, &err);
	netfs_subreq_terminated(subreq, retval);

is what's required.  Manually setting subreq->error can then be removed.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
