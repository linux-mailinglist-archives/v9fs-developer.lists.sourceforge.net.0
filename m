Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A5AC740B048
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Sep 2021 16:10:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mQ98K-0000TA-8i; Tue, 14 Sep 2021 14:10:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mQ98J-0000T4-MI
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Sep 2021 14:09:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=331pDuunPUAM51ZF/wTCLNLkiXbz1S2DVxlkGZaJaF0=; b=UXu6c0pPb3k0Jf9Rjyxi5uiYBH
 QVbwq627KJPPzxUvsxQIlmrcXQ37G2GOQL2Q21LGuRz53VshzTGiLffHSejgR3lQbdtc8chCnP6PS
 8TTg60Wy0ALCbWb0+0w7FbKXF+gA4Ez+fex3qekcOqVp3hYcqPhxnS9BdiqHdxLaH4M0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=331pDuunPUAM51ZF/wTCLNLkiXbz1S2DVxlkGZaJaF0=; b=mq+fMNWfUq7oLKZpxbrRhW7hNf
 /52WdqT6N3k/UJZLdREWzPXxbxvu38Nke2C9hw4wcDGIEj+hhn0e+Wy7uFxclyMi+ITxXCHD1bO1D
 XlB7S+cJWWGb0iXJf6Djxy1z7zx8co51wvTDS6fWU7lw/k4Yh+PcvVZSaBTGZjzFsAR4=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mQ98G-00ASNq-1C
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Sep 2021 14:09:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1631628589;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=331pDuunPUAM51ZF/wTCLNLkiXbz1S2DVxlkGZaJaF0=;
 b=CvF79bVJBVj5X6/SfMxId02ok6tyLxxclAtyuEsl6RlBCRtFzQKnbMNJcOj1qyIFZlM3oS
 qQvswndfCT9gydmVDkczhicfaiF8+I3IR59JnE2jM7a4Hok86KLS3qucHtpOTYOVSU5igg
 kQe44RLd6Hn6HeLqXBVRbpxGX28ulWA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-105-_RD-HQQWOtaTK8ZI4c5bKg-1; Tue, 14 Sep 2021 10:09:48 -0400
X-MC-Unique: _RD-HQQWOtaTK8ZI4c5bKg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9162319200CE;
 Tue, 14 Sep 2021 14:09:46 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.44])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C12376F7EB;
 Tue, 14 Sep 2021 14:09:40 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <6274f0922aecd9b40dd7ff1ef007442ed996aed7.camel@redhat.com>
References: <6274f0922aecd9b40dd7ff1ef007442ed996aed7.camel@redhat.com>
 <163162767601.438332.9017034724960075707.stgit@warthog.procyon.org.uk>
 <163162772646.438332.16323773205855053535.stgit@warthog.procyon.org.uk>
To: Jeff Layton <jlayton@redhat.com>
MIME-Version: 1.0
Content-ID: <439557.1631628579.1@warthog.procyon.org.uk>
Date: Tue, 14 Sep 2021 15:09:39 +0100
Message-ID: <439558.1631628579@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -1.3 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Jeff Layton <jlayton@redhat.com> wrote: > > Does this change
 require any of the earlier patches in the series? If > not, then it may be
 good to go ahead and merge this conversion > separately, ahead of the rest
 of the series. 
 Content analysis details:   (-1.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mQ98G-00ASNq-1C
Subject: Re: [V9fs-developer] [PATCH 4/8] 9p: (untested) Convert to using
 the netfs helper lib to do reads and caching
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
Cc: Steve French <sfrench@samba.org>, linux-nfs@vger.kernel.org,
 linux-cifs@vger.kernel.org, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jeff Layton <jlayton@redhat.com> wrote:

> 
> Does this change require any of the earlier patches in the series? If
> not, then it may be good to go ahead and merge this conversion
> separately, ahead of the rest of the series.

There's a conflict with patch 1 - you can see the same changes made to afs and
ceph there, but apart from that, no.  However, I can't do patch 6 without it
being applied first.  If Dominique or one of the other 9p people can get Linus
to apply it now, that would be great, but I think that unlikely since the
merge window has passed.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
