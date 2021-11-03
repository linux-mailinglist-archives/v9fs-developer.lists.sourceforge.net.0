Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 096D8444364
	for <lists+v9fs-developer@lfdr.de>; Wed,  3 Nov 2021 15:25:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1miHCd-0001A1-2P; Wed, 03 Nov 2021 14:25:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <willy@infradead.org>) id 1miHCa-00019q-Gm
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Nov 2021 14:25:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MHA8/5DT9+P3H8EQ2DoH0Mu3SBzybKb1RrICo62RwQ4=; b=DyyadgXXD71tuVbFOuqmrD5Mch
 Clzinl0z7DNlIR7jqPrbGinLMY3T5At6nj2F/jRlsO7boy6NXDq5SPEEHKuUqkuOaf8bmBD346cTL
 Y3mfjLOk7b/ulL3NLo4ZRpA1OLZTwE3fLJEPPREBI4N6Jr68tk25gT2RC3NqLGXBhs6c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MHA8/5DT9+P3H8EQ2DoH0Mu3SBzybKb1RrICo62RwQ4=; b=g3xaKKJmM/lYkgihTt0j+Nny8W
 NMz3aknNtO6c0Rm3gG/0t6Ucs21vZPlgR3ImlmVxPw69NxsT/HL7VUi479P7mQv71nx/QOW1WX/WZ
 i1TX4n5r8Nlw+se5juWJjE2KT1fTFgLr/ZB9TrcUfa3EoldUyV2pX29a4nAfO7+jvY1U=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1miHCY-00026w-AU
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Nov 2021 14:25:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=MHA8/5DT9+P3H8EQ2DoH0Mu3SBzybKb1RrICo62RwQ4=; b=t9eJNkfzrgV+QiZqspfhcfToYC
 3Ec3SF3Q9ZLFQr4jT4+hVBAtuUAKgl1oeoJE6scE4G7P3IEjD2W/m5e99yCHLHHqSDI4E6rXc3JMg
 w4hmwDJRapYDTm+u3lLY6FNZbczw88eT0WhKs9l37aOExnpxsFT0/MIanKBtIqeteHjLCUNpHkY3t
 6V8IAR1xpI1GYombL4N7TBPf8hVo3yBjiDFh6Q6ZiaTO73ciucIzhdBOKDW+BOs+2QBbEDNk1eJ27
 55B12uY/pzWiNJcJpqjIYYeUkBZkGAu0Sd3MqWEnqhWN6VDdSlaDtEesmkfjbJgM/JJGlieavLNzj
 4sxQUXrw==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1miH8f-005FeW-AM; Wed, 03 Nov 2021 14:21:52 +0000
Date: Wed, 3 Nov 2021 14:21:17 +0000
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <YYKa3bfQZxK5/wDN@casper.infradead.org>
References: <163584174921.4023316.8927114426959755223.stgit@warthog.procyon.org.uk>
 <163584187452.4023316.500389675405550116.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <163584187452.4023316.500389675405550116.stgit@warthog.procyon.org.uk>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Nov 02, 2021 at 08:31:14AM +0000,
 David Howells wrote:
 > -static int v9fs_vfs_writepage_locked(struct page *page) > +static int
 v9fs_vfs_write_folio_locked(struct folio *folio) > { > - struct [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1miHCY-00026w-AU
Subject: Re: [V9fs-developer] [PATCH v3 5/6] netfs, 9p, afs, ceph: Use folios
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org, linux-mm@kvack.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-cachefs@redhat.com, Marc Dionne <marc.dionne@auristor.com>,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 linux-afs@lists.infradead.org, devel@lists.orangefs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Nov 02, 2021 at 08:31:14AM +0000, David Howells wrote:
> -static int v9fs_vfs_writepage_locked(struct page *page)
> +static int v9fs_vfs_write_folio_locked(struct folio *folio)
>  {
> -	struct inode *inode = page->mapping->host;
> +	struct inode *inode = folio_inode(folio);
>  	struct v9fs_inode *v9inode = V9FS_I(inode);
> -	loff_t start = page_offset(page);
> +	loff_t start = folio_pos(folio);
>  	loff_t size = i_size_read(inode);
>  	struct iov_iter from;
> -	int err, len;
> +	size_t gran = folio_size(folio), len;
> +	int err;
>  
> -	if (page->index == size >> PAGE_SHIFT)
> -		len = size & ~PAGE_MASK;
> -	else
> -		len = PAGE_SIZE;
> +	len = (size >= start + gran) ? gran : size - start;

This seems like the most complicated way to write this ... how about:

        size_t len = min_t(loff_t, isize - start, folio_size(folio));

> @@ -322,23 +322,24 @@ static void afs_req_issue_op(struct netfs_read_subrequest *subreq)
>  
>  static int afs_symlink_readpage(struct file *file, struct page *page)
>  {
> -	struct afs_vnode *vnode = AFS_FS_I(page->mapping->host);
> +	struct afs_vnode *vnode = AFS_FS_I(page_mapping(page)->host);

How does swap end up calling readpage on a symlink?

>  	ret = afs_fetch_data(fsreq->vnode, fsreq);
> -	page_endio(page, false, ret);
> +	page_endio(&folio->page, false, ret);

We need a folio_endio() ...

>  int afs_write_end(struct file *file, struct address_space *mapping,
>  		  loff_t pos, unsigned len, unsigned copied,
> -		  struct page *page, void *fsdata)
> +		  struct page *subpage, void *fsdata)
>  {
> +	struct folio *folio = page_folio(subpage);
>  	struct afs_vnode *vnode = AFS_FS_I(file_inode(file));
>  	unsigned long priv;
> -	unsigned int f, from = pos & (thp_size(page) - 1);
> +	unsigned int f, from = pos & (folio_size(folio) - 1);

Isn't that:

	size_t from = offset_in_folio(folio, pos);

(not that i think we're getting folios larger than 4GB any time soon,
but it'd be nice to be prepared for it)



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
