Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6C51CB1F2
	for <lists+v9fs-developer@lfdr.de>; Fri,  8 May 2020 16:40:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jX4Aa-0004tY-Ms; Fri, 08 May 2020 14:40:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jX4AZ-0004tD-2G
 for v9fs-developer@lists.sourceforge.net; Fri, 08 May 2020 14:40:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:References:In-Reply-To:From:
 Sender:Reply-To:To:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hEKOJFeBe0XhjAsTACvee48OxZfeBzXxgNIQnHiBGQA=; b=eFVSESJipUX8pwG3Uasuj/Iat6
 CrS2MPzZJwv8qr5inZqOz3VVMlDTM4SlGfnIpgiF2exO/0t0cgbfmH3mA00qBOi4Jb6jz+Y3fvfr3
 IIg5VaRpNx51wj5aaOJ4wLr0MUMmztDDRm7NW01JX2rshOFY+OQJ1nLY0phcKF+YYIac=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:References:In-Reply-To:From:Sender:Reply-To:To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hEKOJFeBe0XhjAsTACvee48OxZfeBzXxgNIQnHiBGQA=; b=ic9IBY9FttVq62iZR+4PgyYib5
 ozF3RyQDnf8b5KnirGNoO7Hsy4IyrW9UbtSM5YQxem+ACGf/RpTlBS3sd7Rat44nKBqlOQ9nU20t3
 elCI7pSDOtMB9DpiKkEJmGtZEN/Rpt72Rd+LiKGIYtJ+M7Jz3z8CGYhNvSvjgymese2w=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jX4AX-00Ceep-3F
 for v9fs-developer@lists.sourceforge.net; Fri, 08 May 2020 14:40:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588948798;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hEKOJFeBe0XhjAsTACvee48OxZfeBzXxgNIQnHiBGQA=;
 b=Gl4lNuj7Ki9pavwxpT7H1K3PsTz9f9XvJI3PAsJqmdFwhxlzQJrrVkeWprMV/N67y4bQ8j
 Mt/W21+61NlFx5L5A01EcezdhZ2E+zJ2DzWuBm8tzlAeJx0aawbnTxdzJccdHHT+QhZrJE
 1DXe4LFBr1KhzSPKr06oPKYBS4DYP84=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-204-uSDcl7BqPWCt8KdWQCXcuA-1; Fri, 08 May 2020 10:39:54 -0400
X-MC-Unique: uSDcl7BqPWCt8KdWQCXcuA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2D86B464;
 Fri,  8 May 2020 14:39:52 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-118-225.rdu2.redhat.com
 [10.10.118.225])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 42DCE707A6;
 Fri,  8 May 2020 14:39:49 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <713141.1588775072@warthog.procyon.org.uk>
References: <713141.1588775072@warthog.procyon.org.uk>
 <20200506110942.GL16070@bombadil.infradead.org>
 <20200505115946.GF16070@bombadil.infradead.org>
 <158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk>
 <158861253957.340223.7465334678444521655.stgit@warthog.procyon.org.uk>
 <683739.1588751878@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-ID: <1040570.1588948788.1@warthog.procyon.org.uk>
Date: Fri, 08 May 2020 15:39:48 +0100
Message-ID: <1040571.1588948788@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.2 MISSING_HEADERS        Missing To: header
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.8 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jX4AX-00Ceep-3F
Subject: Re: [V9fs-developer] [RFC PATCH 54/61] afs: Wait on PG_fscache
 before modifying/releasing a page
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
Cc: Steve French <sfrench@samba.org>, linux-nfs@vger.kernel.org,
 Jeff Layton <jlayton@redhat.com>, linux-cifs@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

David Howells <dhowells@redhat.com> wrote:

> ITER_MAPPING relies on the mapping to maintain the pointers to the pages so
> that it can find them rather than being like ITER_BVEC where there's a
> separate list.
> 
> Truncate removes the pages from the mapping - at which point ITER_MAPPING can
> no longer find them.

It looks like ITER_MAPPING is fine with truncate, provided the invalidation
waits for the iterator to complete first:

	int truncate_inode_page(struct address_space *mapping, struct page *page)
	{
		VM_BUG_ON_PAGE(PageTail(page), page);

		if (page->mapping != mapping)
			return -EIO;

		truncate_cleanup_page(mapping, page);
		delete_from_page_cache(page);
		return 0;
	}

In which case, ->invalidatepage() needs to wait for PG_fscache.

Similarly, it looks like ->releasepage() is fine, provided it waits for
PG_fscache also.

If I have to use ITER_BVEC, what's the advisability of using vmalloc() to
allocate the bio_vec array for a transient op?  Such an array can reference up
to 1MiB on a 64-bit machine with 4KiB non-compound pages if it only allocates
up to a single page.  I'm wondering what the teardown cost is, though, if all
the corresponding PTEs have to be erased from all CPUs.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
