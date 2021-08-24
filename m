Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E0FBD3F5FE1
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Aug 2021 16:07:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mIX4x-0000dV-S8; Tue, 24 Aug 2021 14:07:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1mIX4w-0000d5-9Z
 for v9fs-developer@lists.sourceforge.net; Tue, 24 Aug 2021 14:07:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Xqja1HTyBUf8uuKLULMlLCkspx2KkmGFa3M60ugx7SA=; b=g7W0DHKSKTlQh7Pt95R8oEO9yO
 71rk1XKu5rrgNrl3yrDV42teCOAyRg2Hpkk+F4pCc1URKyhbU/XrX/IKj2NLumkZ0eEU2RDu0VaaF
 yedO6xeNJvJ1sKO08CRuLxyTU8+I+DUjmMdIoNMqZyT4cnWNyRF9JR4dCb7+HVZjMFwY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Xqja1HTyBUf8uuKLULMlLCkspx2KkmGFa3M60ugx7SA=; b=JPlaFLWKMizrvhJMxjHtL53//b
 aIM2mWGEaGyrXae6xqF5XFaRFd2vcGvL+5jpgdjZB5x6dtB3PoTDyVvpVW8BRPQcM4cGn1mFtCpcW
 e0z+aNv/fRvGdTvIfppXE5xnNW+7WXbPn1tQ2/274HyErRvYIdo+xBmMshFmqiWaYaMg=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mIX4r-00Gw0K-3V
 for v9fs-developer@lists.sourceforge.net; Tue, 24 Aug 2021 14:07:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Xqja1HTyBUf8uuKLULMlLCkspx2KkmGFa3M60ugx7SA=; b=nkiCR5PXnBI2kOYu9sWcekaCWQ
 yKWpqOl2UlffS0bJ1kSpjldLoczjJkX2SBHFwC8X6bJaoME7zkHjTcZNHQ7UNBUbwLmhCaq4dRmFd
 vMoraImRqOd/nXBYw/Il1WUhTXACqmnzsjuT8YdaLMKDpmIv4kQsIMiW80XpAN+0xUjtn8EkmvNGM
 ktdWjL54SQgz7IEevZKCwsKmdsc9EvDz6hq1RWi9zlkM37z5wQHI4Uh8P6WZBDhRNzubIEWuJvpdL
 BhF0KvKZPmK+uKVqfX1fqnR/io3we8J0AgKiBsSqoYQUF/jyHow1DXSfBRTzX0zL4nds6HkJq2tTZ
 4lm9BWzQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1mIX1d-00B8bA-27; Tue, 24 Aug 2021 14:03:52 +0000
Date: Tue, 24 Aug 2021 15:03:37 +0100
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <YST8OcVNy02Rivbm@casper.infradead.org>
References: <162981147473.1901565.1455657509200944265.stgit@warthog.procyon.org.uk>
 <162981151155.1901565.7010079316994382707.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162981151155.1901565.7010079316994382707.stgit@warthog.procyon.org.uk>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Aug 24, 2021 at 02:25:11PM +0100,
 David Howells wrote:
 > + * For folios which are in the page cache, return the inode that is hosting
 > + * this folio belongs to. > + * > + * Do not call this [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mIX4r-00Gw0K-3V
Subject: Re: [V9fs-developer] [PATCH 3/6] folio: Add a function to get the
 host inode for a folio
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linux-cachefs@redhat.com,
 v9fs-developer@lists.sourceforge.net, linux-fsdevel@vger.kernel.org,
 ceph-devel@vger.kernel.org, Ilya Dryomov <idryomov@gmail.com>,
 linux-afs@lists.infradead.org, devel@lists.orangefs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Aug 24, 2021 at 02:25:11PM +0100, David Howells wrote:
> + * For folios which are in the page cache, return the inode that is hosting
> + * this folio belongs to.
> + *
> + * Do not call this for folios which aren't in the page cache.
> + */
> +static inline struct inode *folio_inode(struct folio *folio)
> +{
> +	return folio_file_mapping(folio)->host;

You're contradicting yourself here.  If you're allowed to call this
function for swap cache pages, then the documentation needs to change.
If you're not, then we can just use folio->mapping->host.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
