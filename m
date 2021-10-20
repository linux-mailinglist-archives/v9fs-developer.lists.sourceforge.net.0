Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E2643498F
	for <lists+v9fs-developer@lfdr.de>; Wed, 20 Oct 2021 12:58:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1md9IQ-00087s-54; Wed, 20 Oct 2021 10:58:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1md9IO-00087h-47
 for v9fs-developer@lists.sourceforge.net; Wed, 20 Oct 2021 10:58:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nznzQGZwFhWi7IrCsZuwpAlnduoRBn7ox7Rs/xNM+f4=; b=V1WFh5OSqvBK2Zg5uVbEfpbYeP
 E+/zsovvn+PpG9+EIo2kaGjOMKf7x4+70lqx9vNcJEvwoCdeUJbjkkhAdmTRCytyDTar7l9/IZY0F
 E88t/GVHpG0y97+ea3QTQ9q/J3DruqYPClMoKwECziw8i6JNvLaB2yOXSWNyvSNzlJWk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nznzQGZwFhWi7IrCsZuwpAlnduoRBn7ox7Rs/xNM+f4=; b=Wr7e1TDpVZjNsBfZ32Be9sXg1q
 trYj+nPPduM27PimBuIXF19q6OrWQyvsPLndg8kjjoUXTcvlISE0t8BGSaj9Fbkt33GlNEalz4N5W
 whV/u2fbNPKJsWv+/AFLdSj3swwDwBWpIxcl1f3pHws3BrakZFCydXamNBxK8kJ+t02k=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1md9IJ-0082ca-A1
 for v9fs-developer@lists.sourceforge.net; Wed, 20 Oct 2021 10:58:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634727476;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=nznzQGZwFhWi7IrCsZuwpAlnduoRBn7ox7Rs/xNM+f4=;
 b=ao7CYGkAf2Rc5QTHAndf5BYdCyum23WSVz/VyMKxK4+H+JavDtVnb9MUMvNV4GzbSzPunQ
 EO8qkbTIIvgXrzS2ZGzMLicnkLpEtBEX1OoxBirXV4sbntNwea5+ONM1PVSS9QrrPQ7EqD
 fqGc1BVyCvIAndToX3UTFVVRNiuMisk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-104-d8OhdiHCN4OcfUmy5JVW4A-1; Wed, 20 Oct 2021 06:57:53 -0400
X-MC-Unique: d8OhdiHCN4OcfUmy5JVW4A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 09B5D10A8E00;
 Wed, 20 Oct 2021 10:57:51 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9758360D30;
 Wed, 20 Oct 2021 10:57:44 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <67f55d920f40bf6c49643af08fe8a5cfc97a9542.camel@kernel.org>
References: <67f55d920f40bf6c49643af08fe8a5cfc97a9542.camel@kernel.org>
 <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
 <163456871794.2614702.15398637170877934146.stgit@warthog.procyon.org.uk>
To: Jeff Layton <jlayton@kernel.org>
MIME-Version: 1.0
Content-ID: <3164228.1634727463.1@warthog.procyon.org.uk>
Date: Wed, 20 Oct 2021 11:57:43 +0100
Message-ID: <3164229.1634727463@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Jeff Layton <jlayton@kernel.org> wrote: > The typical way
 to do this would be to rebrand the existing FSCACHE > Kconfig symbols into
 FSCACHE_OLD and then build the new fscache > structure such that it exists
 in parallel with the old. 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1md9IJ-0082ca-A1
Subject: Re: [V9fs-developer] [PATCH 06/67] nfs, cifs, ceph,
 9p: Disable use of fscache prior to its rewrite
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, dhowells@redhat.com,
 linux-afs@lists.infradead.org, linux-cifs@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-cachefs@redhat.com,
 Trond Myklebust <trondmy@hammerspace.com>,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 Eric Van Hensbergen <ericvh@gmail.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, ceph-devel@vger.kernel.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>, linux-nfs@vger.kernel.org,
 Dave Wysochanski <dwysocha@redhat.com>, linux-kernel@vger.kernel.org,
 Steve French <sfrench@samba.org>, linux-fsdevel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jeff Layton <jlayton@kernel.org> wrote:

> The typical way to do this would be to rebrand the existing FSCACHE
> Kconfig symbols into FSCACHE_OLD and then build the new fscache
> structure such that it exists in parallel with the old.

That, there, is nub of the problem.

You can't have parallel cachefiles drivers: There's a single userspace
interface (/dev/cachefiles) and only one driver can register it.  You would
need to decide at compile time whether you want the converted or the
unconverted network filesystems to be cached.

> You'd then just drop the old infrastructure once all of the fs's are
> converted to the new. You could even make them conflict with one another in
> Kconfig too, so that only one could be built in during the transition period
> if supporting both at runtime is too difficult.
> 
> This approach of disabling everything is much more of an all-or-nothing
> affair. It may mean less "churn" overall, but it seems less "nice"
> because you have an interval of commits where fscache is non-functional.
> 
> I'm not necessarily opposed to this approach, but I'd like to better
> understand why doing it this way was preferred.

I'm trying to avoid adding two parallel drivers, but change in place so that I
can test parts of it as I go along.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
