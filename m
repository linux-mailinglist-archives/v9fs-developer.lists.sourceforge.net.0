Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E79E54746F
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Jun 2022 14:13:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nzzzH-0005RG-3c; Sat, 11 Jun 2022 12:13:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <viro@ftp.linux.org.uk>) id 1nzzzG-0005R5-DH
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Jun 2022 12:13:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=atgndddR6SXbIyqaExtJZJhw3ic+UgK9VwWvZJVDRqM=; b=QyovEGjZ31nagQPl1ePhocVD4P
 bWW+23G19p/VMi9/iFgNytjbZF2f92uUuALiVgy5qO6Ie8S3I6L3HvT4KYUZrZFrlqREAnqWU/pOm
 4v8qSshjcAtvw6JmkxmHwy5x6fVDvT2UwO66Am0nMEFNrI93ltT3RYfPy4fgclAd/ThU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=atgndddR6SXbIyqaExtJZJhw3ic+UgK9VwWvZJVDRqM=; b=Mf8QrvOcCNAMtqLcpPj5q3ZT5r
 4nJJHtxjxfxrAWB55bCKK+t8WMfq2fy64muDuqf9+nE6/+4UhXhcjWE8kclqAJBBQskXwtm/PZRvQ
 TvQ9hl8H4Kpx38bDJPqj8Qal1NXRxsfV0Q8dKZ+UO4rIp0Upnjl/lzgkA/oPnC4iG7TE=;
Received: from zeniv-ca.linux.org.uk ([142.44.231.140])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nzzzA-0007PS-QU
 for v9fs-developer@lists.sourceforge.net; Sat, 11 Jun 2022 12:13:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=atgndddR6SXbIyqaExtJZJhw3ic+UgK9VwWvZJVDRqM=; b=DTBELQ0XOtAet4aUT4efB1q+ia
 sP7gw1tag71Ut9T9J0Y25hndtEHuQORviFREhu65NZ0JgunSjujQajXnFDN3Uhx2zyhojxkmZdwl0
 qFbkPtFs+jzPUrd06AFHJ66iAw0ZejUG7QGBkdYtMMAUYvF9gwQ6+Ge5hl2MN67J7+9sdYld9SbYL
 7zB8a17jvdMvDNcoBdbiC4mM+jU2vVpWX0/p6VbQ5opblAuQF9I0QDAwkqUReQnlGVQzFY2iASRbs
 tjceebpiSFE/FT8okP3RGX3Tw9QnTYrgEfjEhqkRpch/IGE+mV1sULTrAUnDj20FxAqpoFnIyfoHN
 le1+vSDQ==;
Received: from viro by zeniv-ca.linux.org.uk with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1nzzyx-0065U6-SO; Sat, 11 Jun 2022 12:12:48 +0000
Date: Sat, 11 Jun 2022 12:12:47 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Message-ID: <YqSGv6uaZzLxKfmG@zeniv-ca.linux.org.uk>
References: <YqRyL2sIqQNDfky2@debian>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YqRyL2sIqQNDfky2@debian>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Jun 11, 2022 at 11:45:03AM +0100, Sudip Mukherjee
 wrote: > Hi All, > > The latest mainline kernel branch fails to build for
 "arm allmodconfig", > "xtensa allmodconfig" and "csky allmodconfig" [...] 
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
X-Headers-End: 1nzzzA-0007PS-QU
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

On Sat, Jun 11, 2022 at 11:45:03AM +0100, Sudip Mukherjee wrote:
> Hi All,
> 
> The latest mainline kernel branch fails to build for "arm allmodconfig",
> "xtensa allmodconfig" and "csky allmodconfig" with the error:
> 
> In file included from ./include/linux/kernel.h:26,
>                  from ./include/linux/crypto.h:16,
>                  from ./include/crypto/hash.h:11,
>                  from lib/iov_iter.c:2:
> lib/iov_iter.c: In function 'iter_xarray_get_pages':
> ./include/linux/minmax.h:20:35: error: comparison of distinct pointer types lacks a cast [-Werror]
>    20 |         (!!(sizeof((typeof(x) *)1 == (typeof(y) *)1)))
>       |                                   ^~
> ./include/linux/minmax.h:26:18: note: in expansion of macro '__typecheck'
>    26 |                 (__typecheck(x, y) && __no_side_effects(x, y))
>       |                  ^~~~~~~~~~~
> ./include/linux/minmax.h:36:31: note: in expansion of macro '__safe_cmp'
>    36 |         __builtin_choose_expr(__safe_cmp(x, y), \
>       |                               ^~~~~~~~~~
> ./include/linux/minmax.h:45:25: note: in expansion of macro '__careful_cmp'
>    45 | #define min(x, y)       __careful_cmp(x, y, <)
>       |                         ^~~~~~~~~~~~~
> lib/iov_iter.c:1464:16: note: in expansion of macro 'min'
>  1464 |         return min(nr * PAGE_SIZE - offset, maxsize);
>       |                ^~~
> lib/iov_iter.c: In function 'iter_xarray_get_pages_alloc':
> ./include/linux/minmax.h:20:35: error: comparison of distinct pointer types lacks a cast [-Werror]
>    20 |         (!!(sizeof((typeof(x) *)1 == (typeof(y) *)1)))
>       |                                   ^~
> ./include/linux/minmax.h:26:18: note: in expansion of macro '__typecheck'
>    26 |                 (__typecheck(x, y) && __no_side_effects(x, y))
>       |                  ^~~~~~~~~~~
> ./include/linux/minmax.h:36:31: note: in expansion of macro '__safe_cmp'
>    36 |         __builtin_choose_expr(__safe_cmp(x, y), \
>       |                               ^~~~~~~~~~
> ./include/linux/minmax.h:45:25: note: in expansion of macro '__careful_cmp'
>    45 | #define min(x, y)       __careful_cmp(x, y, <)
>       |                         ^~~~~~~~~~~~~
> lib/iov_iter.c:1628:16: note: in expansion of macro 'min'
>  1628 |         return min(nr * PAGE_SIZE - offset, maxsize);
> 
> 
> git bisect pointed to 6c77676645ad ("iov_iter: Fix iter_xarray_get_pages{,_alloc}()")

At a guess, should be
	return min((size_t)nr * PAGE_SIZE - offset, maxsize);

in both places.  I'm more than half-asleep right now; could you verify that it
(as the last lines of both iter_xarray_get_pages() and iter_xarray_get_pages_alloc())
builds correctly?


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
