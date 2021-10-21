Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 843BD436E46
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Oct 2021 01:24:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mdhPl-0001lh-8W; Thu, 21 Oct 2021 23:24:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <asmadeus@codewreck.org>) id 1mdhPj-0001lY-7g
 for v9fs-developer@lists.sourceforge.net; Thu, 21 Oct 2021 23:23:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QI1jya4xqRMNt0nBwtRPZvmfVzkS65CSiephRu49A14=; b=KZ5xzW6JqT7GEfXsAGl3foHrL1
 1d2yhxOFqqXIPkqRlLCV1yFP6S+76OSPx5BStm20AkXfX6VnXYfMnvDbf9g/chmlpKL63FoZF9xbV
 NSGx8voVpKgDM4CbJ9Xhemi7IQPojLQIE+JvQI1tzC4Nokh8T2JXocs/6kMyYsLwrcog=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QI1jya4xqRMNt0nBwtRPZvmfVzkS65CSiephRu49A14=; b=hpH5Uq9lUykqyDxUfl0eZS1Rqd
 2Qnrppm1NkkwcdUa5130F86hGL6zm9E4x5eXuQoq6zvlIcZhsxfy2c4xrHhoScpPL1R4zagiM4EFK
 yLDPggvQEleYf7/VA+iDXNoxLhfLihSGsf7ysfRF2md+ZwejQ2nLZgnvRmoJlkMInO18=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mdhPc-00057x-AG
 for v9fs-developer@lists.sourceforge.net; Thu, 21 Oct 2021 23:23:58 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id E717DC022; Fri, 22 Oct 2021 01:23:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1634858623; bh=QI1jya4xqRMNt0nBwtRPZvmfVzkS65CSiephRu49A14=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ze5WXOx24gsYhKwKISztsHPwsifl2B6N8a2Mg1oqUHF3coTBxVzyCkssjNS3CUkwd
 LVU4VhPLprwpkba8TOIr+LozAG4i8KFcbkG1fP0vut02RrVCeFF4l3dWi9UQyIww0u
 tAyIHZEqga60fxhCd1EPp5iGb4/b7qq5gLEn8dYx9+rAxfdoNktDEfL63tvCQpLGca
 POXXf56IQj9A45oWG/jWCJVzpM8nkU6v3EhucBRQD5X3DJD+/yY19uXkO1oubjqa8s
 lS7sfKS5hnVNCenkShilZM/cTY20xXMct5YHXAjCAs5yjf9bOAT/ktKFn89z6pmlI/
 rhHzHPlY1Ri1g==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id A0916C009;
 Fri, 22 Oct 2021 01:23:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1634858622; bh=QI1jya4xqRMNt0nBwtRPZvmfVzkS65CSiephRu49A14=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wCfvZldvxLZsSiHYUs6ZYL1OQASI/j2ET8hioD+e6sQHqCSTwKRfkAeKHvXSCHmfp
 BrEuYvwxIsZPLPDB2c4Qb/gMaYrQ4kSblDU1VzimusdT5tlcACjqAXt6cFwh4CRHaM
 F3LB7T+69GUFAlMluHLb4qsPxYGlI468GMEaKyEoJA/QjZB3VRD+/lgDH2vw/8zkks
 RyAD8WMbiNRXri/ALt9JLYls+7h+NDluEJ4FsXHan691VrqwVahTEg6QE3hCi2m8wg
 CA6g+FqIcNtJdAislVbATvjTVk9qNlCvMcol1akzoFNZTQR2oHIf19bMT1LuA7jgu1
 +uvzvQ6xYO+dw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id f1866e14;
 Thu, 21 Oct 2021 23:23:30 +0000 (UTC)
Date: Fri, 22 Oct 2021 08:23:15 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Steve French <smfrench@gmail.com>
Message-ID: <YXH2Y7+coD5sgEDG@codewreck.org>
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
 <YXHntB2O0ACr0pbz@relinquished.localdomain>
 <CAH2r5msO7-QCXv6JQj2Tado9ZoWAHRkgq6-En18PeKSXFDdBLw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAH2r5msO7-QCXv6JQj2Tado9ZoWAHRkgq6-En18PeKSXFDdBLw@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Steve French wrote on Thu, Oct 21, 2021 at 06:15:49PM -0500:
 > Have changes been made to O_TMPFILE? It is problematic for network
 filesystems
 > because it is not an atomic operation, and would be grea [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1mdhPc-00057x-AG
Subject: Re: [V9fs-developer] [PATCH 00/67] fscache: Rewrite index API and
 management system
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, David Howells <dhowells@redhat.com>,
 linux-mm <linux-mm@kvack.org>, Marc Dionne <marc.dionne@auristor.com>,
 linux-afs@lists.infradead.org, Shyam Prasad N <nspmangalore@gmail.com>,
 CIFS <linux-cifs@vger.kernel.org>, Jeff Layton <jlayton@redhat.com>,
 Matthew Wilcox <willy@infradead.org>, linux-cachefs@redhat.com,
 Trond Myklebust <trondmy@hammerspace.com>,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 Kent Overstreet <kent.overstreet@gmail.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, Al Viro <viro@zeniv.linux.org.uk>,
 ceph-devel <ceph-devel@vger.kernel.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 linux-nfs <linux-nfs@vger.kernel.org>, Dave Wysochanski <dwysocha@redhat.com>,
 Jeff Layton <jlayton@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Steve French <sfrench@samba.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Steve French wrote on Thu, Oct 21, 2021 at 06:15:49PM -0500:
> Have changes been made to O_TMPFILE?  It is problematic for network filesystems
> because it is not an atomic operation, and would be great if it were possible
> to create a tmpfile and open it atomically (at the file system level).
> 
> Currently it results in creating a tmpfile (which results in
> opencreate then close)
> immediately followed by reopening the tmpfile which is somewhat counter to
> the whole idea of a tmpfile (ie that it is deleted when closed) since
> the syscall results
> in two opens ie open(create)/close/open/close

That depends on the filesystem, e.g. 9p open returns the opened fid so
our semantic could be closer to that of a local filesystem (could
because I didn't test recently and don't recall how it was handled, I
think it was fixed as I remember it being a problem at some point...)

The main problem with network filesystem and "open closed files" is:
what should the server do if the client disconnects? Will the client
come back and try to access that file again? Did the client crash
completely and should the file be deleted? The server has no way of
knowing.
It's the same logic as unlinking an open file, leading to all sort of
"silly renames" that are most famous for nfs (.nfsxxxx files that the
servers have been taught to just delete if they haven't been accessed
for long enough...)

I'm not sure we can have a generic solution for that unfortunately...

(9P is "easy" enough in that the linux client does not attempt to
reconnect ever if the connection has been lost, so we can just really
unlink the file and the server will delete it when the client
disconnects... But if we were to implement a reconnect eventually (I
know of an existing port that does) then this solution is no longer
acceptable)

-- 
Dominique Martinet | Asmadeus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
