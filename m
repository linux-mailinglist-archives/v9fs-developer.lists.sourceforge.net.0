Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0DC31570A
	for <lists+v9fs-developer@lfdr.de>; Tue,  9 Feb 2021 20:46:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l9Yxt-0006CU-18; Tue, 09 Feb 2021 19:46:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jlayton@redhat.com>) id 1l9Yxo-0006CE-Kn
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Feb 2021 19:46:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=07hMrz2JH7QjjSYxmQ6iVqH/nriv3v/7Q+e4rDzWnzs=; b=Wd84sgQE9NxPBm0Z28bih4ebt8
 sle7Wy/VAyu9QUJHKyyH0y2KbnF+UJVaSG83zvyPTmo0lV9rvKCgZJf2bh8M5etHRNAD2fBckv5IC
 12N0iUtPPxVEkzRZ5eU8sgMB2B8Ivsjhv8X5DMIOkXUeLKvJaJZgDi/6jcwA8QVtM3Mg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=07hMrz2JH7QjjSYxmQ6iVqH/nriv3v/7Q+e4rDzWnzs=; b=azNmiwUYPLnqiEEPndU7fY5AXC
 78fCp5iTf3XboySDeZyPR2VzKyEQKQN5wN1JR4maR0Uz9m93XKEAPrDQlhFdqw99/HcjAOxszQTzZ
 /swjCczVdwdQGNBJpd12m4UAqGXk8jSqC0A000OdbHqpoMdx/PNVwCNaH/yGTCREgzII=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1l9Yxa-0006Cp-Qd
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Feb 2021 19:46:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1612899957;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=07hMrz2JH7QjjSYxmQ6iVqH/nriv3v/7Q+e4rDzWnzs=;
 b=WVMmSSEoNR/vswMbv+oRgQsoFpiNIaLy94yo8Y0SYrQImUB7QhfzO9AFvMzCN4hBJAgFym
 ffI0eiYVHBjfFEI8Cfoj8zSQ8cHp//qy9HpHKjdA/xMnLTYCIE9tZeH9exGOf2LfiUx0/P
 Wp9mrplDT2vA++VYcgCzqjH8Oxk8ArQ=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-343-mZwEX1xmOvmcAs881SbzBw-1; Tue, 09 Feb 2021 14:45:53 -0500
X-MC-Unique: mZwEX1xmOvmcAs881SbzBw-1
Received: by mail-qv1-f69.google.com with SMTP id m1so13970487qvp.0
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 09 Feb 2021 11:45:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=07hMrz2JH7QjjSYxmQ6iVqH/nriv3v/7Q+e4rDzWnzs=;
 b=Eq1POHO9vquEL8qo1iVQgkULBH0x8+NjW54+ZsB7rmjjtvcFaZRn7qUS8zWrxTgCmU
 rx00joVettrayC4UMW0VVVEUT2Bnqsrtq2UrSjV0RDh+TJfsUJ6b9ProxabTRfkS6/s7
 4w+DBANxL/uwX/7xa/WZJwRy1ZxWD8KfZZ9iVcIo1LxtLfU0gDyQo7zkFqeRE2G73I89
 p4vuCtX1nfp+V2O73xay7uNWcDPHChA97CF+f+sx3nhkaMDRKNYupJHvYqZXwX/MetL4
 hv+SyITKc8wvYG0uswjGzhmOajx4Dce7dykZ3ue5tIbMgxE0u0IoIW09QF8PRG2ly/IW
 xS0A==
X-Gm-Message-State: AOAM532toaYCZ7/dt6nmbcsiFmU4B1ngHv5QOx08fcILmmAPLNjE1kyg
 n++rYcgg31CSgBK6oBQ6V0VmgZXHOUtHwIuLvzny4GbCZLUNqEBHO6Slobqh1yAYErR7CAeRbIh
 m3OUx8645VJjHItsoAuaKLQy6NuJ257FTcDc=
X-Received: by 2002:a37:4fcf:: with SMTP id
 d198mr23988264qkb.277.1612899953138; 
 Tue, 09 Feb 2021 11:45:53 -0800 (PST)
X-Google-Smtp-Source: ABdhPJybD7SbuYQXGOXd3mMxVBLEZfaSpNELJGXVWAV5LvAAprhYnJ48OVnrJ8zBSJ4tAUenGug78w==
X-Received: by 2002:a37:4fcf:: with SMTP id
 d198mr23988232qkb.277.1612899952938; 
 Tue, 09 Feb 2021 11:45:52 -0800 (PST)
Received: from tleilax.poochiereds.net
 (68-20-15-154.lightspeed.rlghnc.sbcglobal.net. [68.20.15.154])
 by smtp.gmail.com with ESMTPSA id p16sm3234618qtq.24.2021.02.09.11.45.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 11:45:52 -0800 (PST)
Message-ID: <c9d5464484dc7013eba9f49e88c19712c1276c31.camel@redhat.com>
From: Jeff Layton <jlayton@redhat.com>
To: Linus Torvalds <torvalds@linux-foundation.org>, David Howells
 <dhowells@redhat.com>
Date: Tue, 09 Feb 2021 14:45:51 -0500
In-Reply-To: <CAHk-=wj-k86FOqAVQ4ScnBkX3YEKuMzqTEB2vixdHgovJpHc9w@mail.gmail.com>
References: <591237.1612886997@warthog.procyon.org.uk>
 <CAHk-=wj-k86FOqAVQ4ScnBkX3YEKuMzqTEB2vixdHgovJpHc9w@mail.gmail.com>
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jlayton@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
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
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l9Yxa-0006Cp-Qd
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
Cc: CIFS <linux-cifs@vger.kernel.org>, "open list:NFS, SUNRPC,
 AND..." <linux-nfs@vger.kernel.org>, linux-afs@lists.infradead.org,
 David Wysochanski <dwysocha@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, 2021-02-09 at 11:06 -0800, Linus Torvalds wrote:
> So I'm looking at this early, because I have more time now than I will
> have during the merge window, and honestly, your pull requests have
> been problematic in the past.
> =

> The PG_fscache bit waiting functions are completely crazy. The comment
> about "this will wake up others" is actively wrong, and the waiting
> function looks insane, because you're mixing the two names for
> "fscache" which makes the code look totally incomprehensible. Why
> would we wait for PF_fscache, when PG_private_2 was set? Yes, I know
> why, but the code looks entirely nonsensical.
> =

> So just looking at the support infrastructure changes, I get a big "Hmm".
> =

> But the thing that makes me go "No, I won't pull this", is that it has
> all the same hallmark signs of trouble that I've complained about
> before: I see absolutely zero sign of "this has more developers
> involved".
> =

> There's not a single ack from a VM person for the VM changes. There's
> no sign that this isn't yet another "David Howells went off alone and
> did something that absolutely nobody else cared about".
> =

> See my problem? I need to be convinced that this makes sense outside
> of your world, and it's not yet another thing that will cause problems
> down the line because nobody else really ever used it or cared about
> it until we hit a snag.
> =

> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0Linus
> =


I (and several other developers) have been working with David on this
for the last year or so. Would it help if I gave this on the netfs lib
work and the fscache patches?

    Reviewed-and-tested-by: Jeff Layton <jlayton@redhat.com>

My testing has mainly been with ceph. My main interest is that this
allows us to drop a fairly significant chunk of rather nasty code from
fs/ceph. The netfs read helper infrastructure makes a _lot_ more sense
for a networked filesystem, IMO.

The legacy fscache code has some significant bugs too, and this gives it
a path to making better use of more modern kernel features. It should
also be set up so that filesystems can be converted piecemeal.

I'd really like to see this go in.

Cheers,
Jeff



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
