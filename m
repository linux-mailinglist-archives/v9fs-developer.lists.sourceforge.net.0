Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C0550628E3C
	for <lists+v9fs-developer@lfdr.de>; Tue, 15 Nov 2022 01:22:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oujj5-0001ST-DA;
	Tue, 15 Nov 2022 00:22:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1oujj3-0001SM-Vv
 for v9fs-developer@lists.sourceforge.net;
 Tue, 15 Nov 2022 00:22:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LIstCPb4xQT8VC3InWGVD6DG7uFdDJigM2d8zkWyzlg=; b=A6r8i2s5shsE1GMBhk2xt1X4Ju
 FTgy3y1QZfvAQnHV38hVs7nhqOhoYzAuj/32euQOoilA+qPCtbohXC1Ba8qngRHMDAteLqwIMrpZH
 dmT7nShZ9Up/0GRRExt3/z26BvsmWhMBL95Q5vGXZsP91RPoHod5GzA3rDmFNCjTVefY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LIstCPb4xQT8VC3InWGVD6DG7uFdDJigM2d8zkWyzlg=; b=i8W8wR0GkbBb35+pCZGH0eWSky
 s4CfcK0giRG6Xhy8wsDJIuHbDrj1IYuQ8R2j4FLjlaC8YTFeQE9LSxHb0/Dt0NSPRfGy9RiqpOJ76
 RYIGuKg0zBZGkPPYLwe+zdFbJWPS7ZG84jAvSpRmpSfAwTv1HRJQA2wfvp0GiyaxAHXs=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oujj0-008W3P-EF for v9fs-developer@lists.sourceforge.net;
 Tue, 15 Nov 2022 00:22:53 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id A15C3C01D; Tue, 15 Nov 2022 01:22:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1668471767; bh=LIstCPb4xQT8VC3InWGVD6DG7uFdDJigM2d8zkWyzlg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=G0AKICC0W6VuAaguvSarwKyfe1votPMEsfGbA09qH1h/AsQ90wrbsVH7JSJ7jJL5E
 VKY0O37oqHoFo90V2kUxnByoWdtlmcULumGC7298yh7Ryo1v5abDgshcfyFUMuuneQ
 B1Rz/U9mP2kaoyssccD/h24Wxe5QjbEtTLMR3a62qdR8jrV5zdI0CZI4xJfB1CiVt2
 sVS+Nqj8/kGNPGqHOxwi102RurL1dOWMRknCCzIDPzOizX6rh50Dv3ZqAKcyWh6V1e
 Ktj2zOo1sxdV55MvFsZRWmwcI1RKEpawlxlKrubfrEAZUo+GOO/1NVKztssiic/WH2
 t5jBZpjeMXA2w==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id E9DB3C009;
 Tue, 15 Nov 2022 01:22:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1668471766; bh=LIstCPb4xQT8VC3InWGVD6DG7uFdDJigM2d8zkWyzlg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vCzYdsKheoEw3SbPdq8dVompXvyIFPrTv8JxCFNOG8Sv6HDGCCc8EJ9TZ1mJpAJBP
 dfuVrLiLq6tLoPjg4vx7OnksEJRCe7+wk8srl2FEfVJUHcjtGwcL/HsmLnl7hxdJJO
 aAoNMpEDlxjtDi5MM90FWnau+y1nrDpmXPlLGgo+4TqQmnSnJRW9oMhrUC4NSrf2YI
 kwkv/XQ7cOL1UiwjAM4vHnFOYQEuzfy0wyv+LAwoyoMRSBGmD7j/7m8dWCIq6wXmGd
 HBU3jACL9WMITVf23xsnCvYbaZt3Cc3GmPhLK9M9qGkjB66Hluj/ez6JPYz8fB704q
 zmA+Da+v6VOiA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 675ffca7;
 Tue, 15 Nov 2022 00:22:33 +0000 (UTC)
Date: Tue, 15 Nov 2022 09:22:18 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <Y3Lbul7FZncNVwVZ@codewreck.org>
References: <166844174069.1124521.10890506360974169994.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <166844174069.1124521.10890506360974169994.stgit@warthog.procyon.org.uk>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  David Howells wrote on Mon, Nov 14, 2022 at 04:02:20PM +0000:
 > Fscache has an optimisation by which reads from the cache are skipped until
 > we know that (a) there's data there to be read and (b) tha [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oujj0-008W3P-EF
Subject: Re: [V9fs-developer] [RFC PATCH v2] mm, netfs,
 fscache: Stop read optimisation when folio removed from pagecache
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
Cc: Shyam Prasad N <nspmangalore@gmail.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, Rohith Surabattula <rohiths.msft@gmail.com>,
 dwysocha@redhat.com, ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 willy@infradead.org, Steve French <sfrench@samba.org>, linux-mm@kvack.org,
 linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

David Howells wrote on Mon, Nov 14, 2022 at 04:02:20PM +0000:
> Fscache has an optimisation by which reads from the cache are skipped until
> we know that (a) there's data there to be read and (b) that data isn't
> entirely covered by pages resident in the netfs pagecache.  This is done
> with two flags manipulated by fscache_note_page_release():
> 
> 	if (...
> 	    test_bit(FSCACHE_COOKIE_HAVE_DATA, &cookie->flags) &&
> 	    test_bit(FSCACHE_COOKIE_NO_DATA_TO_READ, &cookie->flags))
> 		clear_bit(FSCACHE_COOKIE_NO_DATA_TO_READ, &cookie->flags);
> 
> where the NO_DATA_TO_READ flag causes cachefiles_prepare_read() to indicate
> that netfslib should download from the server or clear the page instead.
> 
> The fscache_note_page_release() function is intended to be called from
> ->releasepage() - but that only gets called if PG_private or PG_private_2
> is set - and currently the former is at the discretion of the network
> filesystem and the latter is only set whilst a page is being written to the
> cache, so sometimes we miss clearing the optimisation.
> 
> Fix this by following Willy's suggestion[1] and adding an address_space
> flag, AS_RELEASE_ALWAYS, that causes filemap_release_folio() to always call
> ->release_folio() if it's set, even if PG_private or PG_private_2 aren't
> set.

Not familiar with the common code so just glanced at it and asked stupid
questions.

> diff --git a/fs/9p/cache.c b/fs/9p/cache.c
> index cebba4eaa0b5..12c0ae29f185 100644
> --- a/fs/9p/cache.c
> +++ b/fs/9p/cache.c
> @@ -68,6 +68,8 @@ void v9fs_cache_inode_get_cookie(struct inode *inode)
>  				       &path, sizeof(path),
>  				       &version, sizeof(version),
>  				       i_size_read(&v9inode->netfs.inode));
> +	if (v9inode->netfs.cache)
> +		mapping_set_release_always(inode->i_mapping);
>  
>  	p9_debug(P9_DEBUG_FSC, "inode %p get cookie %p\n",
>  		 inode, v9fs_inode_cookie(v9inode));
> diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
> index 4d1a4a8d9277..b553fe3484c1 100644
> --- a/fs/9p/vfs_inode.c
> +++ b/fs/9p/vfs_inode.c
> @@ -394,6 +394,7 @@ void v9fs_evict_inode(struct inode *inode)
>  	version = cpu_to_le32(v9inode->qid.version);
>  	fscache_clear_inode_writeback(v9fs_inode_cookie(v9inode), inode,
>  				      &version);
> +	mapping_clear_release_always(inode->i_mapping);

any harm in setting this if netfs isn't enabled?
(just asking because you checked in fs/9p/cache.c above)

>  	clear_inode(inode);
>  	filemap_fdatawrite(&inode->i_data);
>  
> diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
> index bbccb4044222..3db9a6225bc0 100644
> --- a/include/linux/pagemap.h
> +++ b/include/linux/pagemap.h
> @@ -199,6 +199,7 @@ enum mapping_flags {
>  	/* writeback related tags are not used */
>  	AS_NO_WRITEBACK_TAGS = 5,
>  	AS_LARGE_FOLIO_SUPPORT = 6,
> +	AS_RELEASE_ALWAYS,	/* Call ->release_folio(), even if no private data */
>  };
>  
>  /**
> @@ -269,6 +270,21 @@ static inline int mapping_use_writeback_tags(struct address_space *mapping)
>  	return !test_bit(AS_NO_WRITEBACK_TAGS, &mapping->flags);
>  }
>  
> +static inline bool mapping_release_always(const struct address_space *mapping)
> +{
> +	return test_bit(AS_RELEASE_ALWAYS, &mapping->flags);
> +}
> +
> +static inline void mapping_set_release_always(struct address_space *mapping)
> +{
> +	set_bit(AS_RELEASE_ALWAYS, &mapping->flags);
> +}
> +
> +static inline void mapping_clear_release_always(struct address_space *mapping)
> +{
> +	set_bit(AS_RELEASE_ALWAYS, &mapping->flags);

clear_bit certainly?

> +}
> +
>  static inline gfp_t mapping_gfp_mask(struct address_space * mapping)
>  {
>  	return mapping->gfp_mask;
> diff --git a/mm/truncate.c b/mm/truncate.c
> index c0be77e5c008..0d4dd233f518 100644
> --- a/mm/truncate.c
> +++ b/mm/truncate.c
> @@ -19,7 +19,6 @@
>  #include <linux/highmem.h>
>  #include <linux/pagevec.h>
>  #include <linux/task_io_accounting_ops.h>
> -#include <linux/buffer_head.h>	/* grr. try_to_release_page */
>  #include <linux/shmem_fs.h>
>  #include <linux/rmap.h>
>  #include "internal.h"
> @@ -276,7 +275,7 @@ static long mapping_evict_folio(struct address_space *mapping,
>  	if (folio_ref_count(folio) >
>  			folio_nr_pages(folio) + folio_has_private(folio) + 1)
>  		return 0;
> -	if (folio_has_private(folio) && !filemap_release_folio(folio, 0))
> +	if (!filemap_release_folio(folio, 0))

should this (and all others) check for folio_needs_release instead of has_private?
filemap_release_folio doesn't check as far as I can see, but perhaps
it's already fast and noop for another reason I didn't see.

>  		return 0;
>  
>  	return remove_mapping(mapping, folio);

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
