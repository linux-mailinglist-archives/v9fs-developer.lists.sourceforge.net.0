Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FCBA31B38D
	for <lists+v9fs-developer@lfdr.de>; Mon, 15 Feb 2021 01:23:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lBRfo-0003wh-Uf; Mon, 15 Feb 2021 00:23:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lBRfn-0003wZ-CB
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Feb 2021 00:23:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=icyirenyNVPQ/6+Zc420o3Iw7zjp69we48horNqQpPg=; b=L7i/WWt99cwpRVDmfGQDEfTGmV
 kDPaYguO0yAvGs4j7Y/alhcSmd6J9JfBT6SWDo70cpVWe24MdPh4MtRENAkFbUOF3LYgAPk2fJbwJ
 BBM6RPLxnWerSox9+297Yf7lA3Aoqe7F2OgRChYU4jyehIEAsHAqo8Fqgn9nC3btCqpI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=icyirenyNVPQ/6+Zc420o3Iw7zjp69we48horNqQpPg=; b=Mu/P3YpoCLP0DaashmJIzU4gpn
 GI7AfH5D4HfjRsWzFilbM9XwUZbB4EzF8kVQ+ftXe0NyxAr4VVeJf8hccZtYmkY3aAjyz7WDSpBzS
 BeX1lYSMSg5BZfyOBXFH6gvkFa3ubtrNxJnmUoKGvBDy7OD4qdvZbTYMO+xz/5x34Tik=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1lBRfY-009062-Bj
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Feb 2021 00:23:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613348589;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=icyirenyNVPQ/6+Zc420o3Iw7zjp69we48horNqQpPg=;
 b=PaFpoL9gjXjZSdWXJwxt0RShkpE9i6bNrqrFBLBLQ/2PQhBKTRFA63tlbF1zB/mGyNk2Sj
 7txn+36m/u/5Xz+ieCS1/ENOCzLh1u4jf/NFE2Ulaj93Gtk41AuCohbKuEbg4cDp2VqI+2
 CzYWEmPTHT7PpmVGu32R7KW0QB85+4w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-484-xtPvx-7lP1aR-4qYcHimfw-1; Sun, 14 Feb 2021 19:23:07 -0500
X-MC-Unique: xtPvx-7lP1aR-4qYcHimfw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6FB8D1005501;
 Mon, 15 Feb 2021 00:23:05 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-68.rdu2.redhat.com
 [10.10.119.68])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 013BD6F986;
 Mon, 15 Feb 2021 00:22:57 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAHk-=wi68OpbwBm6RCodhNUyg6x8N7vi5ufjRtosQSPy_EYqLA@mail.gmail.com>
References: <CAHk-=wi68OpbwBm6RCodhNUyg6x8N7vi5ufjRtosQSPy_EYqLA@mail.gmail.com>
 <CAHk-=wj-k86FOqAVQ4ScnBkX3YEKuMzqTEB2vixdHgovJpHc9w@mail.gmail.com>
 <591237.1612886997@warthog.procyon.org.uk>
 <1330473.1612974547@warthog.procyon.org.uk>
 <1330751.1612974783@warthog.procyon.org.uk>
 <CAHk-=wjgA-74ddehziVk=XAEMTKswPu1Yw4uaro1R3ibs27ztw@mail.gmail.com>
 <27816.1613085646@warthog.procyon.org.uk>
To: Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-ID: <860728.1613348577.1@warthog.procyon.org.uk>
Date: Mon, 15 Feb 2021 00:22:57 +0000
Message-ID: <860729.1613348577@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lBRfY-009062-Bj
Subject: Re: [V9fs-developer] [GIT PULL] fscache: I/O API modernisation and
 netfs helper library
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
Cc: Steve French <sfrench@samba.org>, "open list:NFS, SUNRPC,
 AND..." <linux-nfs@vger.kernel.org>, Jeff Layton <jlayton@redhat.com>,
 CIFS <linux-cifs@vger.kernel.org>, David Wysochanski <dwysocha@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Linus Torvalds <torvalds@linux-foundation.org> wrote:

> But no, it's not a replacement for actual code review after the fact.
> 
> If you think email has too long latency for review, and can't use
> public mailing lists and cc the people who are maintainers, then I
> simply don't want your patches.

I think we were talking at cross-purposes by the term "development" here.  I
was referring to the discussion of how the implementation should be done and
working closely with colleagues - both inside and outside Red Hat - to get
things working, not specifically the public review side of things.  It's just
that I don't have a complete record of the how-to-implement-it, the
how-to-get-various-bits-working-together and the why-is-it-not-working?
discussions.

Anyway, I have posted my fscache modernisation patches multiple times for
public review, I have tried to involve the wider community in aspects of the
development on public mailing lists and I have been including the maintainers
in to/cc.

I've posted the more full patchset for public review a number of times:

4th May 2020:
https://lore.kernel.org/linux-fsdevel/158861203563.340223.7585359869938129395.stgit@warthog.procyon.org.uk/

13th Jul (split into three subsets):
https://lore.kernel.org/linux-fsdevel/159465766378.1376105.11619976251039287525.stgit@warthog.procyon.org.uk/
https://lore.kernel.org/linux-fsdevel/159465784033.1376674.18106463693989811037.stgit@warthog.procyon.org.uk/
https://lore.kernel.org/linux-fsdevel/159465821598.1377938.2046362270225008168.stgit@warthog.procyon.org.uk/

20th Nov:
https://lore.kernel.org/linux-fsdevel/160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk/

I then cut it down and posted that publically a couple of times:

20th Jan:
https://lore.kernel.org/linux-fsdevel/161118128472.1232039.11746799833066425131.stgit@warthog.procyon.org.uk/

25th Jan:
https://lore.kernel.org/linux-fsdevel/161161025063.2537118.2009249444682241405.stgit@warthog.procyon.org.uk/

I let you know what was coming here:
https://lore.kernel.org/linux-fsdevel/447452.1596109876@warthog.procyon.org.uk/
https://lore.kernel.org/linux-fsdevel/2522190.1612544534@warthog.procyon.org.uk/

to try and find out whether you were going to have any objections to the
design in advance, rather than at the last minute.

I've apprised people of what I was up to:
https://lore.kernel.org/lkml/24942.1573667720@warthog.procyon.org.uk/
https://lore.kernel.org/linux-fsdevel/2758811.1610621106@warthog.procyon.org.uk/
https://lore.kernel.org/linux-fsdevel/1441311.1598547738@warthog.procyon.org.uk/
https://lore.kernel.org/linux-fsdevel/160655.1611012999@warthog.procyon.org.uk/

Asked for consultation on parts of what I wanted to do:
https://lore.kernel.org/linux-fsdevel/3326.1579019665@warthog.procyon.org.uk/
https://lore.kernel.org/linux-fsdevel/4467.1579020509@warthog.procyon.org.uk/
https://lore.kernel.org/linux-fsdevel/3577430.1579705075@warthog.procyon.org.uk/

Asked someone who is actually using fscache in production to test the rewrite:
https://listman.redhat.com/archives/linux-cachefs/2020-December/msg00000.html

I've posted partial patches to try and help 9p and cifs along:
https://lore.kernel.org/linux-fsdevel/1514086.1605697347@warthog.procyon.org.uk/
https://lore.kernel.org/linux-cifs/1794123.1605713481@warthog.procyon.org.uk/
https://lore.kernel.org/linux-fsdevel/241017.1612263863@warthog.procyon.org.uk/
https://lore.kernel.org/linux-cifs/270998.1612265397@warthog.procyon.org.uk/

(Jeff has been handling Ceph and Dave NFS).

Proposed conference topics related to this:
https://lore.kernel.org/linux-fsdevel/9608.1575900019@warthog.procyon.org.uk/
https://lore.kernel.org/linux-fsdevel/14196.1575902815@warthog.procyon.org.uk/
https://lore.kernel.org/linux-fsdevel/364531.1579265357@warthog.procyon.org.uk/

though the lockdown put paid to that:-(

Willy has discussed it too:
https://lore.kernel.org/linux-fsdevel/20200826193116.GU17456@casper.infradead.org/

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
