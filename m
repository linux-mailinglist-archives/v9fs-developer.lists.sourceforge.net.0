Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A255262948E
	for <lists+v9fs-developer@lfdr.de>; Tue, 15 Nov 2022 10:41:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ousRJ-0005GY-SU;
	Tue, 15 Nov 2022 09:41:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dhowells@redhat.com>) id 1ousRI-0005GR-3n
 for v9fs-developer@lists.sourceforge.net;
 Tue, 15 Nov 2022 09:41:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/jXxnn30oH1htkAEq4c8BajVXG6A/m7p7p9RvVlC1SI=; b=Pnkq2/KRr4zWUNkJvwDDwzil+u
 KxZRHkm+x+1b1syLhcQ/6nOkdQG0SVlqMngnN46wxQQ7jCTk3VAi+Ktu3C4nMM11FDxmfNcCPwEb2
 ZOxcTpVrchKxyp66SynYMfaNUDpffgdkKmw4mXJuWdBpByuz2S4xvjH/hTBrmMO+eiUY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/jXxnn30oH1htkAEq4c8BajVXG6A/m7p7p9RvVlC1SI=; b=OAvpQJx9qxY7+lUwnWoTMD8Ybe
 gJcuo2LiXaEQzmSUX8zHD+QcRXapEziix/MgL/xeEF9gVZgnX/gMZzsgNPLWP006ln5BWLPMbvNW+
 msiVmJOHhV3ORh5rQtHqjEwK9wVtUmSCI89mUIOi9R4IxBTd1Lw4YK0J4RNOcdqvJ7O4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ousRF-008xsY-9U for v9fs-developer@lists.sourceforge.net;
 Tue, 15 Nov 2022 09:41:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1668505259;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/jXxnn30oH1htkAEq4c8BajVXG6A/m7p7p9RvVlC1SI=;
 b=JG7XnaBW7BYDgjhiTFGHCngASN9puOYOTtAxmPH7xnofTJR4+BUbpAbaQzNpNWzL1v8MqU
 5E3xW9KEtRuRVs8DEh05ZkJ9QBDykxiJ7wcHOkN+hErZM1Gj5GDGaLqxJ19Uq0jYl2y4/Z
 U5h4sZc8Clf8kUowZRRTMkXxzHlUvNU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-373-MkvcghZ8OraPCsSquUNZLw-1; Tue, 15 Nov 2022 04:40:54 -0500
X-MC-Unique: MkvcghZ8OraPCsSquUNZLw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
 [10.11.54.4])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F0E008027EB;
 Tue, 15 Nov 2022 09:40:53 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.24])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E9A352024CC0;
 Tue, 15 Nov 2022 09:40:51 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <Y3MQ4l1AJOgniprT@casper.infradead.org>
References: <Y3MQ4l1AJOgniprT@casper.infradead.org>
 <166844174069.1124521.10890506360974169994.stgit@warthog.procyon.org.uk>
To: Matthew Wilcox <willy@infradead.org>
MIME-Version: 1.0
Content-ID: <1493971.1668505249.1@warthog.procyon.org.uk>
Date: Tue, 15 Nov 2022 09:40:49 +0000
Message-ID: <1493972.1668505249@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Matthew Wilcox <willy@infradead.org> wrote: > On Mon, Nov
 14, 2022 at 04:02:20PM +0000, David Howells wrote: > > +++ b/mm/filemap.c
 > > @@ -3941,6 +3941,10 @@ bool filemap_release_folio(struct folio *folio,
 gfp_t gfp) > > struct address_space * [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ousRF-008xsY-9U
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
 ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-mm@kvack.org,
 linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Matthew Wilcox <willy@infradead.org> wrote:

> On Mon, Nov 14, 2022 at 04:02:20PM +0000, David Howells wrote:
> > +++ b/mm/filemap.c
> > @@ -3941,6 +3941,10 @@ bool filemap_release_folio(struct folio *folio, gfp_t gfp)
> >  	struct address_space * const mapping = folio->mapping;
> >  
> >  	BUG_ON(!folio_test_locked(folio));
> > +	if ((!mapping || !mapping_release_always(mapping))
> > +	    && !folio_test_private(folio) &&
> > +	    !folio_test_private_2(folio))
> > +		return true;
> 
> Why do you need to test 'mapping' here?

Why does the function do:

	if (mapping && mapping->a_ops->release_folio)

later then?  There are callers of the function, such as shrink_folio_list(),
that seem to think that folio->mapping might be NULL.

> Also this is the most inconsistent style ...

Yeah, I accidentally pushed the '&&' onto the next line.

> > @@ -276,7 +275,7 @@ static long mapping_evict_folio(struct address_space *mapping,
> >  	if (folio_ref_count(folio) >
> >  			folio_nr_pages(folio) + folio_has_private(folio) + 1)
> 
> I think this line is incorrect, right?  You don't increment the folio
> refcount just because the folio has private2 set, do you?

Errr, yes:

	static inline void folio_start_fscache(struct folio *folio)
	{
		VM_BUG_ON_FOLIO(folio_test_private_2(folio), folio);
		folio_get(folio);
		folio_set_private_2(folio);
	}

Someone insisted - might even have been you;-)

I'm working on getting rid of the use of PG_private_2 from the network
filesystems, but it's still in progress.  Kind of blocked on the iov_iter
stuff.

> >  		return 0;
> > -	if (folio_has_private(folio) && !filemap_release_folio(folio, 0))
> > +	if (!filemap_release_folio(folio, 0))
> >  		return 0;
> >  
> >  	return remove_mapping(mapping, folio);
> 
> Can we get rid of folio_has_private()

That would be nice, but there are still places that check it, and until we get
rid of the use of PG_private_2, we can't reduce it to just a check on
PG_private.  Truncate, for example, checks it to see if it should can
->invalidate_folio().

It's only used in mm/, so it could be moved into mm/internal.h.

> / page_has_private() now?

That's used in some a number of places outside of mm/.  The arch/s390/ usage
is just to calculate the expected refcount.  I wonder if calculation of the
expected refcount could be potted into a function as it's performed in a
number of places - though the expectation isn't always the same.

Ext3 and fuse both use it - but those probably need to check PG_private_2 and
could use a "folio_test_private()" function when fully foliated.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
