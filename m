Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC0F3F6028
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Aug 2021 16:22:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mIXJs-0003cf-I9; Tue, 24 Aug 2021 14:22:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+f96701cc9b95d8800a83+6575+infradead.org+hch@casper.srs.infradead.org>)
 id 1mIXJr-0003cO-9j
 for v9fs-developer@lists.sourceforge.net; Tue, 24 Aug 2021 14:22:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7Qeavk+n72XmX65Q91vlVjTwlWUzuXidYkHzRt9couI=; b=CvSSf0DosLjRZMwf3IcNEdad2V
 J9EZIWyKgSAlBmj3pMkEdBZUug+NiGH+zhqcWeNUw0zOgJJhB0vR0HKlrb5QsRqvPSmmUPzwB0j60
 x1m4zlwHwuU9ZKIX+pw/I5xPqMLUHxlN3mbOTnkIHid6PNYHMugFcVhJS8/0mU3cB0WY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7Qeavk+n72XmX65Q91vlVjTwlWUzuXidYkHzRt9couI=; b=JGthrNBRpANqPv/qtpi5+aLj7I
 KFY97fqDwk/6eJ9jM4D6aTSpXkB+EDtsFiTJi571SqSigLY2A/KeitBeZJyM9Swsv6pUjKcI2+Aad
 v9h5ZFaCpwmd9mBv7m1Y+oVIRuoMUQutymtm2CFitV5ryPPznzRVXDFQlY6KnwkcQFi8=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mIXJn-00GwyS-Gh
 for v9fs-developer@lists.sourceforge.net; Tue, 24 Aug 2021 14:22:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=7Qeavk+n72XmX65Q91vlVjTwlWUzuXidYkHzRt9couI=; b=VrrrM9enpqR3QYJRmgnZbZhOjF
 jbxwGVyosNxLkuA9AjGFTlX9dh0B4VIET9qX8Jd5n41ojPfirC/oNfviBF4DS0d5X70741+6n1Kil
 P61z2oDDgL4SAj/1Bsg7Mf/bgfVkhxxf7P7ybukIsyuntg1mvS67MAH059KCcQTkKc+bMbnRzVBrj
 CUpeP/Ex/uVAnn8USj+tB6I2khPQ/qmuKI2dSJ5ifL24D6cnXDAoAn4sRTQzMJUWK23U24bwCUlXM
 nvRXjR308EnDWd3ye5QqwuChCB8iFcmmqod5arY+ONkgSBx/DzoJLDFmdenFpY4A3Vh2fTDUxeFPN
 5P50Blpg==;
Received: from hch by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat
 Linux)) id 1mIXFf-00B9qj-F5; Tue, 24 Aug 2021 14:18:33 +0000
Date: Tue, 24 Aug 2021 15:18:07 +0100
From: Christoph Hellwig <hch@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <YST/n+gcppuwWCJx@infradead.org>
References: <162981147473.1901565.1455657509200944265.stgit@warthog.procyon.org.uk>
 <162981148752.1901565.3663780601682206026.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162981148752.1901565.3663780601682206026.stgit@warthog.procyon.org.uk>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Aug 24, 2021 at 02:24:47PM +0100,
 David Howells wrote:
 > + ret = afs_store_data(vnode, &iter, > + (loff_t)page->index * PAGE_SIZE
 + f, true);
 You probably want to use page_offset() here: ret = afs_store_data(vnode,
 &iter, page_offset(page) + f, true); 
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
X-Headers-End: 1mIXJn-00GwyS-Gh
Subject: Re: [V9fs-developer] [PATCH 1/6] afs: Fix afs_launder_page() to set
 correct start file position
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
 Jeffrey Altman <jaltman@auristor.com>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-mm@kvack.org,
 linux-cachefs@redhat.com, v9fs-developer@lists.sourceforge.net,
 linux-fsdevel@vger.kernel.org, ceph-devel@vger.kernel.org,
 Ilya Dryomov <idryomov@gmail.com>, linux-afs@lists.infradead.org,
 devel@lists.orangefs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Aug 24, 2021 at 02:24:47PM +0100, David Howells wrote:
> +		ret = afs_store_data(vnode, &iter,
> +				     (loff_t)page->index * PAGE_SIZE + f, true);

You probably want to use page_offset() here:

		ret = afs_store_data(vnode, &iter, page_offset(page) + f, true);



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
