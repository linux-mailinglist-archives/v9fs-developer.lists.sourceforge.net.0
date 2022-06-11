Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C59C1547631
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Jun 2022 17:39:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o03DE-0005cE-Qi; Sat, 11 Jun 2022 15:39:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <viro@ftp.linux.org.uk>) id 1o03DD-0005c7-4p
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Jun 2022 15:39:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ti+2AANXX2O8MAB4FF8D2MuTxZeEKRqkYWjOlelpBa8=; b=mLgC72V2jUK0zu2Aezc/VM3MgU
 m9BnOH6jzv+3pK10hW9SMY5sKLUCapCZo5yYItYGONDFcb8txft1NJAPUwFQbpZmQ8yHTvUSqAJ24
 Pbxj0FbE52TVzN10G99/exewCf8+XUIG5lfQbE8K1oDD7IDF+6/X34MnxhHe53getWKw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ti+2AANXX2O8MAB4FF8D2MuTxZeEKRqkYWjOlelpBa8=; b=SNFPj+QAxp2Yfb/Cpw9ybx5yBA
 YwFJWZaO0l6ZL5hP3rQWtg3ZSyaOPndeOfPEOlTAouRFFdgEQOsSD+ttWvEWmtq+Cs3Gl/33UUBlS
 1WVvBdJy0C8nGXjndqve7+53BGGMHViga3nomSf4uZCPQ1mT5L+uN1zSoqj+B8NE9SeQ=;
Received: from zeniv-ca.linux.org.uk ([142.44.231.140])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o03DB-0006A0-Ea
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Jun 2022 15:39:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Ti+2AANXX2O8MAB4FF8D2MuTxZeEKRqkYWjOlelpBa8=; b=eHg0+OU8W/nrYlQJlJYgZ9OA5O
 JqazKQBmjlFvunvi9gzljs37rl2Oa5VtTvtmDVbS87YWv6HXm7B+Jvx9k+QuOMrOR+Ul/iTf93iyr
 xjKbyuWKIGwwWFyw5KZVNlW1gMrGEhXyht4WhHci+l4Nin/S1FRCdv3kMmFFgjLRJtkbP4gPVsQRZ
 Zj/CRNvjQ2HyJjevRDmaB0CIEzb3wn4VsNmJwhfkqGiMiM1ldx1Bq+v0U/TEjXYPt8jdPOpMk4n1c
 vQEERdRFkMfu8I1VH64q2IwRqYEq+vZnRz1AwE6zjsVJgHmnjFgXctZpbaETDntZ18RWNYE+Tn3ii
 VbxTN1BQ==;
Received: from viro by zeniv-ca.linux.org.uk with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1o03Cw-0069LO-Mm; Sat, 11 Jun 2022 15:39:26 +0000
Date: Sat, 11 Jun 2022 15:39:26 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <YqS3LqioLdSYIWgS@zeniv-ca.linux.org.uk>
References: <YqRyL2sIqQNDfky2@debian> <YqSGv6uaZzLxKfmG@zeniv-ca.linux.org.uk>
 <YqSMmC/UuQpXdxtR@zeniv-ca.linux.org.uk>
 <YqSQ++8UnEW0AJ2y@zeniv-ca.linux.org.uk>
 <20220611140052.GA288528@roeck-us.net>
 <YqSuPPM0rNQaRwlm@zeniv-ca.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YqSuPPM0rNQaRwlm@zeniv-ca.linux.org.uk>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Jun 11, 2022 at 03:01:16PM +0000, Al Viro wrote: >
 On Sat, Jun 11, 2022 at 07:00:52AM -0700, Guenter Roeck wrote: > > On Sat,
 Jun 11, 2022 at 12:56:27PM +0000, Al Viro wrote: > > > On Sat, Jun [...] 
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
X-Headers-End: 1o03DB-0006A0-Ea
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
 David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Gao Xiang <xiang@kernel.org>, linux-erofs@lists.ozlabs.org,
 linux-afs@lists.infradead.org, devel@lists.orangefs.org,
 Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sat, Jun 11, 2022 at 03:01:16PM +0000, Al Viro wrote:
> On Sat, Jun 11, 2022 at 07:00:52AM -0700, Guenter Roeck wrote:
> > On Sat, Jun 11, 2022 at 12:56:27PM +0000, Al Viro wrote:
> > > On Sat, Jun 11, 2022 at 12:37:44PM +0000, Al Viro wrote:
> > > > On Sat, Jun 11, 2022 at 12:12:47PM +0000, Al Viro wrote:
> > > > 
> > > > 
> > > > > At a guess, should be
> > > > > 	return min((size_t)nr * PAGE_SIZE - offset, maxsize);
> > > > > 
> > > > > in both places.  I'm more than half-asleep right now; could you verify that it
> > > > > (as the last lines of both iter_xarray_get_pages() and iter_xarray_get_pages_alloc())
> > > > > builds correctly?
> > > > 
> > > > No, I'm misreading it - it's unsigned * unsigned long - unsigned vs. size_t.
> > > > On arm it ends up with unsigned long vs. unsigned int; functionally it *is*
> > > > OK (both have the same range there), but it triggers the tests.  Try 
> > > > 
> > > > 	return min_t(size_t, nr * PAGE_SIZE - offset, maxsize);
> > > > 
> > > > there (both places).
> > > 
> > > The reason we can't overflow on multiplication there, BTW, is that we have
> > > nr <= count, and count has come from weirdly open-coded
> > > 	DIV_ROUND_UP(size + offset, PAGE_SIZE)
> > 
> > That is often done to avoid possible overflows. Is size + offset
> > guaranteed to be smaller than ULONG_MAX ?
> 
> You'd need iter->count and maxsize argument to be within PAGE_SIZE of
> ULONG_MAX.  How would you populate that xarray, anyway?

	FWIW, it probably would be a good idea to truncate maxsize to LONG_MAX
in iov_iter_get_pages()/iov_iter_get_pages_alloc(), just to avoid that kind
of crap in the future.  Check that maxpages is not zero on the top level,
while we are at it...

	Any caller of iov_iter_get_pages{,_alloc}() must be ready to handle
getting less than what they'd asked for - if nothing else, get_user_pages_fast()
might refuse to give you more than this many pages, etc.  All in-tree callers
do, AFAICS.  And if anyone comes with "pin me more than LONG_MAX bytes of RAM
in one call, I can't accept anything less than that", well...  ISO9000-compliant
response per Dilbert would be called for.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
