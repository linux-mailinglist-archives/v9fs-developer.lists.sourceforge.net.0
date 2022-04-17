Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C77CB5049A2
	for <lists+v9fs-developer@lfdr.de>; Sun, 17 Apr 2022 23:23:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ngCMK-0007sA-0y; Sun, 17 Apr 2022 21:23:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1ngCMI-0007rg-Sb
 for v9fs-developer@lists.sourceforge.net; Sun, 17 Apr 2022 21:23:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j5U61nV5Q8nDNFs+ul/9hTF36iiMDWiWFRkW/S1vGe0=; b=guKE8ihc2A7iQ2Y/fxXDwWwkeJ
 DRwDmD1feUNWSdn9Ha0BcgfOZ85z3+IN/XtQDp2jLtrEgpmO1rQH9JGDAeV5f6nwGx4OLWp9jF289
 v0qzke7aUZwQtRGgPiRMpYgLPtP5xVLlh/Bpo7O/aeSn7be1mqUfKhStDYmghZFuJWBk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=j5U61nV5Q8nDNFs+ul/9hTF36iiMDWiWFRkW/S1vGe0=; b=X3wrDu/I/nTfx0Q+TK77A6X3ml
 i0YmKZ+U/Y/XCouiDMORzcDdf6Up4Vo2WoBqISQ+XCIjUe6oEiNBLpXldQuHl9s/1TVevarCroEWU
 Rk9hrMw0rYFT2acrjP0k7rHNhwm9yjgqb+i/BqDh3It7eKCGpkpvTjksRPMmhUShYp+8=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1ngCME-002T6Q-4x
 for v9fs-developer@lists.sourceforge.net; Sun, 17 Apr 2022 21:23:01 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 1FD35C01D; Sun, 17 Apr 2022 23:22:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1650230569; bh=j5U61nV5Q8nDNFs+ul/9hTF36iiMDWiWFRkW/S1vGe0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IugD+11QKU2McobSeWuF0R7sbUUonQxLYL0Fk5f8YgxP1gNi8HKECf0h1PWYhaEoH
 1vJcWpTSRGItXRWIBUZ607E84wN+TRqd4/n1ibJgg0sXTxqRyIS1EhE6s3MGlx5g1Z
 MmJrReLBp0hzr1MMRtYWZkfpXAWdEKZX92JLjRY/HLDZy5+U5t4h2pZKcv1tc2Eyhx
 4I79yIy6e2XpE2uBN7A4L6bNbRFoHq9eDujfWL5pWbmrOhELz4KTtCm3C7dqewNXYs
 CnZjBxuGSAI8CEI4enJCZ2xRnJjVYslAjrGYmpsDSb3V0L6FaoOGsMfoVUlWbvMkAh
 mpmU8jXQG/mhA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 40DDBC009;
 Sun, 17 Apr 2022 23:22:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1650230568; bh=j5U61nV5Q8nDNFs+ul/9hTF36iiMDWiWFRkW/S1vGe0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EBq1h+RviVpkTPLTZzwOI6MgMhI/Cr63GjFsvQx/psPKHzyd5m76kWlqOqWtTGBs5
 b0JpYCsVM8RwkyvFR3KyNez7WMW+nhab67oinQlAMKyL7I838xAG3TPMDtAwR+4ey6
 q5IOJMyOLTKoGKodnrKhfD2TnwXgqUze1n9FlqslBavNufsjjKLYesU/StAXLXtZki
 ul8klNWRjB3QtbLWw5/kB2lTs2Lpm7RhVVLdu9Zq1Vnjwuh9y2D1h0ROeZuPLTzMAM
 SmJUOXD4yYu4k+mHh26VIRO9a6+cdjeWdFrwBpKArx1OCQasjTGFfwSp/9K9agcKo7
 TXoR6HBAdk3cw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 2b704471;
 Sun, 17 Apr 2022 21:22:41 +0000 (UTC)
Date: Mon, 18 Apr 2022 06:22:26 +0900
From: asmadeus@codewreck.org
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YlyFEuTY7tASl8aY@codewreck.org>
References: <CAAZOf26g-L2nSV-Siw6mwWQv1nv6on8c0fWqB4bKmX73QAFzow@mail.gmail.com>
 <2551609.RCmPuZc3Qn@silver> <YlwOdqVCBZKFTIfC@codewreck.org>
 <8420857.9FB56xACZ5@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8420857.9FB56xACZ5@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Sun, Apr 17,
 2022 at 03:52:43PM
 +0200: > > From the looks of it, write fails in v9fs_write_begin, which itself
 > > fails because it tries to read first on a file that wa [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1ngCME-002T6Q-4x
Subject: Re: [V9fs-developer] 9p fs-cache tests/benchmark (was: 9p fscache
 Duplicate cookie detected)
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
Cc: lucho@ionkov.net, David Kahurani <k.kahurani@gmail.com>, ericvh@gmail.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kurz <groug@kaod.org>, David Howells <dhowells@redhat.com>,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Sun, Apr 17, 2022 at 03:52:43PM +0200:
> > From the looks of it, write fails in v9fs_write_begin, which itself
> > fails because it tries to read first on a file that was open with
> > O_WRONLY|O_CREAT|O_APPEND.
> > Since this is an append the read is necessary to populate the local page
> > cache when writing, and we're careful that the writeback fid is open in
> > write, but not about read...
> > 
> > Will have to think how we might want to handle this; perhaps just giving
> > the writeback fid read rights all the time as well...
> > Ran out of time for tonight, but hopefully we can sort it out soonish now!
> 
> I fear that would just trade symptoms: There are use cases for write-only 
> permissions, which would then fail after such kind of simple change.

The writeback fid is only used by async ops to flush (and apparently
since 5.10ish populate) the cache; I actually wonder how that "populate
the cache" worked before!
Anyway, since it's not used by direct operations I believe we can mess
with its open mode, but that assumes permission checks are properly done
at vfs level (this is pretty much the line of thinking that allowed
dirty cow... But in this case if a file is opened read-only the
writeback fid isn't allocated afaik, so it's probably ok ?...)

Alternatively we could have the cache issue yet another open for read
when needed, but I think a single RW fid is probably good enough if we
might read from it (no TRUNC)...
It'd break opening the writeback fid on files with -w- permission if the
open is not done as root, but I don't see how we could make appending to
a write only file at something that is not a page boundary either way.

David, netfs doesn't allow cache at byte granularity, correct?

If it does we could fix the problem by only triggering a read when
really needed.



> Independent of this EBADF issue, it would be good to know why 9p performance 
> got so slow with cache=loose by the netfs changes. Maybe David has an idea?

Yes, I've just compared the behaviour of the old cache and new one (with
cache=loose) and the main difference in behaviour I can see if the time
until flush is longer on older version, and reads are bigger with the
new version recently, but the rest is all identical as far as I can see
(4k IOs for write, walk/open/clunk sequences to read a cached file (we
could delay these until reading into cache or a metadata op is
required?), TFSYNC after a series of write or on directories after a
while...), so I don't see a difference.

In particular I don't observe any cache invalidation when the mtime (and
so qid 'version', e.g. cache anciliary data) changes, but for cache=loose
that's how I'd expect it to work as well.


Perhaps the performance difference can be explained just by how
aggressively it's flushed out of memory, since it's written to disk
faster it'd also be easier to forget about and re-issue slow reads?
hmm... I need to spend more time on that as well...

-- 
Dominique




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
