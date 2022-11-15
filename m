Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 77CB4628E88
	for <lists+v9fs-developer@lfdr.de>; Tue, 15 Nov 2022 01:41:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ouk0w-0008NY-1v;
	Tue, 15 Nov 2022 00:41:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dhowells@redhat.com>) id 1ouk0u-0008NO-FO
 for v9fs-developer@lists.sourceforge.net;
 Tue, 15 Nov 2022 00:41:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kjYfp2hW5B/t44pYPHObfllFdrU8NC2GUrC2Ho+QsFY=; b=E8cwlsSE+kLV8nC00zdy1+0NSn
 Zr+oMXoT0f4+uHqBNNbDP5gPwrHztY9TGc51Q9+x+11DRw4eEpAiLurJSdmRy1XLkQIhFA7+BwPXQ
 Tf5LiSlCnH/wF4STNuPzum6gAc/nzFomL7JLG8ydBheDBSifCVMTEur9cKVUSsKleXWc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kjYfp2hW5B/t44pYPHObfllFdrU8NC2GUrC2Ho+QsFY=; b=GOK468d+e5RYjGfgOM0Nxmjnq5
 g8m4TqE75nDhQqaq7viUtw8L/+mieh31vcaEdtlQXitodlqK7m1Hh50q241fPqjvU6EFF3y/B71jY
 PixiYrjrFyGdeLhHzUXyeZNw/pFeqQdqVnyv2YoHRAq4piH69dLrn/SLAdS0LLl998LQ=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ouk0s-0007bO-LR for v9fs-developer@lists.sourceforge.net;
 Tue, 15 Nov 2022 00:41:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1668472871;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kjYfp2hW5B/t44pYPHObfllFdrU8NC2GUrC2Ho+QsFY=;
 b=eh7bihopSjCNIX/RQTaEoXB9zbLbaRvgm8vj3Wj+CswdxLvAE83rWMjfj+09nG71xc/VmY
 0NDGAmzfXh7dKjqBi10rVF7VynWxcMFT5Y6eHpWVNVO8osjEVYanNqTKNDl74QpfqZQaou
 +LRvfNT63d/bVehoeGc7KmVHfWXtU40=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-177-1FDKG86uNcGiCRr5tfa-9Q-1; Mon, 14 Nov 2022 19:41:08 -0500
X-MC-Unique: 1FDKG86uNcGiCRr5tfa-9Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 791EC3814587;
 Tue, 15 Nov 2022 00:41:07 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.24])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 75D27400DFD4;
 Tue, 15 Nov 2022 00:41:05 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <Y3Lbul7FZncNVwVZ@codewreck.org>
References: <Y3Lbul7FZncNVwVZ@codewreck.org>
 <166844174069.1124521.10890506360974169994.stgit@warthog.procyon.org.uk>
To: Dominique Martinet <asmadeus@codewreck.org>
MIME-Version: 1.0
Content-ID: <1457984.1668472862.1@warthog.procyon.org.uk>
Date: Tue, 15 Nov 2022 00:41:02 +0000
Message-ID: <1457985.1668472862@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Dominique Martinet <asmadeus@codewreck.org> wrote: > any harm
 in setting this if netfs isn't enabled? > (just asking because you checked
 in fs/9p/cache.c above) Well, it forces a call to ->release_folio() every
 time a folio is released, if set, rather than just if PG_private/PG_private_2
 is set. Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ouk0s-0007bO-LR
Subject: Re: [V9fs-developer] [RFC PATCH v2] mm, netfs,
 fscache: Stop read optimisation when folio removed from pagecache
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
 Rohith Surabattula <rohiths.msft@gmail.com>, dwysocha@redhat.com,
 ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org, willy@infradead.org,
 dhowells@redhat.com, linux-mm@kvack.org, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dominique Martinet <asmadeus@codewreck.org> wrote:

> any harm in setting this if netfs isn't enabled?
> (just asking because you checked in fs/9p/cache.c above)

Well, it forces a call to ->release_folio() every time a folio is released, if
set, rather than just if PG_private/PG_private_2 is set.

> > +static inline void mapping_clear_release_always(struct address_space *mapping)
> > +{
> > +	set_bit(AS_RELEASE_ALWAYS, &mapping->flags);
> 
> clear_bit certainly?

Bah.  Yes.

> > -	if (folio_has_private(folio) && !filemap_release_folio(folio, 0))
> > +	if (!filemap_release_folio(folio, 0))
> 
> should this (and all others) check for folio_needs_release instead of has_private?
> filemap_release_folio doesn't check as far as I can see, but perhaps
> it's already fast and noop for another reason I didn't see.

Willy suggested merging the checks from folio_has_private() into
filemap_release_folio():

	https://lore.kernel.org/r/Yk9V/03wgdYi65Lb@casper.infradead.org/

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
