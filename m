Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F21BA32D47C
	for <lists+v9fs-developer@lfdr.de>; Thu,  4 Mar 2021 14:47:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lHoKW-0001sV-Mo; Thu, 04 Mar 2021 13:47:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lHoK9-0001rQ-El
 for v9fs-developer@lists.sourceforge.net; Thu, 04 Mar 2021 13:47:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hNSJeU6DHgk1JDrXPc6wXwBH7UNAGKwi0d2+igWtU6Y=; b=mbknMyLdBOmS1qraM2RR20vbrq
 8+pQ60ToJNgj/R+Neg/iT+66LRrsbcWceCYxEIbqP+I0OsGK5l/cMnkygUo0snDdq4jx9z5E5d2jm
 ynKE0FYMl2gncDV9yimnHR8807y4NNyioDG+a7q4ppxuAE7qvRM2/UNMMUnRQMlGfZ/4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hNSJeU6DHgk1JDrXPc6wXwBH7UNAGKwi0d2+igWtU6Y=; b=WSX8gBolQckQZEuUADsZLOSpVR
 m09D6YoporTWvgpZ6qulka8sSU8obuVw5u5ZPbykrpa+1VwXktsRHDwi/bAahoGUcd8M9yaykWxr3
 Lu4lUyxYgO4I3uAghacCx5mthRf85BqaFKN9idqaS5JqEa5XzITdNsLn6IW6+KllbPW8=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1lHoK1-00DqTo-U5
 for v9fs-developer@lists.sourceforge.net; Thu, 04 Mar 2021 13:47:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614865635;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hNSJeU6DHgk1JDrXPc6wXwBH7UNAGKwi0d2+igWtU6Y=;
 b=SnjAsjpErilPN7UqsfPvyID4eHUhI97DdfqH6C27rpzEgZ4XX8+k3y8fOv/jX8xdlEVTbe
 hYBBWHINrJpRx05l7CyqMnaOS/tsL2HMjhtWd7IuXrGtkYGtwFANUXhWvvI9JFrF/u5YFJ
 e7ketTp5CzVunoohCB7NSRKFsjcTMvA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-167-hcFeYL5qNHGg6spmwsZ5Zw-1; Thu, 04 Mar 2021 08:47:13 -0500
X-MC-Unique: hcFeYL5qNHGg6spmwsZ5Zw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 76E8BEC1A3;
 Thu,  4 Mar 2021 13:47:11 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-66.rdu2.redhat.com
 [10.10.112.66])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D08AD5C1A1;
 Thu,  4 Mar 2021 13:47:05 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <2653261.1614813611@warthog.procyon.org.uk>
References: <2653261.1614813611@warthog.procyon.org.uk>
To: linux-cachefs@redhat.com
MIME-Version: 1.0
Content-ID: <2973222.1614865624.1@warthog.procyon.org.uk>
Date: Thu, 04 Mar 2021 13:47:04 +0000
Message-ID: <2973223.1614865624@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
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
X-Headers-End: 1lHoK1-00DqTo-U5
Subject: [V9fs-developer] fscache: Redesigning the on-disk cache - LRU
 handling
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
Cc: "J. Bruce Fields" <bfields@fieldses.org>, linux-nfs@vger.kernel.org,
 Jeff Layton <jlayton@redhat.com>, Christoph Hellwig <hch@infradead.org>,
 linux-cifs@vger.kernel.org, David Wysochanski <dwysocha@redhat.com>,
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, dhowells@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>, Dave Chinner <dchinner@redhat.com>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

David Howells <dhowells@redhat.com> wrote:

> 
>  (3) OpenAFS-style format.  One index file to look up {file_key,block#} and an
>      array of data files, each holding one block (e.g. a 256KiB-aligned chunk
>      of a file).  Each index entry has valid start/end offsets for easy
>      truncation.
> 
>      The index has a hash to facilitate the lookup and an LRU that allows a
>      block to be recycled at any time.

The LRU would probably have to be a doubly-linked list so that entries can be
removed from it easily.  This means typically touching two other entries,
which might not be in the same page; further, if the entry is being freed,
we'd need to excise it from the hash chain also, necessitating touching maybe
two more entries - which might also be in different pages.

Maybe the LRU idea plus a free block bitmap could be combined, however.

 (1) Say that there's a bit-pair map, with one bit pair per block.  The pair
     is set to 0 when the block is free.  When the block is accessed, the pair
     is set to 3.

 (2) When we run out of free blocks (ie. pairs that are zero), we decrement
     all the pairs and then look again.

 (3) Excision from the old hash chain would need to be done at allocation,
     though it does give a block whose usage has been reduced to 0 the chance
     to be resurrected.

Possible variations on the theme could be:

 (*) Set the pair to 2, not 3 when accessed.  Set the block to 3 to pin it;
     the process of decrementing all the pairs would leave it at 3.

 (*) Rather than decrementing all pairs at once, have a rotating window that
     does a part of the map at once.

 (*) If a round of decrementing doesn't reduce any pairs to zero, reject a
     request for space.

This would also work for a file index.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
