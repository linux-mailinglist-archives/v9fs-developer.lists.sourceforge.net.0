Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FDAE4443AF
	for <lists+v9fs-developer@lfdr.de>; Wed,  3 Nov 2021 15:34:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1miHLr-0005pD-La; Wed, 03 Nov 2021 14:34:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1miHLp-0005ow-Lg
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Nov 2021 14:34:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sBt63SHG96A9DgD47p6bvc+4BuRpJkNrq/VWF2GMPR0=; b=VsN0tLT+IBXcWChwpsUNeLKeZ8
 e8+Xq8lLR8vtF6RvLW7oQy++f3IgL+WUe+QXnyLgWZrVlgBK3n1di17BbKGl+preezG/+JEbGaGQv
 pmwbZaTbWL95Ire7F90I6hKSX4Djhk+o9wA4KY2jUetOO7AbvcyCGMI90JdYFnUKoWTA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sBt63SHG96A9DgD47p6bvc+4BuRpJkNrq/VWF2GMPR0=; b=e3y+aAYKwsNpSkrrS+0mwlfMx1
 m/ov4dkZFmOb/m4DBu71ZSQ/I0tlr/YDsXR6AVAlFusYIQckWcNI5nNkwbUpomjnZH4eyZLlMwXmc
 PU2lCVYwqjqBjSxkr5+qG9BLVKI+XDymCMbVUcwYcm3vSMi4bM02HIYgN7XgNju1zswI=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1miHLn-0003Ye-DP
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Nov 2021 14:34:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1635950085;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sBt63SHG96A9DgD47p6bvc+4BuRpJkNrq/VWF2GMPR0=;
 b=GRGnS+Lb1CYzKJSTnc2DEymA7wv8bg6uezpBnpCmIkclIG3H+G3GLncYCfizg4BXDymMMR
 XMjP7R5zbAV6bVjeFKOy2qCsua/CK4pSRtJEo7i5X++pcGBWbCF0u+OIA9vtlK1UEMA8Wl
 EIU342PRrN1vjrky2+VfABvwzAyKIVk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-273-NU2BJUTbNw2ManfRoqAm1g-1; Wed, 03 Nov 2021 10:34:40 -0400
X-MC-Unique: NU2BJUTbNw2ManfRoqAm1g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C6D93800053;
 Wed,  3 Nov 2021 14:34:37 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.144])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C5F115F4EA;
 Wed,  3 Nov 2021 14:34:34 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <YYKLkBwQdtn4ja+i@casper.infradead.org>
References: <YYKLkBwQdtn4ja+i@casper.infradead.org>
 <163584174921.4023316.8927114426959755223.stgit@warthog.procyon.org.uk>
 <163584184628.4023316.9386282630968981869.stgit@warthog.procyon.org.uk>
To: Matthew Wilcox <willy@infradead.org>
MIME-Version: 1.0
Content-ID: <1037301.1635950073.1@warthog.procyon.org.uk>
Date: Wed, 03 Nov 2021 14:34:33 +0000
Message-ID: <1037302.1635950073@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Matthew Wilcox <willy@infradead.org> wrote: > > + * For
 folios
 which are in the page cache, return the inode that is hosting > > + * this
 folio belongs to. > > This looks like an editing mistake. Either you meant
 > 'return the inode that hosts [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1miHLn-0003Ye-DP
Subject: Re: [V9fs-developer] [PATCH v3 4/6] folio: Add a function to get
 the host inode for a folio
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
 dhowells@redhat.com, linux-mm@kvack.org, ceph-devel@vger.kernel.org,
 linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 linux-afs@lists.infradead.org, devel@lists.orangefs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Matthew Wilcox <willy@infradead.org> wrote:

> > + * For folios which are in the page cache, return the inode that is hosting
> > + * this folio belongs to.
> 
> This looks like an editing mistake.  Either you meant
> 'return the inode that hosts this folio' or
> 'return the inode this folio belongs to'
> (and i prefer the second).

Yeah - I'll go with that.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
