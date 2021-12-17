Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA754795A7
	for <lists+v9fs-developer@lfdr.de>; Fri, 17 Dec 2021 21:44:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1myK5M-0008Vz-RH; Fri, 17 Dec 2021 20:44:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1myK5M-0008Vt-Bp
 for v9fs-developer@lists.sourceforge.net; Fri, 17 Dec 2021 20:44:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HhXCW/gkgebaf8J387KILDsdSIH5KpfDKz809CKCWyo=; b=KR9YpvFv6gD1KHhdKq/pqE1TGS
 Qmf382M9JfPVzzwZ13kdWw2vtUypL3soQiBYZficD7e4mf99rIWKoz75ByIsx9xmSVOI217fYoAK8
 AGu6tRw6oOezyJNHWp0XbaJ3MGhdRO0lm3ECtrBVJgl2qdSx0TQTCf7jYb91lV833ocs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HhXCW/gkgebaf8J387KILDsdSIH5KpfDKz809CKCWyo=; b=VE0LWcT/14dfH9nQD1rd/JHd15
 erNqSehORY/sjbsy0M2aHbD0ZbzDv5g4oXwmLa4j5RE0XmWMJHEo4i/fEM47V5ldXl7cw2UXMegwp
 3lsU3cTBieIurevzLX03wDMq6ASIkDnKUl2XCSpfFmRs8rsbhgk+3mZ68+69a4fPRIl4=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1myK5M-00046z-GB
 for v9fs-developer@lists.sourceforge.net; Fri, 17 Dec 2021 20:44:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639773846;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=HhXCW/gkgebaf8J387KILDsdSIH5KpfDKz809CKCWyo=;
 b=eft0JoXDVzKrDmpkVzFwj8Ui1tuQEdzj8oWdk5ugmKhUzdHRTPzAvUC6q1hPg+XRMmGF17
 tm8FGZC3PfjlE7aakh6O6KY6e8Z87X8J/h+PnXTneCllIKj+pPbj+RtPF2zsx/UKvJpltm
 t2aN6AYl81JiE3dPOGVCOoZ4W718nUY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-473-r3psBnitNDePrXJsjLMkbA-1; Fri, 17 Dec 2021 15:44:02 -0500
X-MC-Unique: r3psBnitNDePrXJsjLMkbA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 64B781006AA2;
 Fri, 17 Dec 2021 20:43:58 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.122])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 97E16610AE;
 Fri, 17 Dec 2021 20:43:49 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <310b791fc8afde2a108af4eb06bbe678f4141fac.camel@kernel.org>
References: <310b791fc8afde2a108af4eb06bbe678f4141fac.camel@kernel.org>
 <163967073889.1823006.12237147297060239168.stgit@warthog.procyon.org.uk>
 <163967106467.1823006.6790864931048582667.stgit@warthog.procyon.org.uk>
To: Jeff Layton <jlayton@kernel.org>
MIME-Version: 1.0
Content-ID: <2084363.1639773828.1@warthog.procyon.org.uk>
Date: Fri, 17 Dec 2021 20:43:48 +0000
Message-ID: <2084364.1639773828@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Jeff Layton <jlayton@kernel.org> wrote: > > +unsigned int
 fscache_lru_cookie_timeout = 10 * HZ; > > > > Looks like it only pops after
 10s? That's a bit more than the "couple of > seconds" mentioned in the
 changelog. In fact, that seems like [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1myK5M-00046z-GB
Subject: Re: [V9fs-developer] [PATCH v3 18/68] fscache: Implement cookie
 user counting and resource pinning
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
 linux-cifs@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 linux-fsdevel@vger.kernel.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, v9fs-developer@lists.sourceforge.net,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jeff Layton <jlayton@kernel.org> wrote:

> > +unsigned int fscache_lru_cookie_timeout = 10 * HZ;
> >  
> 
> Looks like it only pops after 10s? That's a bit more than the "couple of
> seconds" mentioned in the changelog. In fact, that seems like quite a
> long time.
> 
> Did you arrive at this value empirically somehow?

It was 2s originally, but I upped for some reason I don't remember.  I've left
it as it seems to work, but it is arbitrary.  I should make this configurable
perhaps and/or maybe make it based on the number of cookies on the LRU since
the number of open files is what matters.

I don't have a good heuristic, so I'll just fix the commit message for now.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
