Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB14660FCC
	for <lists+v9fs-developer@lfdr.de>; Sat,  7 Jan 2023 16:07:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pEAn4-0001Bm-JK;
	Sat, 07 Jan 2023 15:07:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1pEAmg-0001BB-QH
 for v9fs-developer@lists.sourceforge.net;
 Sat, 07 Jan 2023 15:07:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FSFM4yR4blaFSxBzfnWN4hnvh0AQgFE6Wy1RI039p5g=; b=Xkvy9fwnJEAh9X3/5GEQHubZ6Q
 /gijZVoKPU/WxbyYG2jpKMAoUjBpQdi6CJrog5JcCK1KYka/0cdZQGCwWSumue2oP6ufXnd4RtWnP
 Ktu/8rFkRpmPd+oBOAnAgRtEDZfPo1J4kkqkEsA98eNfF3q3a8+svv6z2ZULj6Zes7G8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FSFM4yR4blaFSxBzfnWN4hnvh0AQgFE6Wy1RI039p5g=; b=i4mNbU6JoKvjn+IHAAMsA4r2C8
 K7sdWMXlsuJTKvTYcGdaYhkmR6u8nCls1YnQJN+/BDmexPt2ecOvW8crJZDKPTTbH2nBgQOUj9rA5
 +hEpQPVrD+AfLnzVngc6e+LlwsQQfxjNCOZwMS/APatHJI/mXs+3yox4M4AiWGje01Wc=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pEAmR-0007Em-TT for v9fs-developer@lists.sourceforge.net;
 Sat, 07 Jan 2023 15:06:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=FSFM4yR4blaFSxBzfnWN4hnvh0AQgFE6Wy1RI039p5g=; b=jMzef1yLFSyGPSDvT0zTsJnJLd
 jVFKm63WTul1j9a2Hixsj029wDInokmlFGWT0TUL4M6pxQJQELy5UHFflzNSXG4BQejzDN/DM8CfU
 JAGbwFHAr3VVnjFLBqM51AwLMSZPZOiup1A2i2YYOnmsvC5JpJYhHYEFn/bgaIigNxXwgmMhowtMO
 cKK4m2y7lDCYmZW5V55/9UZg+8eHRTTSkq4lPD7dVYjotH0nmZZDQCcHoYsIW+taaamRAIH/z3Rz0
 dw5IuX/yZZPQAmSfFWpEoS+RnfURgU1PHQ1mOOY8hUdreXoSf7vnD6npmHxNgF0f7Gz36dhMMwTKP
 v01R9DGA==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1pEAly-000dbw-DB; Sat, 07 Jan 2023 15:06:14 +0000
Date: Sat, 7 Jan 2023 15:06:14 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Christoph Hellwig <hch@infradead.org>
Message-ID: <Y7mKZj/RnD2aW5jU@casper.infradead.org>
References: <167172131368.2334525.8569808925687731937.stgit@warthog.procyon.org.uk>
 <167172134962.2334525.570622889806603086.stgit@warthog.procyon.org.uk>
 <Y6XJwvjKyTgRIiI3@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y6XJwvjKyTgRIiI3@infradead.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Dec 23, 2022 at 07:31:14AM -0800, Christoph Hellwig
 wrote: > On Thu, Dec 22, 2022 at 03:02:29PM +0000, David Howells wrote: >
 > Make filemap_release_folio() return one of three values: > > > > [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1pEAmR-0007Em-TT
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
Cc: Shyam Prasad N <nspmangalore@gmail.com>, Steve French <sfrench@samba.org>,
 linux-nfs@vger.kernel.org, linux-cifs@vger.kernel.org,
 Rohith Surabattula <rohiths.msft@gmail.com>, Jeff Layton <jlayton@kernel.org>,
 Dave Wysochanski <dwysocha@redhat.com>, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-erofs@lists.ozlabs.org,
 linux-afs@lists.infradead.org, David Howells <dhowells@redhat.com>,
 linux-mm@kvack.org, linux-cachefs@redhat.com, linux-ext4@lists.ozlabs.org,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, Dec 23, 2022 at 07:31:14AM -0800, Christoph Hellwig wrote:
> On Thu, Dec 22, 2022 at 03:02:29PM +0000, David Howells wrote:
> > Make filemap_release_folio() return one of three values:
> > 
> >  (0) FILEMAP_CANT_RELEASE_FOLIO
> > 
> >      Couldn't release the folio's private data, so the folio can't itself
> >      be released.
> > 
> >  (1) FILEMAP_RELEASED_FOLIO
> > 
> >      The private data on the folio was released and the folio can be
> >      released.
> > 
> >  (2) FILEMAP_FOLIO_HAD_NO_PRIVATE
> 
> These names read really odd, due to the different placementments
> of FOLIO, the present vs past tense and the fact that 2 also released
> the folio, and the reliance of callers that one value of an enum
> must be 0, while no unprecedented, is a bit ugly.

Agreed.  The thing is that it's not the filemap that's being released,
it's the folio.  So these should be:

	FOLIO_RELEASE_SUCCESS
	FOLIO_RELEASE_FAILED
	FOLIO_RELEASE_NO_PRIVATE

... but of course, NO_PRIVATE is also a success.  So it's a really weird
thing to be reporting.  I'm with you on the latter half of this email:

> But do we even need them?  What abut just open coding
> filemap_release_folio (which is a mostly trivial function) in
> shrink_folio_list, which is the only place that cares?
> 
> 	if (folio_has_private(folio) && folio_needs_release(folio)) {
> 		if (folio_test_writeback(folio))
> 			goto activate_locked;
> 
> 		if (mapping && mapping->a_ops->release_folio) {
> 			if (!mapping->a_ops->release_folio(folio, gfp))
> 				goto activate_locked;
> 		} else {
> 			if (!try_to_free_buffers(folio))
> 				goto activate_locked;
> 		}
> 
> 		if (!mapping && folio_ref_count(folio) == 1) {
> 			...
> 
> alternatively just keep using filemap_release_folio and just add the
> folio_needs_release in the first branch.  That duplicates the test,
> but makes the change a one-liner.

Or just drop patch 3 entirely?


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
