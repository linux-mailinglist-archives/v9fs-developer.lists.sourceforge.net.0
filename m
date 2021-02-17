Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2461631E1F9
	for <lists+v9fs-developer@lfdr.de>; Wed, 17 Feb 2021 23:21:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lCVC6-0002DO-0P; Wed, 17 Feb 2021 22:21:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lCVC4-0002DD-IQ
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Feb 2021 22:21:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=B3y9B+k/z5xQZKi1oGvlGylvRbdgqvzBX+Fa2hqmNlA=; b=Oblc+pGUwF67mIhnUPI+io8Jh5
 xqR4jJIqsaehIBTDbFYPw+1s+8VIm8nVdbuEF3XQjaBNMKRKnTV5gTC4Llf8jfNOoZqVgmcEjb5EN
 LCIVZHYC5YQstCvtpWkJ54uMd6sg/ajkv7meJtmEqR2CO4fRmv/I4uXTRukzyHdKSS0I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=B3y9B+k/z5xQZKi1oGvlGylvRbdgqvzBX+Fa2hqmNlA=; b=ZjGKT1H8uildfZkErSUeHUWZ8u
 975KQxYuWYo55hy86GEKVm5TR3/6Bim1Ql/N9Dv6NqQpbSpyg8cYNXhLsvCVWQMESJQodTThgleEa
 Jr0xMjJ6wJyj0ZnOOIk8qUuaoiVdwTBLMkab16U00T++c7W39YVRa9s6cI4F0iVr9HGE=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1lCVBt-00D5P0-Um
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Feb 2021 22:21:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613600456;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=B3y9B+k/z5xQZKi1oGvlGylvRbdgqvzBX+Fa2hqmNlA=;
 b=MDVXg/+dsv7g9k0zrrRnLDYG2Cfv72Sc1Qq55mbi0mC97sgZ7R121JvpBPKrfrc+JabZbV
 pg2lqG0E6a3YOuhVauuqkgaTu5uxTxOh8EUOD+UG5bCa0FehFaFitxClqnHH/DWfmuv0MJ
 056xJVopffa0LbFS/3zvxKvnuAj25+I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-143-GNHqtBxsM-aKk7S1VsT3AA-1; Wed, 17 Feb 2021 17:20:52 -0500
X-MC-Unique: GNHqtBxsM-aKk7S1VsT3AA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 77D1D803648;
 Wed, 17 Feb 2021 22:20:49 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-68.rdu2.redhat.com
 [10.10.119.68])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0C26510016DB;
 Wed, 17 Feb 2021 22:20:42 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAOg9mSTyFX+2MMSV77hLDUpHogQ=KXO5oNduA90FLoowPGk0Jw@mail.gmail.com>
References: <CAOg9mSTyFX+2MMSV77hLDUpHogQ=KXO5oNduA90FLoowPGk0Jw@mail.gmail.com>
 <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
 <161340389201.1303470.14353807284546854878.stgit@warthog.procyon.org.uk>
 <20210216103215.GB27714@lst.de>
 <20210216132251.GI2858050@casper.infradead.org>
 <CAOg9mSQYBjnMsDj5pMd6MOGTY5w_ZR=pw7VRYKfP5ZwmHBj2=Q@mail.gmail.com>
 <1586931.1613576553@warthog.procyon.org.uk>
To: Mike Marshall <hubcap@omnibond.com>
MIME-Version: 1.0
Content-ID: <1900213.1613600436.1@warthog.procyon.org.uk>
Date: Wed, 17 Feb 2021 22:20:36 +0000
Message-ID: <1900214.1613600436@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: omnibond.com]
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
X-Headers-End: 1lCVBt-00D5P0-Um
Subject: Re: [V9fs-developer] [PATCH 03/33] mm: Implement readahead_control
 pageset expansion
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
 Linux NFS Mailing List <linux-nfs@vger.kernel.org>,
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>, Christoph Hellwig <hch@lst.de>,
 dhowells@redhat.com, linux-mm <linux-mm@kvack.org>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 V9FS Developers <v9fs-developer@lists.sourceforge.net>,
 ceph-devel <ceph-devel@vger.kernel.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Mike Marshall <hubcap@omnibond.com> wrote:

> Matthew has looked at how I'm fumbling about
> trying to deal with Orangefs's need for much larger
> than page-sized IO...
> 
> I think I need to implement orangefs_readahead
> and from there fire off an asynchronous read
> and while that's going I'll call readahead_page
> with a rac that I've cranked up with readahead_expand
> and when the read gets done I'll have plenty of pages
> for the large IO I did.

Would the netfs helper lib in patches 5-13 here be of use to orangefs?  Most
of the information about it is on patch 8.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
