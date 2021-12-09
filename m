Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A0BEB46F64E
	for <lists+v9fs-developer@lfdr.de>; Thu,  9 Dec 2021 22:57:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mvRQH-0003dC-T7; Thu, 09 Dec 2021 21:57:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mvRQH-0003d6-9w
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Dec 2021 21:57:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Nq1sf+kzjWsZVde2j+/s8Puw8BjH1Oy3rw3I3uvxMHo=; b=aG3lblkxjn96cZqepj7wL9L9cB
 ECfu0ptiGTfvs8kdGXDb775wPRm1oBYYXG+Q3dc+6hOLUM/UdR/YQ/FQHNQHqC9cz2hAfbeY1YMEI
 5mqEmMIgc4IwKpnYEDiOeRqEvniWFApOBS/+vF4hNWKN4ykoK6CuDcr4sh7tYTG8XTLw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Nq1sf+kzjWsZVde2j+/s8Puw8BjH1Oy3rw3I3uvxMHo=; b=lk+fk9G0MYRM8K8sECa36YHZWr
 rqP040NbasrGViL5AB/s+NvJPi2UY2yrHNpglAu5pIpaObCuRTmVxlmqr6v/Y6jDL5lAyPX9QDATR
 1VacMc3XJsuOtIjeoq1MAQsKmVXFtHURLjjSylAhh/9DBNUen+zxzdaYznP26AMx4Ccg=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mvRQF-00AQHH-Cj
 for v9fs-developer@lists.sourceforge.net; Thu, 09 Dec 2021 21:57:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639087065;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Nq1sf+kzjWsZVde2j+/s8Puw8BjH1Oy3rw3I3uvxMHo=;
 b=KIpH8bqufDGwARWWONckb30XpM0WL+UW8Vw/minAEGe+ZNuDi4n/+zEfnKEG2OQbmGVbHH
 AeXEhTgYFXNY9pL+ms+r3aPKABum2ek3pt+24iGGkZc7FxKWLWw3Fuww3nKu1Hl5qYJqjc
 8LQz1pru+92mgbRA3RvGlunWVeNKHnU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-562-goLxjqsmOXuXZtknWwaRCA-1; Thu, 09 Dec 2021 16:57:42 -0500
X-MC-Unique: goLxjqsmOXuXZtknWwaRCA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0A8D3760C0;
 Thu,  9 Dec 2021 21:57:39 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.122])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DB9EB1017E27;
 Thu,  9 Dec 2021 21:57:33 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAHk-=wiTquFUu-b5ME=rbGEF8r2Vh1TXGfaZZuXyOutVrgRzfw@mail.gmail.com>
References: <CAHk-=wiTquFUu-b5ME=rbGEF8r2Vh1TXGfaZZuXyOutVrgRzfw@mail.gmail.com>
 <163906878733.143852.5604115678965006622.stgit@warthog.procyon.org.uk>
 <163906888735.143852.10944614318596881429.stgit@warthog.procyon.org.uk>
To: Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-ID: <159179.1639087053.1@warthog.procyon.org.uk>
Date: Thu, 09 Dec 2021 21:57:33 +0000
Message-ID: <159180.1639087053@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Linus Torvalds <torvalds@linux-foundation.org> wrote: > >
 Implement a function to generate hashes. It needs to be stable over time >
 > and endianness-independent as the hashes will appear on disk in future
 > > patches. > > I'm not actually seeing this be [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mvRQF-00AQHH-Cj
Subject: Re: [V9fs-developer] [PATCH v2 07/67] fscache: Implement a hash
 function
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
Cc: Steve French <sfrench@samba.org>, "open list:NFS,
 SUNRPC, AND..." <linux-nfs@vger.kernel.org>, CIFS <linux-cifs@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Jeff Layton <jlayton@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, v9fs-developer@lists.sourceforge.net,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Linus Torvalds <torvalds@linux-foundation.org> wrote:

> > Implement a function to generate hashes.  It needs to be stable over time
> > and endianness-independent as the hashes will appear on disk in future
> > patches.
> 
> I'm not actually seeing this being endianness-independent.
> 
> Is the input just regular 32-bit data in native word order? Because
> then it's not endianness-independent, it's purely that there *is* no
> endianness to the data at all and it is purely native data.
>
> So the code may be correct, but the explanation is confusing. There is
> absolutely nothing here that is about endianness.

What I'm trying to get at is that the hash needs to be consistent, no matter
the endianness of the cpu, for any particular input blob.  The hashing
function shouldn't need to know the structure of the input blob.  In the case
of the volume key, it's a padded printable string; in the case of the cookie
key, it's probably some sort of structured blob, quite possibly an actual
array of be32.

The reason it needs to be consistent is that people seem to like seeding the
cache by tarring up the cache from one machine and untarring it on another.

And looking again at my code:

unsigned int fscache_hash(unsigned int salt, unsigned int *data, unsigned int n)
{
	unsigned int a, x = 0, y = salt;

	for (; n; n--) {
		a = *data++;   <<<<<<<
		HASH_MIX(x, y, a);
	}
	return fold_hash(x, y);
}

The marked line should probably use something like le/be32_to_cpu().

I also need to fix 9p to canonicalise its cookie key.

Thanks for catching that,
David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
