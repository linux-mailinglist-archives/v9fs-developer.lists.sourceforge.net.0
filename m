Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 98205655214
	for <lists+v9fs-developer@lfdr.de>; Fri, 23 Dec 2022 16:31:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p8k1c-000357-Ld;
	Fri, 23 Dec 2022 15:31:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+a36cbb7ae26730e9169d+7061+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1p8k1a-000350-Hm for v9fs-developer@lists.sourceforge.net;
 Fri, 23 Dec 2022 15:31:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YI+GETaE07zfIF6gTr93yZkoaqmkXGRyTSkPLa22IzA=; b=RHNV7QKd+lAoIvI28C7fpWmSD/
 ZlXfL0P44xU252uPTH47FHAoZK8c1nRuCeA/BRqEsa/0xqegEjZ1DlJ8n515PWRRbKubl8hdGkKDL
 ImLPztgD1Buy7M5w1O3b5TZqNIm8UW4uOHSxU/H6iPc3XZrupV3WgOxVkSCpswAKjpQY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YI+GETaE07zfIF6gTr93yZkoaqmkXGRyTSkPLa22IzA=; b=XGyxPB6SzQeU7P9odQ+pkatMNm
 TBtsoxxF4G+4zqQIGTe5xBfFEdVyILixvgplk08pfwknWD5tNAR3qKI4bKI4j9lHCaHXddrDQJ0+b
 z8kHhuLP6CNaEgutG8mUdrWLSCcH3pKTq0Je9zE56WQ6MK6uTAej8ZWJFs2Brjq44Yj4=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p8k1Y-009AkL-GU for v9fs-developer@lists.sourceforge.net;
 Fri, 23 Dec 2022 15:31:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=YI+GETaE07zfIF6gTr93yZkoaqmkXGRyTSkPLa22IzA=; b=RkLgtlP2zs+0grtCP2XKKuFJes
 6FHjSru80hSAyAYCWjR4giWwoV3DaU3XpMF7/3HZDUa+E/kozrd+x6VmAXg4TRMKJHW9b8wzSyfeD
 VokI0tlui9x8PQhh88Z82EqORo/ZAaFcoi8Gbx6S9ZrNjmqThuHWTTIRq3+YEjgq3IX5yINDVvjt+
 e0+/qxQDLcU/llLFjIUrhW0P/9m/nHcrhbkOptvrE3r4S9ZgmuFyMLR/rPv50gmRKgcXjautu9IC5
 U8MyiLTneJokeOtEKvUEFCZUMIUmLTbzJVU1SPbmDcoK0FIf2BAPGpTW1uoenfctyu+YHc+9jx57b
 guycEkxA==;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1p8k0x-009SnO-0o; Fri, 23 Dec 2022 15:31:15 +0000
Date: Fri, 23 Dec 2022 07:31:14 -0800
From: Christoph Hellwig <hch@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <Y6XJwvjKyTgRIiI3@infradead.org>
References: <167172131368.2334525.8569808925687731937.stgit@warthog.procyon.org.uk>
 <167172134962.2334525.570622889806603086.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <167172134962.2334525.570622889806603086.stgit@warthog.procyon.org.uk>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Dec 22, 2022 at 03:02:29PM +0000,
 David Howells wrote:
 > Make filemap_release_folio() return one of three values: > > (0)
 FILEMAP_CANT_RELEASE_FOLIO
 > > Couldn't release the folio's private da [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1p8k1Y-009AkL-GU
Subject: Re: [V9fs-developer] [PATCH v5 3/3] mm: Make
 filemap_release_folio() better inform shrink_folio_list()
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
 Jeff Layton <jlayton@kernel.org>, Dave Wysochanski <dwysocha@redhat.com>,
 ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, linux-mm@kvack.org,
 linux-erofs@lists.ozlabs.org, linux-cachefs@redhat.com,
 linux-ext4@lists.ozlabs.org, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Dec 22, 2022 at 03:02:29PM +0000, David Howells wrote:
> Make filemap_release_folio() return one of three values:
> 
>  (0) FILEMAP_CANT_RELEASE_FOLIO
> 
>      Couldn't release the folio's private data, so the folio can't itself
>      be released.
> 
>  (1) FILEMAP_RELEASED_FOLIO
> 
>      The private data on the folio was released and the folio can be
>      released.
> 
>  (2) FILEMAP_FOLIO_HAD_NO_PRIVATE

These names read really odd, due to the different placementments
of FOLIO, the present vs past tense and the fact that 2 also released
the folio, and the reliance of callers that one value of an enum
must be 0, while no unprecedented, is a bit ugly.

But do we even need them?  What abut just open coding
filemap_release_folio (which is a mostly trivial function) in
shrink_folio_list, which is the only place that cares?

	if (folio_has_private(folio) && folio_needs_release(folio)) {
		if (folio_test_writeback(folio))
			goto activate_locked;

		if (mapping && mapping->a_ops->release_folio) {
			if (!mapping->a_ops->release_folio(folio, gfp))
				goto activate_locked;
		} else {
			if (!try_to_free_buffers(folio))
				goto activate_locked;
		}

		if (!mapping && folio_ref_count(folio) == 1) {
			...

alternatively just keep using filemap_release_folio and just add the
folio_needs_release in the first branch.  That duplicates the test,
but makes the change a one-liner.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
