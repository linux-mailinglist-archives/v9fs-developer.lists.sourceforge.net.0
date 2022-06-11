Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A03A75474AB
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Jun 2022 14:56:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o00fU-0005xf-Hq; Sat, 11 Jun 2022 12:56:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <viro@ftp.linux.org.uk>) id 1o00fT-0005xV-2e
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Jun 2022 12:56:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7ECfJmBbWYtsqTXzwSBapwigRDimRB+yDzUlyko8m0Q=; b=TWlAjRd2E/JvmUX/++nJXn59R5
 Rv3vgF6Gs3i9ei9kGyoCmyYPLnJiT2NttFkfiNWWW7RQjVnLOw6CseHRkUzvju9R26TJWiHxh6Rib
 4L5Nkw40jvAdtlPCkDWZF5OXFPeJ/TY09+O/LzkbyroTJrjpv4dghlC0e6yHPL7LhWKE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7ECfJmBbWYtsqTXzwSBapwigRDimRB+yDzUlyko8m0Q=; b=DspOgB6QgGc6JuoFNZaEm5NI60
 4MYoAsG4EuPbmTldn0o8xXTbcWqIvVdjF+p/tvuzjyX9/cCbModx84zHQuOhk4VIKL3GT+ly0ZymH
 DAKJ5IktWuhtiOBSbe5FrbXHOgSNX5Ads8Snbq/gcbXs1ygsz5iIRp3YEzJie4q2WMiI=;
Received: from zeniv-ca.linux.org.uk ([142.44.231.140])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o00fN-0000Eo-S0
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Jun 2022 12:56:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=7ECfJmBbWYtsqTXzwSBapwigRDimRB+yDzUlyko8m0Q=; b=F6iHrQPjuQ0xyu1RiBQyyxM9F8
 TcajGIhz0LksFuaovI+QcylO9H9gAsrApJ84iWn5V87n5JeGUxnBgj5FeafaDSF2JmGXalnMLBsFd
 oM8+Vr1ym3K1cHkHVWZvfvSsg2mJAOaMZvY9PEpsAMBIy+qdF+XWvxaL59M65mOXijYkVKD4DDlqH
 RTHSBf4LnWGrpJxxoz9XGy6BrJthRT6bsBsM5eA5DEFgt+FtLuieMpIjasRz4AlRLrL7lbv3gblnB
 clfzSQFsuxXr91IrsOwX1z2kbaUi1nJ+q1N/tedWPrQ7d3Wy0egh1nQmatU4Xp6cBdtQsCDk9nltB
 NYkWpItA==;
Received: from viro by zeniv-ca.linux.org.uk with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1o00fD-0066DC-RO; Sat, 11 Jun 2022 12:56:27 +0000
Date: Sat, 11 Jun 2022 12:56:27 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Message-ID: <YqSQ++8UnEW0AJ2y@zeniv-ca.linux.org.uk>
References: <YqRyL2sIqQNDfky2@debian> <YqSGv6uaZzLxKfmG@zeniv-ca.linux.org.uk>
 <YqSMmC/UuQpXdxtR@zeniv-ca.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YqSMmC/UuQpXdxtR@zeniv-ca.linux.org.uk>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Jun 11, 2022 at 12:37:44PM +0000, Al Viro wrote: >
 On Sat, Jun 11, 2022 at 12:12:47PM +0000, Al Viro wrote: > > > > At a guess,
 should be > > return min((size_t)nr * PAGE_SIZE - offset, maxsiz [...] 
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
X-Headers-End: 1o00fN-0000Eo-S0
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

On Sat, Jun 11, 2022 at 12:37:44PM +0000, Al Viro wrote:
> On Sat, Jun 11, 2022 at 12:12:47PM +0000, Al Viro wrote:
> 
> 
> > At a guess, should be
> > 	return min((size_t)nr * PAGE_SIZE - offset, maxsize);
> > 
> > in both places.  I'm more than half-asleep right now; could you verify that it
> > (as the last lines of both iter_xarray_get_pages() and iter_xarray_get_pages_alloc())
> > builds correctly?
> 
> No, I'm misreading it - it's unsigned * unsigned long - unsigned vs. size_t.
> On arm it ends up with unsigned long vs. unsigned int; functionally it *is*
> OK (both have the same range there), but it triggers the tests.  Try 
> 
> 	return min_t(size_t, nr * PAGE_SIZE - offset, maxsize);
> 
> there (both places).

The reason we can't overflow on multiplication there, BTW, is that we have
nr <= count, and count has come from weirdly open-coded
	DIV_ROUND_UP(size + offset, PAGE_SIZE)
IMO we'd better make it explicit, so how about the following:

Signed-off-by: Al Viro <viro@zeniv.linux.org.uk>
---
diff --git a/lib/iov_iter.c b/lib/iov_iter.c
index dda6d5f481c1..150dbd314d25 100644
--- a/lib/iov_iter.c
+++ b/lib/iov_iter.c
@@ -1445,15 +1445,7 @@ static ssize_t iter_xarray_get_pages(struct iov_iter *i,
 	offset = pos & ~PAGE_MASK;
 	*_start_offset = offset;
 
-	count = 1;
-	if (size > PAGE_SIZE - offset) {
-		size -= PAGE_SIZE - offset;
-		count += size >> PAGE_SHIFT;
-		size &= ~PAGE_MASK;
-		if (size)
-			count++;
-	}
-
+	count = DIV_ROUND_UP(size + offset, PAGE_SIZE);
 	if (count > maxpages)
 		count = maxpages;
 
@@ -1461,7 +1453,7 @@ static ssize_t iter_xarray_get_pages(struct iov_iter *i,
 	if (nr == 0)
 		return 0;
 
-	return min(nr * PAGE_SIZE - offset, maxsize);
+	return min_t(size_t, nr * PAGE_SIZE - offset, maxsize);
 }
 
 /* must be done on non-empty ITER_IOVEC one */
@@ -1607,15 +1599,7 @@ static ssize_t iter_xarray_get_pages_alloc(struct iov_iter *i,
 	offset = pos & ~PAGE_MASK;
 	*_start_offset = offset;
 
-	count = 1;
-	if (size > PAGE_SIZE - offset) {
-		size -= PAGE_SIZE - offset;
-		count += size >> PAGE_SHIFT;
-		size &= ~PAGE_MASK;
-		if (size)
-			count++;
-	}
-
+	count = DIV_ROUND_UP(size + offset, PAGE_SIZE);
 	p = get_pages_array(count);
 	if (!p)
 		return -ENOMEM;
@@ -1625,7 +1609,7 @@ static ssize_t iter_xarray_get_pages_alloc(struct iov_iter *i,
 	if (nr == 0)
 		return 0;
 
-	return min(nr * PAGE_SIZE - offset, maxsize);
+	return min_t(size_t, nr * PAGE_SIZE - offset, maxsize);
 }
 
 ssize_t iov_iter_get_pages_alloc(struct iov_iter *i,


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
