Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9988A346BAE
	for <lists+v9fs-developer@lfdr.de>; Tue, 23 Mar 2021 23:06:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lOpAU-0004kg-DY; Tue, 23 Mar 2021 22:06:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lOpAT-0004kY-15
 for v9fs-developer@lists.sourceforge.net; Tue, 23 Mar 2021 22:06:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:References:In-Reply-To:From:
 Sender:Reply-To:To:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pRq3eZVbRV0oWPAPcRDv0Y/ExsjTvRldW+ZwtCTRY5g=; b=drpcqnKph617DSzifin6tZWHvi
 8oUpq41Gw8mzYwbinqRGoYCRnxKIs/XpEoF1/UteyFf9NbTTbS+EiNXIDK8Clt5hEx/O5FF9K9LHz
 /2/OHa46nrnunNCsCr42El9OaGicCdrwByUG9AACcrzPDqhLZtSoU6FdpnR249XrrY0c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:References:In-Reply-To:From:Sender:Reply-To:To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pRq3eZVbRV0oWPAPcRDv0Y/ExsjTvRldW+ZwtCTRY5g=; b=J6pTcJCan3zL89s6KYGEdwRUoM
 PfZl1LNpsu+HU5x3KHSgYxXsJU/GUM8x8nOksmucnm3Fyky6p8HpuXI8UGeZ2n8xRdBjAimtN3LbH
 cH1h50iaEZOGfI8iFIo28fg/EIjzEhxdiNMxMhv93LG9Rvcdxp8pCuBQK63UwdEj2g1w=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lOpAN-002p4p-4P
 for v9fs-developer@lists.sourceforge.net; Tue, 23 Mar 2021 22:06:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1616537176;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pRq3eZVbRV0oWPAPcRDv0Y/ExsjTvRldW+ZwtCTRY5g=;
 b=bMrzLOiZz3NlLrLm/cQOwK99hlD2jlUeUP7xiOdcFmgn8f11RAwYIZtY6kuC4VMesH+7hQ
 IQ3ViBQVU2KzjtABCIss6cWBI1OFKZIamOZfqmfqTGKNo5e6M9sA1hg6Z99yi2bInfixp+
 4CoLjmBEBp4wTkJ8pD0722stjCavkXQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-1-kYdx-kK4MaCmJMrG8tZ3eA-1; Tue, 23 Mar 2021 18:06:15 -0400
X-MC-Unique: kYdx-kK4MaCmJMrG8tZ3eA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F0FF7800D53;
 Tue, 23 Mar 2021 22:06:11 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-58.rdu2.redhat.com
 [10.10.112.58])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 28FFB50C0E;
 Tue, 23 Mar 2021 22:06:05 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <2503810.1616508988@warthog.procyon.org.uk>
References: <2503810.1616508988@warthog.procyon.org.uk>
 <20210323135116.GF1719932@casper.infradead.org>
 <1885296.1616410586@warthog.procyon.org.uk>
 <20210321105309.GG3420@casper.infradead.org>
 <161539526152.286939.8589700175877370401.stgit@warthog.procyon.org.uk>
 <161539528910.286939.1252328699383291173.stgit@warthog.procyon.org.uk>
 <2499407.1616505440@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-ID: <2769313.1616537164.1@warthog.procyon.org.uk>
Date: Tue, 23 Mar 2021 22:06:04 +0000
Message-ID: <2769314.1616537164@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.2 MISSING_HEADERS        Missing To: header
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lOpAN-002p4p-4P
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
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 Christoph Hellwig <hch@lst.de>, dhowells@redhat.com, linux-mm@kvack.org,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

David Howells <dhowells@redhat.com> wrote:

> > > -	wait_on_page_writeback(page);
> > > +	if (wait_on_page_writeback_killable(page) < 0)
> > > +		return VM_FAULT_RETRY | VM_FAULT_LOCKED;
> > 
> > You forgot to unlock the page.
> 
> Do I need to?  Doesn't VM_FAULT_LOCKED indicate that to the caller?  Or is it
> impermissible to do it like that?

Looks like, yes, I do need to.  VM_FAULT_LOCKED is ignored if RETRY is given.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
