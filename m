Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A003E660FD9
	for <lists+v9fs-developer@lfdr.de>; Sat,  7 Jan 2023 16:12:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pEAro-0003ST-C4;
	Sat, 07 Jan 2023 15:12:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1pEArn-0003S6-1u
 for v9fs-developer@lists.sourceforge.net;
 Sat, 07 Jan 2023 15:12:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cq3Tcm7OLVA1me+kKR9zka8dfFlwNGfvdQ54sCCOFy0=; b=UBcnjKtFMPmDzDTaCyK+E5jr5b
 g8xP6IiUn5cBzI3rSmHKEFgrgbLRLaspLb8T9K3LsXtE6+SmNVGFvdVtcTp9KNsZJqEJy48XgB9gt
 FMMcfvZzr4WnINbypQb0CCtGiZmgZAU7sudGRjPrZzlVTyQ5t8d1SGLNOA09abyUcDts=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cq3Tcm7OLVA1me+kKR9zka8dfFlwNGfvdQ54sCCOFy0=; b=Jv1B9g/J5fWVqpGuSY0FqH5p5E
 y8z71x+lbqKcG++hNu6JefITazEg/Aq3qxCevsIkgubFM76RDAycmS3iUGtzJ0twdJDZg+wC6dcpX
 wbUAXLRlYdXJDZY2PqEH1QWaxEotRe+sPAGfKVgo9esvkEgE1/vcr+jzc2rX8CfGIKG8=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pEArd-008pmE-J6 for v9fs-developer@lists.sourceforge.net;
 Sat, 07 Jan 2023 15:12:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=cq3Tcm7OLVA1me+kKR9zka8dfFlwNGfvdQ54sCCOFy0=; b=ZNxGrxfYZ18g+iYGTFB+S1ko54
 lj1sxWXhAn78Z3mSPVR2VNhutJKCAxFaz7EvlYN14xY1q6+NBT5BmqFVf/nJJRXx3rkyJLyzNsotg
 p2AncToaCGxm00OtMsKBilhhcwdZaLAT92+SGg+aiYltEWGvShClAy8z/ZR/bi7VI7vE5J+bt26Am
 gl2QLP2YD9kfgP/iz1ffl1HiLzGCokiMepgI+S3Woob+xpPYF/t/jYpqc9CydIc1SEn5K9QJfINJB
 3kqKLKrmueMObbikddZ9gvcsiGZattD6U4HvI2cIcSbuPAQJI15Mvcrjjs0mZKc3oACChoxW3lSC/
 5B9rSMTQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1pEArM-000dly-Pt; Sat, 07 Jan 2023 15:11:48 +0000
Date: Sat, 7 Jan 2023 15:11:48 +0000
From: Matthew Wilcox <willy@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <Y7mLtPpRz8boODVX@casper.infradead.org>
References: <167172131368.2334525.8569808925687731937.stgit@warthog.procyon.org.uk>
 <167172132272.2334525.13617516784050484518.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <167172132272.2334525.13617516784050484518.stgit@warthog.procyon.org.uk>
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Dec 22, 2022 at 03:02:02PM +0000,
 David Howells wrote:
 > Make filemap_release_folio() check folio_has_private(). Then, in most >
 cases, where a call to folio_has_private() is immediately follo [...] 
 Content analysis details:   (1.1 points, 6.0 required)
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
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1pEArd-008pmE-J6
Subject: Re: [V9fs-developer] [PATCH v5 1/3] mm: Merge
 folio_has_private()/filemap_release_folio() call pairs
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
Cc: linux-mm@kvack.org, Andreas Dilger <adilger.kernel@dilger.ca>,
 linux-afs@lists.infradead.org, Shyam Prasad N <nspmangalore@gmail.com>,
 linux-cifs@vger.kernel.org, linux-cachefs@redhat.com,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 linux-ext4@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-nfs@vger.kernel.org, Theodore Ts'o <tytso@mit.edu>,
 Rohith Surabattula <rohiths.msft@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Dave Wysochanski <dwysocha@redhat.com>, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Steve French <sfrench@samba.org>,
 linux-ext4@lists.ozlabs.org, linux-fsdevel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Dec 22, 2022 at 03:02:02PM +0000, David Howells wrote:
> Make filemap_release_folio() check folio_has_private().  Then, in most
> cases, where a call to folio_has_private() is immediately followed by a
> call to filemap_release_folio(), we can get rid of the test in the pair.
> 
> The same is done to page_has_private()/try_to_release_page() call pairs.

This line is now obsolete.

> There are a couple of sites in mm/vscan.c that this can't so easily be
> done.  In shrink_folio_list(), there are actually three cases (something
> different is done for incompletely invalidated buffers), but
> filemap_release_folio() elides two of them.
> 
> In shrink_active_list(), we don't have have the folio lock yet, so the
> check allows us to avoid locking the page unnecessarily.
> 
> A wrapper function to check if a folio needs release is provided for those
> places that still need to do it in the mm/ directory.  This will acquire
> additional parts to the condition in a future patch.
> 
> After this, the only remaining caller of folio_has_private() outside of mm/
> is a check in fuse.

But there are a few remaining places which check page_has_private().
I think they're all wrong and should be PagePrivate(), but I'll look
at them more next week.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
