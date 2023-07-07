Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1552E74B65D
	for <lists+v9fs-developer@lfdr.de>; Fri,  7 Jul 2023 20:33:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1qHqHF-0005ir-I9;
	Fri, 07 Jul 2023 18:33:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1qHqH5-0005iH-TW
 for v9fs-developer@lists.sourceforge.net;
 Fri, 07 Jul 2023 18:33:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EnPO7iYPqwnxTqwStZEfw5T07yWJQFIQid3g9b9XqJw=; b=eh1naup7uVvJgOAwhi9c5SdvLo
 3VPE3c+JY1apAQeX75t6c6f+z7zYoE8xFM8nNBTaq3O+urOGr3Uh4hYkEfMVwKSRT51hQ3WUAI/m1
 gCtPJg0aHLfb9v+pw8PXSiIoefTOGU2Wa2prmshqKBoRPFuWKg+lQ87rh6SCXzAd1Z3g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EnPO7iYPqwnxTqwStZEfw5T07yWJQFIQid3g9b9XqJw=; b=fNlOFR3wVYCsRHcroufxV0E6kk
 Mavpseo6DJGDmbmghOM9Ni5gTcpbhlwWY51PNahEkdPnRi8r3IYfXiwvKHBNU3fCKenQO6Vc/Q8k+
 eNcGc9LDYopQdUxMJHZpLrApHjCWfWRRv2ui6RyiIB6zJFjYQbEBMnX9Gie7SMIG9Gj4=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qHqH1-000rTS-KS for v9fs-developer@lists.sourceforge.net;
 Fri, 07 Jul 2023 18:33:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=EnPO7iYPqwnxTqwStZEfw5T07yWJQFIQid3g9b9XqJw=; b=hSZgYMr3UKHKYIY/VL4ipIs0vS
 61IBklPoCl4A108p1gsJG4vlTkCOJoen6cWDC43+6NTkr8YGNcmQcJs1O3p4OQtb1NXVR4LAls2Ng
 /p4TPNlO1XctYmGGMC+rkDVIiNqlriS/EFc8QPJBD4SL1Z2nsXdTYGKpye4UmT0WkXCONgtsxFIeV
 ZzegUWujwBx4r5ew4D2ZYlNPZ/o9jjAmGtG3ZcwrWDutua9YtWwESK4CTJ8bWQsA8XK+GJhZTgRVa
 CxK9+UPVL47g+ChIlgIr9kUvKuQXq0PFhjJDDTHlObVTxnMgijgaiIZJ6uLFDdPe7Ztq+0PZAnrFh
 +1A2zrEQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qHqGZ-00CFvk-6N; Fri, 07 Jul 2023 18:33:15 +0000
Date: Fri, 7 Jul 2023 19:33:15 +0100
From: Matthew Wilcox <willy@infradead.org>
To: David Wysochanski <dwysocha@redhat.com>
Message-ID: <ZKhaa7xn9aaZYicR@casper.infradead.org>
References: <20230628104852.3391651-1-dhowells@redhat.com>
 <20230628104852.3391651-3-dhowells@redhat.com>
 <ZKg/J3OG3kQ9ynSO@fedora>
 <CAB=+i9Qbi7+o90Cd_ecd1TeaAYnWPcO-gNp7kzc95Pxecy0XTw@mail.gmail.com>
 <CALF+zO=nGdoxcT-ya3aaUCBi-4iKPo3kZyzcWYCKMCf4n2wVbA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALF+zO=nGdoxcT-ya3aaUCBi-4iKPo3kZyzcWYCKMCf4n2wVbA@mail.gmail.com>
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jul 07, 2023 at 02:12:06PM -0400, David Wysochanski
 wrote: > I think myself / Daire Byrne may have already tracked this down
 and I > found a 1-liner that fixed a similar crash in his environme [...] 
 Content analysis details:   (1.1 points, 6.0 required)
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
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1qHqH1-000rTS-KS
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
 Hyeonggon Yoo <42.hyeyoo@gmail.com>, linux-afs@lists.infradead.org,
 Shyam Prasad N <nspmangalore@gmail.com>, linux-cifs@vger.kernel.org,
 Christoph Hellwig <hch@infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-cachefs@redhat.com,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 linux-ext4@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-nfs@vger.kernel.org, Rohith Surabattula <rohiths.msft@gmail.com>,
 Daire Byrne <daire.byrne@gmail.com>, Jeff Layton <jlayton@kernel.org>,
 Steve French <sfrench@samba.org>, linux-fsdevel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, Jul 07, 2023 at 02:12:06PM -0400, David Wysochanski wrote:
> I think myself / Daire Byrne may have already tracked this down and I
> found a 1-liner that fixed a similar crash in his environment.
> 
> Can you try this patch on top and let me know if it still crashes?
> https://github.com/DaveWysochanskiRH/kernel/commit/902c990e311120179fa5de99d68364b2947b79ec

Said one-liner:
-	struct address_space *mapping = folio->mapping;
+	struct address_space *mapping = folio_mapping(folio);

This will definitely fix the problem.  shrink_folio_list() sees
anonymous folios as well as file folios.

I wonder if we want to go a step further and introduce ...

+static inline bool __folio_needs_release(struct address_space *mapping,
+               struct folio *folio)
+{
+       return folio_has_private(folio) ||
+               (mapping && mapping_release_always(mapping));
+}
+
 /*
  * Return true if a folio needs ->release_folio() calling upon it.
  */
 static inline bool folio_needs_release(struct folio *folio)
 {
-       struct address_space *mapping = folio->mapping;
-
-       return folio_has_private(folio) ||
-               (mapping && mapping_release_always(mapping));
+       return __folio_needs_release(folio_mapping(folio), folio);
 }

since two of the three callers already have done the necessary dance to
get the mapping (and they're the two which happen regularly; the third
is an unusual situation).



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
