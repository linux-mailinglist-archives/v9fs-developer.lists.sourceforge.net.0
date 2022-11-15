Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A634562911B
	for <lists+v9fs-developer@lfdr.de>; Tue, 15 Nov 2022 05:09:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ounGc-0003jo-1p;
	Tue, 15 Nov 2022 04:09:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1ounGY-0003jh-Fc
 for v9fs-developer@lists.sourceforge.net;
 Tue, 15 Nov 2022 04:09:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j/xUVrD8mPcSbyQHk615wZHvvK1z2hXuDfFCa4PiwtI=; b=ALPiLHn0k48ksBGdaIi6Ci4Bo0
 nN2Kw0BZ9MhncwuqunUiMkEykqQj4MMvGtjz682tm7OkmUoXOSiyO+VIQaO05my5zmZ/JB+K9w1OX
 KDLEMs5FcpwA/DgOEGhMPC5nmtHO56woBdQ7TPnth69KEEAjSV1k043SSDLAyzeJth0o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=j/xUVrD8mPcSbyQHk615wZHvvK1z2hXuDfFCa4PiwtI=; b=OlvJjWNdDduup9VURK2CIxCBau
 kILAVFVc3gTdS6TeCIQmNl7G5uU/Ek0XCkdkfviHRRuu5ePr7rdffMI8PRW0Bu8mO3joSsobfPa8X
 KvBzFpYDWyNDzxfIcEhWAD0DkTKsbnMKQ2DnzqNH8OSCmmCGZ2oQfoei3bBx8pnEOpY4=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ounGT-008fkc-St for v9fs-developer@lists.sourceforge.net;
 Tue, 15 Nov 2022 04:09:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=j/xUVrD8mPcSbyQHk615wZHvvK1z2hXuDfFCa4PiwtI=; b=cqcPHDV+eY3ifO9g3vqqcV+Bnh
 zsVmJpaFiflf5AYEOG3Gk8yCOvxY2VdVW1IHUEvxNgWPziM1+s7iQWCyjRwtqWOztJWjco+wIE8+/
 JAszRx1WSMGrgfhPxUKltG0mJzXigO2CzTqvQCN0Q3HVnio9l5kV7sxhHrOccZCnn8Cy7fh3vQHHk
 qM7aIAWE419vYSVxB5x5f2zCN2lWsovAQiBqh9msxwhjWhlT12x0nsBLDANysPmO7exwN52iTGj2e
 ijqiE0P7vjJQpO6DIyXSI0xgg+e0DxJ/Z5xGIsfiwcPbNKl3PxKsNMEMxE+mpSFr4xxXC7ElQ+PUq
 RJbOqsQw==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1ounFy-00G84y-Gg; Tue, 15 Nov 2022 04:09:06 +0000
Date: Tue, 15 Nov 2022 04:09:06 +0000
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <Y3MQ4l1AJOgniprT@casper.infradead.org>
References: <166844174069.1124521.10890506360974169994.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <166844174069.1124521.10890506360974169994.stgit@warthog.procyon.org.uk>
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Nov 14, 2022 at 04:02:20PM +0000,
 David Howells wrote: > +++ b/mm/filemap.c > @@ -3941, 6 +3941,
 10 @@ bool filemap_release_folio(struct
 folio *folio, gfp_t gfp) > struct address_space * const m [...] 
 Content analysis details:   (1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1ounGT-008fkc-St
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
 linux-afs@lists.infradead.org, Steve French <sfrench@samba.org>,
 linux-mm@kvack.org, linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Nov 14, 2022 at 04:02:20PM +0000, David Howells wrote:
> +++ b/mm/filemap.c
> @@ -3941,6 +3941,10 @@ bool filemap_release_folio(struct folio *folio, gfp_t gfp)
>  	struct address_space * const mapping = folio->mapping;
>  
>  	BUG_ON(!folio_test_locked(folio));
> +	if ((!mapping || !mapping_release_always(mapping))
> +	    && !folio_test_private(folio) &&
> +	    !folio_test_private_2(folio))
> +		return true;

Why do you need to test 'mapping' here?  Also this is the most
inconsistent style ...

	if ((!mapping || !mapping_release_always(mapping)) &&
	    !folio_test_private(folio) && !folio_test_private_2(folio))

works fine, but if you insist on splitting over three lines, then:

	if ((!mapping || !mapping_release_always(mapping)) &&
	    !folio_test_private(folio) && 
	    !folio_test_private_2(folio))

> @@ -276,7 +275,7 @@ static long mapping_evict_folio(struct address_space *mapping,
>  	if (folio_ref_count(folio) >
>  			folio_nr_pages(folio) + folio_has_private(folio) + 1)

I think this line is incorrect, right?  You don't increment the folio
refcount just because the folio has private2 set, do you?

>  		return 0;
> -	if (folio_has_private(folio) && !filemap_release_folio(folio, 0))
> +	if (!filemap_release_folio(folio, 0))
>  		return 0;
>  
>  	return remove_mapping(mapping, folio);

Can we get rid of folio_has_private() / page_has_private() now?


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
