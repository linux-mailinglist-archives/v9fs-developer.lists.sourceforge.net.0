Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E5DFC547495
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Jun 2022 14:38:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o00NM-0005UP-V2; Sat, 11 Jun 2022 12:37:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <viro@ftp.linux.org.uk>) id 1o00NL-0005UF-E6
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Jun 2022 12:37:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SBb05lsgd+OOO2FAPABsHHQaP96X8u5Au9bw5c2kfU4=; b=iNFMNlMC9jjBDvQaH/7KUdVOXW
 2LsuGMECIN/I3jesMbdhkDxM6UafQazTqxnsCEi3bX9wlDG8TqB6gGLNiXY3YwgeRhaQH3QyES1xD
 wEcFKR/Wl4/ZV0DSZ1lF4rxp2kKWAvyJHZJRg8675JXneXD8OujFWZwQOA3qaiag5xQ8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SBb05lsgd+OOO2FAPABsHHQaP96X8u5Au9bw5c2kfU4=; b=OdaQJ5eVwxMtWWXyY2vs8+GmqU
 5SOIzJgGcgo9vB2S3rXgzUeM9FuPAZcZOX+hduK8ecSsiRcF3oBgKzG6IsPWqs3cbkAbqoIR6lUDU
 9YqcURSr2pbQKzh9e1kVoUUTrUNoNYBtlaEGopMEEXD+mqtWA2KIkKnB2w5Lm+7/nOgo=;
Received: from zeniv-ca.linux.org.uk ([142.44.231.140])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o00NJ-00F3ro-H2
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Jun 2022 12:37:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=SBb05lsgd+OOO2FAPABsHHQaP96X8u5Au9bw5c2kfU4=; b=sSxz2SDHX74tI+Mh9uDjx3JBjg
 w3M60laG/7hD1NiTZNVfdfPuo8p/SykNo8lqbTv5uGDaFkO3ewl0sgcDlNAKK/p0o3SOsRxZD+IrE
 cMycJ9Xhpv/ja36hHX2jBp3TCQZarjEWFVG/BpJxm7T0W79NVhBFLRLzBcyn5nVH9KgbsB7TG+FIn
 INxBFAgn08urU27wENZJuOmqUTmdXIC99VaA6g0D3qEU6lOjwksGiTP9dwcKjQCgIGXpAHdag0GhL
 wiV/BRwo2T/sZ6hMVJWEHrU+8TAL9zodMFX4uklEQI/nDGBoO4DrbD4aodbPrAPoKbqaai2dCUNvb
 E7js933w==;
Received: from viro by zeniv-ca.linux.org.uk with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1o00N6-0065ri-LL; Sat, 11 Jun 2022 12:37:44 +0000
Date: Sat, 11 Jun 2022 12:37:44 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Message-ID: <YqSMmC/UuQpXdxtR@zeniv-ca.linux.org.uk>
References: <YqRyL2sIqQNDfky2@debian> <YqSGv6uaZzLxKfmG@zeniv-ca.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YqSGv6uaZzLxKfmG@zeniv-ca.linux.org.uk>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Jun 11, 2022 at 12:12:47PM +0000, Al Viro wrote: >
 At a guess, should be > return min((size_t)nr * PAGE_SIZE - offset, maxsize); 
 > > in both places. I'm more than half-asleep right now; could you verify
 that it > (as the last lines of both iter_xarr [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o00NJ-00F3ro-H2
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
 linux-kernel@vger.kernel.org, David Howells <dhowells@redhat.com>,
 linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Gao Xiang <xiang@kernel.org>,
 linux-erofs@lists.ozlabs.org, linux-afs@lists.infradead.org,
 devel@lists.orangefs.org, Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sat, Jun 11, 2022 at 12:12:47PM +0000, Al Viro wrote:


> At a guess, should be
> 	return min((size_t)nr * PAGE_SIZE - offset, maxsize);
> 
> in both places.  I'm more than half-asleep right now; could you verify that it
> (as the last lines of both iter_xarray_get_pages() and iter_xarray_get_pages_alloc())
> builds correctly?

No, I'm misreading it - it's unsigned * unsigned long - unsigned vs. size_t.
On arm it ends up with unsigned long vs. unsigned int; functionally it *is*
OK (both have the same range there), but it triggers the tests.  Try 

	return min_t(size_t, nr * PAGE_SIZE - offset, maxsize);

there (both places).

Al, going back to sleep - 4 hours is not enough...


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
