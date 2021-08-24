Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E5E3F5FF3
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Aug 2021 16:12:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mIX9q-0000Tc-Eq; Tue, 24 Aug 2021 14:12:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mIX9p-0000TW-Hc
 for v9fs-developer@lists.sourceforge.net; Tue, 24 Aug 2021 14:12:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=B7csfGznQ1Q++PNssOARKkoGks0RWXUGuEYc3/fzXSM=; b=Opw3HmFmjZixWOrmbPuQYk6W6Z
 8aQv9lOP54GmR3A1NB8vWwTbPlfAqBMEA10ak2A7DY94t+ka7UBJFkgBGK3eec+BajGVYTIKtBlGZ
 4RvmTcVUGnCaAXLoADf77JZ9/38psiHpeGwEO+FqXR2AQDAHiI+O/pxGkQjTEIaPCS0U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=B7csfGznQ1Q++PNssOARKkoGks0RWXUGuEYc3/fzXSM=; b=YITL+2b7peIKqJmudmSvzf1nAQ
 Mf3s/s8mV9oZNf3uXhK3B5m7j27F2q27vCvx6qylrGQRTLKN3da8AFz/Sy9e5ikQFgMnrIsMMfgeD
 lIQTF3EwOD3KWbmic0HTGD4YOdn0cwiGCNL5Pq0q5ISoiCAJimSW6zxPHG6ezlWdzO+k=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mIX9m-00GwF3-AT
 for v9fs-developer@lists.sourceforge.net; Tue, 24 Aug 2021 14:12:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1629814316;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=B7csfGznQ1Q++PNssOARKkoGks0RWXUGuEYc3/fzXSM=;
 b=UoUDo+u3kJhMPzkgXohhjO063kWUaSocaKj3LAgCrAvf+JAXoWwnppFZfYtqoyLLeijK+Z
 Gu/RL3piZD1JcLhBHoLtQP3Df20DI0bE9uEZPVQOb5ZbkYRrihaDm3iG0b5dlH8gT9MSyN
 jhMtqMXjhryC40dUrj8GKKuSlni4rc0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-47-6t25SUB3PRaCvUt6qPogYw-1; Tue, 24 Aug 2021 10:11:54 -0400
X-MC-Unique: 6t25SUB3PRaCvUt6qPogYw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 046971082921;
 Tue, 24 Aug 2021 14:11:53 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.86])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AC8415C25A;
 Tue, 24 Aug 2021 14:11:46 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <YST8OcVNy02Rivbm@casper.infradead.org>
References: <YST8OcVNy02Rivbm@casper.infradead.org>
 <162981147473.1901565.1455657509200944265.stgit@warthog.procyon.org.uk>
 <162981151155.1901565.7010079316994382707.stgit@warthog.procyon.org.uk>
To: Matthew Wilcox <willy@infradead.org>
MIME-Version: 1.0
Content-ID: <1951629.1629814305.1@warthog.procyon.org.uk>
Date: Tue, 24 Aug 2021 15:11:45 +0100
Message-ID: <1951630.1629814305@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Matthew Wilcox <willy@infradead.org> wrote: > > +static
 inline
 struct inode *folio_inode(struct folio *folio) > > +{ > > + return
 folio_file_mapping(folio)->host; 
 > > You're contradicting yourself here. If you're allowed to call this >
 function [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mIX9m-00GwF3-AT
Subject: Re: [V9fs-developer] [PATCH 3/6] folio: Add a function to get the
 host inode for a folio
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 dhowells@redhat.com, linux-mm@kvack.org, linux-cachefs@redhat.com,
 v9fs-developer@lists.sourceforge.net, linux-fsdevel@vger.kernel.org,
 ceph-devel@vger.kernel.org, Ilya Dryomov <idryomov@gmail.com>,
 linux-afs@lists.infradead.org, devel@lists.orangefs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Matthew Wilcox <willy@infradead.org> wrote:

> > +static inline struct inode *folio_inode(struct folio *folio)
> > +{
> > +	return folio_file_mapping(folio)->host;
> 
> You're contradicting yourself here.  If you're allowed to call this
> function for swap cache pages, then the documentation needs to change.
> If you're not, then we can just use folio->mapping->host.

Um.  I don't know.  I'll do the latter, then, for now.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
