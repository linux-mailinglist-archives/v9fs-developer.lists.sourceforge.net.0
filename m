Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 584E4422129
	for <lists+v9fs-developer@lfdr.de>; Tue,  5 Oct 2021 10:49:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mXg93-0004Xo-Bi; Tue, 05 Oct 2021 08:49:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mXg8z-0004Xi-Jw
 for v9fs-developer@lists.sourceforge.net; Tue, 05 Oct 2021 08:49:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yWuvkskdEI9r2ThEQjUFBlxKCU4JS4TIq1nVqm3oeN8=; b=gGCcdQK1tjeY0Bo39uf6MTGM6o
 K/gfc21a2zDzaVSvMWlOzrTQbn/Msj4zEyntT2JPLK/3pLGbSGShJ4bmHZyiClqyyM8OMD3S7MYKR
 ah4qWxyU9zf4DdES4WfNF7jIY9T2PjzYo86/ZoPB2hjJO7IgY+SWZ8zbIggW4toK0n4g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Cc:To
 :From:Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yWuvkskdEI9r2ThEQjUFBlxKCU4JS4TIq1nVqm3oeN8=; b=Y
 T80kjjVVY/Q7VLjTcFXnaJo9bHPnTWnG/hO1n9nwJb/pIN6GcQn6/KPFll755xTw2E6Om4XcydJEf
 rUDLpfVvjU5/LUEte5BDbRLlW47UGC75XyMah1XTuzO/xpVgw30GkfuW+EI75aYAnteF02QT6ueMr
 XYPcuqDqiNHtrumU=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mXg8v-006C8L-U8
 for v9fs-developer@lists.sourceforge.net; Tue, 05 Oct 2021 08:49:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1633423779;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=yWuvkskdEI9r2ThEQjUFBlxKCU4JS4TIq1nVqm3oeN8=;
 b=ZoJuzOt78h0hbMpmuG3Nk7HDne1S5zbwrEZGYgkqTYt01QTkns1xbLKlV/c2d0RY4fANPS
 GeGZNvnajv0ZICINpGESdL3qXn8liedFe0SkKIKf2a4hFhrjL3XV66vhRCsOVWLqtIz26k
 S9LJLQw1qJM52JfT9S4NZ+99cVsa15M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-318-ZXH9L7g7PKSPz5-zvYCjiw-1; Tue, 05 Oct 2021 04:49:38 -0400
X-MC-Unique: ZXH9L7g7PKSPz5-zvYCjiw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5F1E819057A0;
 Tue,  5 Oct 2021 08:49:36 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.44])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4A15360657;
 Tue,  5 Oct 2021 08:49:24 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trond.myklebust@hammerspace.com>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Tue, 05 Oct 2021 09:49:23 +0100
Message-ID: <163342376338.876192.10313278824682848704.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Here's a set of warning fixes for fscache, afs, 9p and nfs.
 It's mostly kerneldoc fixes plus one unused static variable removal. I've
 split the old patch up into per-subsys chunks and put the variable [...] 
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
X-Headers-End: 1mXg8v-006C8L-U8
Subject: [V9fs-developer] [PATCH v3 0/5] fscache, afs, 9p, nfs: Warning fixes
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
Cc: linux-nfs@vger.kernel.org, linux-doc@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 Marc Dionne <marc.dionne@auristor.com>, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>, torvalds@linux-foundation.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Here's a set of warning fixes for fscache, afs, 9p and nfs. It's mostly
kerneldoc fixes plus one unused static variable removal.  I've split the
old patch up into per-subsys chunks and put the variable removal in its own
patch at the end.

The patches are on a branch here:

	https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/log/?h=fscache-fixes

Thanks,
David

Changes
=======
ver #3:
 - Dealt with the kerneldoc warnings in fs/9p/cache.c.
 - Split the single patch up.

ver #2:
 - Dropped already upstreamed cifs changes.
 - Fixed more 9p kerneldoc bits.

Link: https://lore.kernel.org/r/163214005516.2945267.7000234432243167892.stgit@warthog.procyon.org.uk/ # rfc v1
Link: https://lore.kernel.org/r/163281899704.2790286.9177774252843775348.stgit@warthog.procyon.org.uk/ # rfc v2
---
David Howells (5):
      nfs: Fix kerneldoc warning shown up by W=1
      afs: Fix kerneldoc warning shown up by W=1
      9p: Fix a bunch of kerneldoc warnings shown up by W=1
      fscache: Fix some kerneldoc warnings shown up by W=1
      fscache: Remove an unused static variable


 fs/9p/cache.c          |  8 ++++----
 fs/9p/fid.c            | 14 +++++++-------
 fs/9p/v9fs.c           |  8 +++-----
 fs/9p/vfs_addr.c       | 14 +++++++++-----
 fs/9p/vfs_file.c       | 33 ++++++++++++---------------------
 fs/9p/vfs_inode.c      | 24 ++++++++++++++++--------
 fs/9p/vfs_inode_dotl.c | 11 +++++++++--
 fs/afs/dir_silly.c     |  4 ++--
 fs/fscache/object.c    |  2 +-
 fs/fscache/operation.c |  3 +++
 10 files changed, 66 insertions(+), 55 deletions(-)




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
