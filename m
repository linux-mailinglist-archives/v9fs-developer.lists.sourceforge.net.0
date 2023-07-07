Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E154774B679
	for <lists+v9fs-developer@lfdr.de>; Fri,  7 Jul 2023 20:40:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1qHqNk-00067z-El;
	Fri, 07 Jul 2023 18:40:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qHqNi-00067p-JY
 for v9fs-developer@lists.sourceforge.net;
 Fri, 07 Jul 2023 18:40:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+PlsjkygUy/NaxzRVXPs1XdCvvqCmcP1CuzrF3FYi78=; b=I6Rv3jpa/Qi3QzZuCJgdKc2Y2x
 hr/wVGMjW0L1OwQbh7/IPhhYcCx+D1dhaP8pCiNv6OYlukg6gClRpXIvsbRuQr30hDLu6kxaCq7zS
 5VKk4RX6WnWOgQ3mpO13Mh9cIeyPM2gdl/lGUpdi/i/1r1ImYK2F3uIilU1W+VvnouFM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+PlsjkygUy/NaxzRVXPs1XdCvvqCmcP1CuzrF3FYi78=; b=lGQdK0TDNT16CqqbeqhBssIQJ6
 FVGfokv8K94zqOMZdzL/GvOlemgZSD5tK77N3NeZk5cy69L4/kV6YZIM3IifsUUPeTKPD6lVvpWoQ
 GAkRsYp8R4ldtop8gw3xrzLYEPeoYdlD4RnKV9Oy/DJdcQo9/0KKC8xDoXOV0wszAlsQ=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qHqNi-000roB-2Q for v9fs-developer@lists.sourceforge.net;
 Fri, 07 Jul 2023 18:40:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=+PlsjkygUy/NaxzRVXPs1XdCvvqCmcP1CuzrF3FYi78=; b=N9zitiD9uhOT4xbkk5LyzIKHYX
 oMrbk08jA82Cz40fcP3zliWq/SUVTzVrGkNTbfI64T5Pq/aGZg83/qJ31NjmTNPAQbW9ihmPy+4Bz
 NDHN7KsjjXDoZXpNlaTDsw0Ng6OxNfS6riYufmFDduqttjy1zl4EUtSjenPwizBzCgiZ4scKn3AvY
 RDaCdpBbV5FKlXZRJICebIvzPv59Ij8Y3A1iB2yXsA/gwIxEiD136/HwOCEFl/Y0dlnzG4D6J47XA
 bVwW12r4UqbiAs7v/ppdzBM31FENe0bllXM8Oze0HAKyWzwax1MzW5QFef3oJozoBS6poHHz1PNcd
 f5aQg21g==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qHqNQ-00CGGh-H0; Fri, 07 Jul 2023 18:40:20 +0000
Date: Fri, 7 Jul 2023 19:40:20 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Hyeonggon Yoo <42.hyeyoo@gmail.com>
Message-ID: <ZKhcFE1JpT6F2ez3@casper.infradead.org>
References: <20230628104852.3391651-1-dhowells@redhat.com>
 <20230628104852.3391651-3-dhowells@redhat.com>
 <ZKg/J3OG3kQ9ynSO@fedora>
 <CAB=+i9Qbi7+o90Cd_ecd1TeaAYnWPcO-gNp7kzc95Pxecy0XTw@mail.gmail.com>
 <CALF+zO=nGdoxcT-ya3aaUCBi-4iKPo3kZyzcWYCKMCf4n2wVbA@mail.gmail.com>
 <ZKhZHg6LSGnvryIe@fedora>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZKhZHg6LSGnvryIe@fedora>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Jul 08, 2023 at 03:27:42AM +0900,
 Hyeonggon Yoo wrote:
 > Hmm, was it UAF because it references wrong field ->mapping, > instead
 of swapper address space? Ooh, I know this one! When a folio is in use as
 an anonymous page, ->mapping has the bottom two bits set to 01b. The rest
 of the pointer is actually a pointer to an anon_vma. It's entirely plausible
 that an anon page might [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qHqNi-000roB-2Q
Subject: Re: [V9fs-developer] [BUG mm-unstable] BUG: KASAN: use-after-free
 in shrink_folio_list+0x9f4/0x1ae0
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: David Howells <dhowells@redhat.com>, linux-mm@kvack.org,
 linux-afs@lists.infradead.org, Shyam Prasad N <nspmangalore@gmail.com>,
 linux-cifs@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-cachefs@redhat.com,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 linux-ext4@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-nfs@vger.kernel.org, Rohith Surabattula <rohiths.msft@gmail.com>,
 Daire Byrne <daire.byrne@gmail.com>, David Wysochanski <dwysocha@redhat.com>,
 Jeff Layton <jlayton@kernel.org>, Steve French <sfrench@samba.org>,
 linux-fsdevel@vger.kernel.org, linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sat, Jul 08, 2023 at 03:27:42AM +0900, Hyeonggon Yoo wrote:
> Hmm, was it UAF because it references wrong field ->mapping,
> instead of swapper address space?

Ooh, I know this one!

When a folio is in use as an anonymous page, ->mapping has the bottom
two bits set to 01b.  The rest of the pointer is actually a pointer
to an anon_vma.  It's entirely plausible that an anon page might have
had its anon_vma freed by the time the folio is on the inactive list,
and on its way to being recycled (eg it was unmapped).  I'm not
terribly familiar with the lifetime rules of the anon_vma, but I doubt
that a folio still being in RAM would pin it if it has been unmapped.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
