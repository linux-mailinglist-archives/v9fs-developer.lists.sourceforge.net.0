Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0493598D9
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Apr 2021 11:10:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lUn9M-000168-OK; Fri, 09 Apr 2021 09:10:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lUn9L-00015i-1Y
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Apr 2021 09:09:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t4HrPUNe1C2/eoGUl35UTxwdBVeab2D940Ztg0ThcXw=; b=JNijKzn3qnDzbHAduCG2pJaAYC
 VYeoGK1xyDQyiShcPbUSlpPsulYmTdXIrj+wcMJxt5AGqvzTRmrzX3Au3hL2c7B6aXnGk0vBZGXUG
 yfYKu1t5QoXhFmzAA3x3PKXROXTQ/Xu0vaOa1nmqlyg+hpQeYX8nUC4T16yaChqcC8DE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=t4HrPUNe1C2/eoGUl35UTxwdBVeab2D940Ztg0ThcXw=; b=IuFPrnQaTh+WDmt6mwA92tsyLV
 oLefuhX/wk0NMAGVnmqELmq8LiFm1DM+0CoWJ682vVN3fNm+pQXQj/tjpoxZ1gLsQ85qxxje+3mLp
 Up+Jvc2k/atisIiC/b2C82/x7L52u2mEdcbwZWHDH1z4xZqojzE85UBrfqDrDXAJdaOA=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lUn8k-009V87-St
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Apr 2021 09:09:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617959357;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=t4HrPUNe1C2/eoGUl35UTxwdBVeab2D940Ztg0ThcXw=;
 b=jVA6JXZoEM9wkcd0KGGOA2q8+u3ycuhjyKPPI83v5T4gw2E90JgWNAk0B8KWrlLfkpzGEV
 2BhI9Us1zj1aE/WIdhMJ8BFJSmYU6QHWzB6j0Dbux8BKQFgOJTogITZXVYnDeg7Lzo4+Yi
 8jp89GJQ1EQrRKdl+w16BFzlN9Yt0TA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-315-DWcyR59bPNm8maj44EYDXw-1; Fri, 09 Apr 2021 05:09:15 -0400
X-MC-Unique: DWcyR59bPNm8maj44EYDXw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 455B9107ACC7;
 Fri,  9 Apr 2021 09:09:13 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-35.rdu2.redhat.com
 [10.10.119.35])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 529765D9E3;
 Fri,  9 Apr 2021 09:09:06 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <YG+s0iw5o91KQIlW@zeniv-ca.linux.org.uk>
References: <YG+s0iw5o91KQIlW@zeniv-ca.linux.org.uk>
 <161789062190.6155.12711584466338493050.stgit@warthog.procyon.org.uk>
 <161789064740.6155.11932541175173658065.stgit@warthog.procyon.org.uk>
To: Al Viro <viro@zeniv.linux.org.uk>
MIME-Version: 1.0
Content-ID: <289824.1617959345.1@warthog.procyon.org.uk>
Date: Fri, 09 Apr 2021 10:09:05 +0100
Message-ID: <289825.1617959345@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux.org.uk]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lUn8k-009V87-St
Subject: Re: [V9fs-developer] [PATCH v6 01/30] iov_iter: Add ITER_XARRAY
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
Cc: David Wysochanski <dwysocha@redhat.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 Steve French <sfrench@samba.org>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-mm@kvack.org,
 linux-cachefs@redhat.com, Anna Schumaker <anna.schumaker@netapp.com>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Al Viro <viro@zeniv.linux.org.uk> wrote:

> > +#define iterate_all_kinds(i, n, v, I, B, K, X) {		\
> 
> Do you have any users that would pass different B and X?
> 
> > @@ -1440,7 +1665,7 @@ ssize_t iov_iter_get_pages_alloc(struct iov_iter *i,
> >  		return v.bv_len;
> >  	}),({
> >  		return -EFAULT;
> > -	})
> > +	}), 0
> 
> Correction - users that might get that flavour.  This one explicitly checks
> for xarray and doesn't get to iterate_... in that case.

This is the case for iterate_all_kinds(), but not for iterate_and_advance().

See _copy_mc_to_iter() for example: that can return directly out of the middle
of the loop, so the X variant must drop the rcu_read_lock(), but the B variant
doesn't need to.  You also can't just use break to get out as the X variant
has a loop within a loop to handle iteration over the subelements of a THP.

But with iterate_all_kinds(), I could just drop the X parameter and use the B
parameter for both, I think.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
