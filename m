Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD254DAD36
	for <lists+v9fs-developer@lfdr.de>; Wed, 16 Mar 2022 10:07:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nUPcR-0002ZS-1A; Wed, 16 Mar 2022 09:06:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nUPcE-0002YS-O3
 for v9fs-developer@lists.sourceforge.net; Wed, 16 Mar 2022 09:06:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zCjdD5IbiVsEi6ffMk7QaDoa7R2A531SKqpiy5P2wyI=; b=VYS36zrgNb3vIAcBEeOCGzNgim
 rJtLlWWU5Gk4dkmzyUYqJ1Bvp1Ph/nlAdIIT/jPlEjoO2urrNhSHrUsgnCzu3TSwiijwrLcekDBeO
 U8FA7jFqL/2k7uGjI5eQRawboDdRXaTWZVLJKoond6W77JrdpqRmCLYQBrxIDbTljSKk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zCjdD5IbiVsEi6ffMk7QaDoa7R2A531SKqpiy5P2wyI=; b=PqTTdg0MBxazXcP06SF8BWuBKQ
 S20aNRwJKyf6Zyh7sWoSlcISmIx1GjZNwJYZvuzRLS60Gqye0XLXdYNCWttvFqZwMHSqfQjnGmbWx
 bWd5agHqu0Sh9BZ9/KfJEPaNy5yRKOv3XICFzvDIvSVJRHZAap7ZQa3a/GtSuhXJ71Ko=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nUPc7-0002pS-3Y
 for v9fs-developer@lists.sourceforge.net; Wed, 16 Mar 2022 09:06:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1647421592;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=zCjdD5IbiVsEi6ffMk7QaDoa7R2A531SKqpiy5P2wyI=;
 b=Qm+8Lwb5wRa7iiOqOkUAr7BIPP8E7NCtwPnpfQW/xYYfYDMSddDpu9Q/nXQdWeRgwfZRl3
 yPCsKs097G6v7grYkxnXUU+VeZXN4E9lVPlhuJBc0ETmYjvfi3PGVWcI7lzSgu9vJppWJO
 x8FJVbbQkS29Y2aWkyNpp5c8rSCy9Gw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-259-v24-5oqOOmS0sM5icREgvQ-1; Wed, 16 Mar 2022 05:06:29 -0400
X-MC-Unique: v24-5oqOOmS0sM5icREgvQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DFEAE85A5BE;
 Wed, 16 Mar 2022 09:06:27 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CA000C28100;
 Wed, 16 Mar 2022 09:06:25 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <164692909854.2099075.9535537286264248057.stgit@warthog.procyon.org.uk>
References: <164692909854.2099075.9535537286264248057.stgit@warthog.procyon.org.uk>
 <164692883658.2099075.5745824552116419504.stgit@warthog.procyon.org.uk>
To: linux-cachefs@redhat.com
MIME-Version: 1.0
Content-ID: <3536451.1647421585.1@warthog.procyon.org.uk>
Date: Wed, 16 Mar 2022 09:06:25 +0000
Message-ID: <3536452.1647421585@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I found a couple of issues here: Firstly,
 netfs_is_cache_enabled()
 causes the generic/522 xfstest to take 60s longer. This can be fixed by:
 - return fscache_cookie_valid(cookie) && fscache_cookie_enabled(cookie); +
 return fscache_cookie_valid(cookie) && cookie->cache_priv && +
 fscache_cookie_enabled(cookie); 
 Content analysis details:   (-1.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nUPc7-0002pS-3Y
Subject: Re: [V9fs-developer] [PATCH v3 13/20] netfs: Add a netfs inode
 context
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
Cc: Steve French <sfrench@samba.org>, linux-nfs@vger.kernel.org,
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>,
 dhowells@redhat.com, linux-fsdevel@vger.kernel.org,
 Jeffle Xu <jefflexu@linux.alibaba.com>, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Wysochanski <dwysocha@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

I found a couple of issues here:

Firstly, netfs_is_cache_enabled() causes the generic/522 xfstest to take 60s
longer.  This can be fixed by:

-       return fscache_cookie_valid(cookie) && fscache_cookie_enabled(cookie);
+       return fscache_cookie_valid(cookie) && cookie->cache_priv &&
+               fscache_cookie_enabled(cookie);

There's no point trying to do caching if there's no cache actually attached.
I wonder if I should actually make this change in fscache_cookie_enabled()
rather than here.


Secondly, the above causes netfs_skip_folio_read() to be skipped a lot more
often than it should, and this hides an incorrect change there.  I made
netfs_skip_folio_read() copy the folio size into a variable to avoid issuing
the calculation multiple times, but I then gave the wrong length when clearing
the tail of the page.  This can be fixed by:

-       zero_user_segments(&folio->page, 0, offset, offset + len, len);
+       zero_user_segments(&folio->page, 0, offset, offset + len, plen);

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
