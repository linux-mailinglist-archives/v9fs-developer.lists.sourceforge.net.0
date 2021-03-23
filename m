Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5536034615E
	for <lists+v9fs-developer@lfdr.de>; Tue, 23 Mar 2021 15:20:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lOhth-0007Zi-Ub; Tue, 23 Mar 2021 14:20:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1lOhq2-0007F5-Ft
 for v9fs-developer@lists.sourceforge.net; Tue, 23 Mar 2021 14:16:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ecY1CzrvE1DPEu+sD2G/cZP9TNuYSjbK9W1EHfXolDw=; b=Pu8yi4uJVtNm8RMBrVchwUFljd
 YGw9RxiPW8e+CFS4CV0YSuGmueBhsl1EIYDDVnzYl47lRyWtYdhKrKgvpVD7oi+xLOr9NIpc2hDbG
 S0Mc4iDdro3DfL6yRapm93aWr889Yg+PAzttNV4/9CS2rkdOwm37XHKARnxWiYBvxC4Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ecY1CzrvE1DPEu+sD2G/cZP9TNuYSjbK9W1EHfXolDw=; b=lmgLCrradcEfr/C+cLUm8m29TJ
 brEkraYHaufQSyXMyGECtVBrw4IPC5cf7i1h2gScr7LKI3KTWUExHRSxjGGazJuoDGWbE+GHc06i2
 5KwMqrmRUWE1MCGG+JrZz2WiTT9NPnRwIjhKjy867f5wtIVsLwy6RmoQqVM2WTObTJko=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lOhpw-001HR7-Vv
 for v9fs-developer@lists.sourceforge.net; Tue, 23 Mar 2021 14:16:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1616509002;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ecY1CzrvE1DPEu+sD2G/cZP9TNuYSjbK9W1EHfXolDw=;
 b=BVOGP9pNLZhcQOiZZpsVF7aEZn/naYFjYpnS9lM1pMd5LJpYZz50Hs2mZwmlnYFZ4L/hiy
 h9zMAySPQzJ73bX0ba2hnxgaegt1rMSlk9etFnAtDsXQUas9HWxquBF1IzEO9xgZmfz5x8
 /Dh/JPX3DvrZyJT2ElojWwh28nBuo+E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-205-exvroquTOx2NCDRTMVZpiw-1; Tue, 23 Mar 2021 10:16:39 -0400
X-MC-Unique: exvroquTOx2NCDRTMVZpiw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0C2855B365;
 Tue, 23 Mar 2021 14:16:36 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-58.rdu2.redhat.com
 [10.10.112.58])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E189C10016FD;
 Tue, 23 Mar 2021 14:16:28 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20210323135116.GF1719932@casper.infradead.org>
References: <20210323135116.GF1719932@casper.infradead.org>
 <1885296.1616410586@warthog.procyon.org.uk>
 <20210321105309.GG3420@casper.infradead.org>
 <161539526152.286939.8589700175877370401.stgit@warthog.procyon.org.uk>
 <161539528910.286939.1252328699383291173.stgit@warthog.procyon.org.uk>
 <2499407.1616505440@warthog.procyon.org.uk>
To: Matthew Wilcox <willy@infradead.org>
MIME-Version: 1.0
Content-ID: <2503809.1616508988.1@warthog.procyon.org.uk>
Date: Tue, 23 Mar 2021 14:16:28 +0000
Message-ID: <2503810.1616508988@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lOhpw-001HR7-Vv
Subject: Re: [V9fs-developer] [PATCH v4 02/28] mm: Add an unlock function
 for PG_private_2/PG_fscache
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
Cc: David Wysochanski <dwysocha@redhat.com>, Steve French <sfrench@samba.org>,
 linux-nfs@vger.kernel.org, linux-afs@lists.infradead.org,
 Jeff Layton <jlayton@redhat.com>, linux-cifs@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 dhowells@redhat.com, linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Matthew Wilcox <willy@infradead.org> wrote:

> On Tue, Mar 23, 2021 at 01:17:20PM +0000, David Howells wrote:
> > +++ b/fs/afs/write.c
> > @@ -846,7 +846,7 @@ vm_fault_t afs_page_mkwrite(struct vm_fault *vmf)
> >  	 */
> >  #ifdef CONFIG_AFS_FSCACHE
> >  	if (PageFsCache(page) &&
> > -	    wait_on_page_bit_killable(page, PG_fscache) < 0)
> > +	    wait_on_page_fscache_killable(page) < 0)
> >  		return VM_FAULT_RETRY;
> >  #endif
> >  
> > @@ -861,7 +861,8 @@ vm_fault_t afs_page_mkwrite(struct vm_fault *vmf)
> >  	 * details the portion of the page we need to write back and we might
> >  	 * need to redirty the page if there's a problem.
> >  	 */
> > -	wait_on_page_writeback(page);
> > +	if (wait_on_page_writeback_killable(page) < 0)
> > +		return VM_FAULT_RETRY | VM_FAULT_LOCKED;
> 
> You forgot to unlock the page.

Do I need to?  Doesn't VM_FAULT_LOCKED indicate that to the caller?  Or is it
impermissible to do it like that?

> Also, if you're waiting killably here, do you need to wait before you get
> the page lock?  Ditto for waiting on fscache -- do you want to do that
> before or after you get the page lock?

I'm waiting both before and after.  If I wait before, write() can go and
trample over the page between PG_writeback/PG_fscache being cleared and us
getting the lock here.  Probably I should only be waiting after locking the
page.

> Also, I never quite understood why you needed to wait for fscache
> writes to finish before allowing the page to be dirtied.  Is this a
> wait_for_stable_page() kind of situation, where the cache might be
> calculating a checksum on it?  Because as far as I can tell, once the
> page is dirty in RAM, the contents of the on-disk cache are irrelevant ...
> unless they're part of a RAID 5 checksum kind of situation.

Um.  I do want to add disconnected operation in the future and cache
encryption, but, as things currently stand, it isn't necessary because the
cache object is marked "in use" and will be discarded on rebinding after a
power loss or crash if it's still marked when it's opened again.

Also, the thought has occurred to me that I can make use of reflink copy to
handle the caching of local modifications to cached files, in which case I'd
rather have a clean copy to link from.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
