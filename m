Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8C93157A2
	for <lists+v9fs-developer@lfdr.de>; Tue,  9 Feb 2021 21:22:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l9ZWd-0000cK-V0; Tue, 09 Feb 2021 20:22:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1l9ZWa-0000cB-QD
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Feb 2021 20:22:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9PYzIG6VvFHVs429ghg6/nrJjbK9f+NrPZ9mDOkm3m8=; b=k/nXMTV6H1msIE7+dwB/ZwbLB5
 MfESpl2vY6ehVNDJWQCE9q6lw27U0R7FPnLibikBKeJXU3Yi0jtmTH7iZyMERNmTvfFCt5J1byOk5
 jj/NuLRGwZvyuP37QiLyXnLhMSNqWL+Nb4S72ElW6Soi5mJ6xutgSPUMcEGLwny0BHCI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9PYzIG6VvFHVs429ghg6/nrJjbK9f+NrPZ9mDOkm3m8=; b=DKiNg3MhKSGEZWmbi8okTYBV1x
 0Gn3B95VFfssNagsQQqmW4vl7sKZzLnOjHk4bP/QUEDxCy47lvcHxylSUdBIOttXV6BHNfEbPU5MS
 9skOTY9x8hAfhKyRS+FYIajpc5hWmcUUPTUicBTINwnur3WV3Mj3Wz8Lkuk+trbDEGbM=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l9ZWU-0007vg-Rm
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Feb 2021 20:22:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=9PYzIG6VvFHVs429ghg6/nrJjbK9f+NrPZ9mDOkm3m8=; b=G2VJE0QJamzd2pjoFy5TzT5vj5
 4IOmM3oPj3xT/DfmsXL8I6c4PYFxhifeBzF52kpN+FLAgCUcxO84KB2tupu5TxmyB8M7qJhJEfRjQ
 UaM8c6gLmnEJkDwZnbCLQefcXUuVt8lGg73WHryoyUZPoKC2fwVBFkHofsmD5qYsSfkyLkb8jBrno
 Z9xQnZnznKPL8Uwgr3+4Jln6Ng49DoZ/2bKLhH/uRED9V7KMe5DtIoWE+s2qFeEAas6kg/6NqZHA2
 B3ppHvpyFSFXXmV30NT5F2jqMFMcY5NdcSpqLeIP/eozD3s//9Wqgpg497BVDETnqXVKEdfe9nSV+
 8Biyd4IQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1l9ZVu-007usA-1c; Tue, 09 Feb 2021 20:21:35 +0000
Date: Tue, 9 Feb 2021 20:21:34 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20210209202134.GA308988@casper.infradead.org>
References: <591237.1612886997@warthog.procyon.org.uk>
 <CAHk-=wj-k86FOqAVQ4ScnBkX3YEKuMzqTEB2vixdHgovJpHc9w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wj-k86FOqAVQ4ScnBkX3YEKuMzqTEB2vixdHgovJpHc9w@mail.gmail.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l9ZWU-0007vg-Rm
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
 linux-afs@lists.infradead.org, David Howells <dhowells@redhat.com>,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Feb 09, 2021 at 11:06:41AM -0800, Linus Torvalds wrote:
> So I'm looking at this early, because I have more time now than I will
> have during the merge window, and honestly, your pull requests have
> been problematic in the past.

Thanks for looking at this early.

> The PG_fscache bit waiting functions are completely crazy. The comment
> about "this will wake up others" is actively wrong, and the waiting
> function looks insane, because you're mixing the two names for
> "fscache" which makes the code look totally incomprehensible. Why
> would we wait for PF_fscache, when PG_private_2 was set? Yes, I know
> why, but the code looks entirely nonsensical.

Yeah, I have trouble with the private2 vs fscache bit too.  I've been
trying to persuade David that he doesn't actually need an fscache
bit at all; he can just increment the page's refcount to prevent it
from being freed while he writes data to the cache.

> But the thing that makes me go "No, I won't pull this", is that it has
> all the same hallmark signs of trouble that I've complained about
> before: I see absolutely zero sign of "this has more developers
> involved".

I've been involved!  I really want to get rid of the address_space
readpages op.  The only remaining users are the filesystems which
use fscache and it's hard to convert them with the old infrastructure.
I'm not 100% convinced that the new infrastructure is good, but I am
convinced that it's better than the old infrastructure.

> There's not a single ack from a VM person for the VM changes. There's
> no sign that this isn't yet another "David Howells went off alone and
> did something that absolutely nobody else cared about".

I'm pretty bad about sending R-b for patches when I've only given them
a quick once-over.  I tend to only do it for patches that I've given an
appropriately deep amount of thought to (eg almost none for spelling
fixes and days for page cache related patches).  I'll see what I feel
comfortable with for this patchset.

> See my problem? I need to be convinced that this makes sense outside
> of your world, and it's not yet another thing that will cause problems
> down the line because nobody else really ever used it or cared about
> it until we hit a snag.

My major concern is that we haven't had any feedback from Trond or Anna.
I don't know if they're just too busy or if there's something else going
on, but it'd be nice to hear something.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
