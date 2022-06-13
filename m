Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E47548312
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Jun 2022 11:19:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o0gET-0006T6-DZ; Mon, 13 Jun 2022 09:19:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1o0gES-0006T0-Ba
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jun 2022 09:19:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w+/GwuuQGFS111woXNsLKjQljVwtMltJeO1V2zF9Vjo=; b=mvcMXRZDXCbSlUxyxKt1/qLDwY
 cRoJoM166MyF/nvgZfbrsftK6C/FgPNMlJcYFfBEPq9s//9wicaBGtDran+klIreQVl7mRWbQdsSQ
 2d+6xUDOBnYcld6LnX/6ZLMCeu86aMM+Mp2ISFEvRpNwgL6v0AGhduAFdgeL3MzJaYoo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=w+/GwuuQGFS111woXNsLKjQljVwtMltJeO1V2zF9Vjo=; b=frheQi9sO6Rg1NVBkTtInywyTv
 dRfZj1Di7tVIky2cq6qg5LmzmS8nIC+MJihGlrzbxswfTitbxQ98IZeWtqAa/jSn0UoD3arfAXAz6
 ovqIH7vat8Ia13m4Uz4S1gZucjB3k76CaCq2FrcD4d3oKmH2+KroaTYcsswmvVCPYDl8=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o0gEP-00HTPn-C8
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jun 2022 09:19:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1655111967;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=w+/GwuuQGFS111woXNsLKjQljVwtMltJeO1V2zF9Vjo=;
 b=Bex8Y4Ia2ZlPTgGgTP8vxlgwSDnYPXijFh9WSdq2UKulk8IMzBRz2EOWKfhjaCsb/zAIda
 ieX/sxU+4/iYGlO48wdCyce2JT/YiUfIG8rtz7u4XOeOwKEZL72llUJ21+ml9Ama3NJ75x
 WL5F4EyZ7umWScaipLFbeAcsJzbqe0Y=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-619-t37ddbngOHOr1NtMTjiYhg-1; Mon, 13 Jun 2022 05:19:21 -0400
X-MC-Unique: t37ddbngOHOr1NtMTjiYhg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2B90A101E9BE;
 Mon, 13 Jun 2022 09:19:21 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.62])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 201EC492CA2;
 Mon, 13 Jun 2022 09:19:19 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <YqSQ++8UnEW0AJ2y@zeniv-ca.linux.org.uk>
References: <YqSQ++8UnEW0AJ2y@zeniv-ca.linux.org.uk> <YqRyL2sIqQNDfky2@debian>
 <YqSGv6uaZzLxKfmG@zeniv-ca.linux.org.uk>
 <YqSMmC/UuQpXdxtR@zeniv-ca.linux.org.uk>
To: Al Viro <viro@zeniv.linux.org.uk>
MIME-Version: 1.0
Content-ID: <1075695.1655111958.1@warthog.procyon.org.uk>
Date: Mon, 13 Jun 2022 10:19:18 +0100
Message-ID: <1075696.1655111958@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
X-Spam-Score: -1.4 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Al Viro <viro@zeniv.linux.org.uk> wrote: > The reason we
 can't
 overflow on multiplication there, BTW, is that we have > nr <= count, and
 count has come from weirdly open-coded > DIV_ROUND_UP(size + offset, PAGE_SIZE)
 > IMO we'd better make i [...] 
 Content analysis details:   (-1.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o0gEP-00HTPn-C8
Subject: Re: [V9fs-developer] mainline build failure due to 6c77676645ad
 ("iov_iter: Fix iter_xarray_get_pages{, _alloc}()")
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
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
 linux-kernel@vger.kernel.org, Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 dhowells@redhat.com, linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Gao Xiang <xiang@kernel.org>,
 linux-erofs@lists.ozlabs.org, linux-afs@lists.infradead.org,
 devel@lists.orangefs.org, Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Al Viro <viro@zeniv.linux.org.uk> wrote:

> The reason we can't overflow on multiplication there, BTW, is that we have
> nr <= count, and count has come from weirdly open-coded
> 	DIV_ROUND_UP(size + offset, PAGE_SIZE)
> IMO we'd better make it explicit, so how about the following:
> 
> Signed-off-by: Al Viro <viro@zeniv.linux.org.uk>

It seems reasonable.

Reviewed-by: David Howells <dhowells@redhat.com>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
