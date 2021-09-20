Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E5B4122CD
	for <lists+v9fs-developer@lfdr.de>; Mon, 20 Sep 2021 20:16:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mSNqC-00039t-KB; Mon, 20 Sep 2021 18:16:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mSNqB-00039k-UH
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Sep 2021 18:16:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=smgGeNTJKJdRB3jySjdLq/O6aIDEticWWn8WNZpB814=; b=G1eZ7RlXr9flk5XOhSLuzZ4fhv
 2Eg8Wy/S1p/of5S0FKeFmbUEwWMODefS+tnbFWjP1V+aR3ePj36/FUU4JF2cbYVvPWJSmhZV9W8ta
 TkDnhDvQjZC/obWj6MBNuPdAJn2z/0+zVoR6s5POiHMe9DTy8kGf7+Xecnw5iBrvsOjc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=smgGeNTJKJdRB3jySjdLq/O6aIDEticWWn8WNZpB814=; b=b+0anQ+7IOJZj/ydLF8p+yHBph
 O4ZK9D9w0vUBNzMJStQPRalsuoThZSNbhy0VK/EdNMLty1EY2TY/B3QFqO9z0+RodEL5klYm10KTg
 5BetCf7YikEN+lDHgWDKUKEPKPfEUxhTT+sX4/cTggUoubuILBJBJdGdUhNImIFph2Lg=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mSNq8-000560-D9
 for v9fs-developer@lists.sourceforge.net; Mon, 20 Sep 2021 18:16:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1632161782;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=smgGeNTJKJdRB3jySjdLq/O6aIDEticWWn8WNZpB814=;
 b=gew4N0EVlriLW2Ussi9J9DrMB31C9LfzvgVhRhJOZ/euTvcCc/p88DZu3CinsyS7LDHj3a
 GsngmPtbwqgrGeEpPxLHGWnZVx3AuJK215AafAwimwBc/fVDvPrQXtHNoC2SuBMMZciZy/
 sXEuQDRmn6Dl1qfaH1d+MkktdZDkRZQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-338-V_dpYbo3NfOmkZRcCVpp8Q-1; Mon, 20 Sep 2021 14:16:19 -0400
X-MC-Unique: V_dpYbo3NfOmkZRcCVpp8Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 467EE802936;
 Mon, 20 Sep 2021 18:16:17 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.44])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 687BB19724;
 Mon, 20 Sep 2021 18:16:14 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAH2r5murR7TbC9BtSgWyrJVC-YG5dUba2ekZTvX75gg4ukaAZw@mail.gmail.com>
References: <CAH2r5murR7TbC9BtSgWyrJVC-YG5dUba2ekZTvX75gg4ukaAZw@mail.gmail.com>
 <163214005516.2945267.7000234432243167892.stgit@warthog.procyon.org.uk>
To: Steve French <smfrench@gmail.com>
MIME-Version: 1.0
Content-ID: <2976711.1632161773.1@warthog.procyon.org.uk>
Date: Mon, 20 Sep 2021 19:16:13 +0100
Message-ID: <2976712.1632161773@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Steve French <smfrench@gmail.com> wrote: > For the cifs ones
 in connect.c (and also ioctl.c), I had submitted a > patch in rc1 for these
 (haven't heard back on that) but did not submit > kerneldoc fixup for
 fs/cifs/misc.c. They seem trivial [...] 
 Content analysis details:   (-2.4 points, 6.0 required)
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
 valid -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mSNq8-000560-D9
Subject: Re: [V9fs-developer] [RFC PATCH] fscache, 9p, afs, cifs,
 nfs: Deal with some warnings from W=1
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
Cc: Steve French <sfrench@samba.org>, linux-nfs <linux-nfs@vger.kernel.org>,
 linux-afs@lists.infradead.org, CIFS <linux-cifs@vger.kernel.org>,
 linux-doc@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, dhowells@redhat.com,
 Marc Dionne <marc.dionne@auristor.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Steve French <smfrench@gmail.com> wrote:

> For the cifs ones in connect.c (and also ioctl.c), I had submitted a
> patch in rc1 for these (haven't heard back on that) but did not submit
> kerneldoc fixup for fs/cifs/misc.c.  They seem trivial and safe, do
> you want to split those out and I can put them in?

I can, though the reason I did the patch is that the warnings are always
popping up in what I'm doing.  I can drop the patch from mine when I'm done, I
guess.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
