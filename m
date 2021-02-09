Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EDA7315850
	for <lists+v9fs-developer@lfdr.de>; Tue,  9 Feb 2021 22:11:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l9aHs-0002pM-NU; Tue, 09 Feb 2021 21:11:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1l9aHq-0002pE-Sl
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Feb 2021 21:11:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GNTsEzyoPupLf8uFnqlZZbYFAgQKr7S0geejlS5p7yc=; b=kZuls0+OyFBwkytwnNcG2i1VmP
 MFToIAFFu/JKsgdnQlHeA6yGLIKcYL46nnzNsXXY7VCYm49rcP9DY6zNtUhkZAxtATTk++uh083qD
 Wm0IMTljLbLQWu28dHrqgWcNOKbgBxYiUYd+viRra1gm1EiNRB3scRkH0/FkvCoUEFP4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GNTsEzyoPupLf8uFnqlZZbYFAgQKr7S0geejlS5p7yc=; b=fNnJpRruxGlivn4yGUzlZjR3D4
 p5fM+V5uvPVn/+TqVuqVi9PPfVcgu92t6oDo7caZb11Ds3HKMuz+Hr6zgBfO0fKdPM0jC7KEHzGht
 Fgs5yYtntcmOyJFueStes/i0daPZmmiWHTV+b65euPfw+Z2W4mAENh/KfyWR501DFlVM=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1l9aHj-0002Fe-T4
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Feb 2021 21:11:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1612905054;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=GNTsEzyoPupLf8uFnqlZZbYFAgQKr7S0geejlS5p7yc=;
 b=NwE00wUnTmWinZOjuNB7AiatJFzVCKQi/g/j2s0gQNgywvudSlMJZXBX6n38eKXCOEIEQA
 b4bmeBRtFIS1tACYOp3auadFwW5C56pMwASewTgi0M9CL/oBieKXFJ1XL1/jmBBljWTUuM
 vAbkGn9//QMfcqSTpgvbAyWK98Sgs5Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-246-zfMDn4FfM1uj1j28ps60sQ-1; Tue, 09 Feb 2021 16:10:52 -0500
X-MC-Unique: zfMDn4FfM1uj1j28ps60sQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 199F0107ACC7;
 Tue,  9 Feb 2021 21:10:50 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-115-23.rdu2.redhat.com
 [10.10.115.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BDE796062F;
 Tue,  9 Feb 2021 21:10:43 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAHk-=wj-k86FOqAVQ4ScnBkX3YEKuMzqTEB2vixdHgovJpHc9w@mail.gmail.com>
References: <CAHk-=wj-k86FOqAVQ4ScnBkX3YEKuMzqTEB2vixdHgovJpHc9w@mail.gmail.com>
 <591237.1612886997@warthog.procyon.org.uk>
To: Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-ID: <617684.1612905042.1@warthog.procyon.org.uk>
Date: Tue, 09 Feb 2021 21:10:42 +0000
Message-ID: <617685.1612905042@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l9aHj-0002Fe-T4
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

> The PG_fscache bit waiting functions are completely crazy. The comment
> about "this will wake up others" is actively wrong,

You mean this?

/**
 * unlock_page_fscache - Unlock a page pinned with PG_fscache
 * @page: The page
 *
 * Unlocks the page and wakes up sleepers in wait_on_page_fscache().  Also
 * wakes those waiting for the lock and writeback bits because the wakeup
 * mechanism is shared.  But that's OK - those sleepers will just go back to
 * sleep.
 */

Actually, you're right.  The wakeup check func is evaluated by the
waker-upper.  I can fix the comment with a patch.

> and the waiting function looks insane, because you're mixing the two names
> for "fscache" which makes the code look totally incomprehensible. Why would
> we wait for PF_fscache, when PG_private_2 was set? Yes, I know why, but the
> code looks entirely nonsensical.

IIRC someone insisted that I should make it a generic name and put the
accessor functions in the fscache headers (which means they aren't available
to core code), but I don't remember who (maybe Andrew? it was before mid-2007)
- kind of like PG_checked is an alias for PG_owner_priv_1.

I'd be quite happy to move the accessors for PG_fscache to the
linux/page-flags.h as that would simplify things.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
