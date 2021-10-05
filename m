Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C68844227FF
	for <lists+v9fs-developer@lfdr.de>; Tue,  5 Oct 2021 15:35:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mXkax-00015d-Dt; Tue, 05 Oct 2021 13:34:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mXkav-00015G-K5
 for v9fs-developer@lists.sourceforge.net; Tue, 05 Oct 2021 13:34:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KbQMyQ3OBXFxJwor2dj+AzBaJlpfPumA3y+3T9hS3ck=; b=mM4ZW5PfkgugRjqz9c0krp/CVa
 oAAPA04Y2HULLZJDn9WnY/LtMFkUiaKR9mFOA0Z0XyZLKfLcN9o0ZIqhA2s5rPdPlfSf7fGfjHLAi
 M9TtSg5+VNYgOpCBTL04+uTkcNGRvrWHxVRgl3XfzA/XIpRkVvS352rHfW9W6i1L0nPA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:From:Sender:Reply-To:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KbQMyQ3OBXFxJwor2dj+AzBaJlpfPumA3y+3T9hS3ck=; b=afvTlLI6PfP9LM0WfxCXPvz7WK
 Sx4TUvhwVxWs7UTyEzne0shPglieeykSFYJM7G79lsyk7EQ8VCWZEKIRoz2k8asZ3Iqlz50N1x11P
 +vgLOm6bSfGnkdu8pQDJStDzizQ28wicpoo7d9oxZ+UAgOoD2UyzuZO/gd/ynrX1GLQQ=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mXkau-0002nZ-Kg
 for v9fs-developer@lists.sourceforge.net; Tue, 05 Oct 2021 13:34:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1633440890;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=KbQMyQ3OBXFxJwor2dj+AzBaJlpfPumA3y+3T9hS3ck=;
 b=QHPCPnKOvr64ktw012kT9Ifp7S93uK0JXRy9gKNyTAmogmT2jIqreQf6/jPS/pwQdshLb3
 TbhEqfIGtoCHKPxSl0S0ofdVNcU6ogqji7J/s7ioKZkwFoPVIs9lGdzqpn1A2Z4vUTibe3
 3bJ4PPDHutYUAQE3+hrCX8Vm4b5aXz8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-405-p9vWSj-wP-G3pUDdrQWKnw-1; Tue, 05 Oct 2021 09:34:47 -0400
X-MC-Unique: p9vWSj-wP-G3pUDdrQWKnw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 50907802921;
 Tue,  5 Oct 2021 13:34:45 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.44])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7085B2619A;
 Tue,  5 Oct 2021 13:34:40 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: torvalds@linux-foundation.org
MIME-Version: 1.0
Content-ID: <1082804.1633440879.1@warthog.procyon.org.uk>
Date: Tue, 05 Oct 2021 14:34:39 +0100
Message-ID: <1082805.1633440879@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus, Could you consider pulling these changes please?
 The first four patches fix kerneldoc warnings in fscache, afs, 9p and nfs
 - they're mostly just comment changes, though there's one place in 9p where
 a comment got detached from the function it was at [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mXkau-0002nZ-Kg
Subject: [V9fs-developer] [GIT PULL] fscache, 9p, afs,
 nfs: Fix kerneldoc warnings and one unused variable
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
Cc: linux-nfs@vger.kernel.org, linux-afs@lists.infradead.org,
 linux-doc@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>,
 dhowells@redhat.com, linux-fsdevel@vger.kernel.org,
 Marc Dionne <marc.dionne@auristor.com>, v9fs-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Linus,

Could you consider pulling these changes please?

The first four patches fix kerneldoc warnings in fscache, afs, 9p and nfs -
they're mostly just comment changes, though there's one place in 9p where a
comment got detached from the function it was attached to (v9fs_fid_add)
and has to switch places with a function that got inserted between
(__add_fid).

The patch on the end removes an unused symbol in fscache - I moved it last
so you can discard it if you'd rather not pull that one just now.

David

Link: https://lore.kernel.org/r/163214005516.2945267.7000234432243167892.stgit@warthog.procyon.org.uk/ # rfc v1
Link: https://lore.kernel.org/r/163281899704.2790286.9177774252843775348.stgit@warthog.procyon.org.uk/ # rfc v2
Link: https://lore.kernel.org/r/163342376338.876192.10313278824682848704.stgit@warthog.procyon.org.uk/ # split up

---
The following changes since commit 9e1ff307c779ce1f0f810c7ecce3d95bbae40896:

  Linux 5.15-rc4 (2021-10-03 14:08:47 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git tags/warning-fixes-20211005

for you to fetch changes up to ef31499a87cf842bdf6719f44473d93e99d09fe2:

  fscache: Remove an unused static variable (2021-10-04 22:13:12 +0100)

----------------------------------------------------------------
Warning fixes

----------------------------------------------------------------
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
 fs/nfs_common/grace.c  |  1 -
 11 files changed, 66 insertions(+), 56 deletions(-)



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
