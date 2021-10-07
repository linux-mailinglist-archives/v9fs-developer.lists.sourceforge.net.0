Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA994257D5
	for <lists+v9fs-developer@lfdr.de>; Thu,  7 Oct 2021 18:23:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mYWAf-0003WZ-2R; Thu, 07 Oct 2021 16:23:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1mYWAd-0003WQ-9g
 for v9fs-developer@lists.sourceforge.net; Thu, 07 Oct 2021 16:22:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:cc:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YlCCMepVWxlDt+ZxOI3nKL7iXR5cvBw/XyYjKdfC9HI=; b=mGRLn5rzCl1NqEZHknxqI5AIGm
 IkScD3NdxSo69SWYYig/Ehw3ZOVmv91EwghsFCTqdpb8XMLf+G4cRQ0l1FFRxztx0L8j6C1pXxLoP
 qWfqH1djqxgaqguiTnA0D6q5Zgl2i8MsHNTc30SXt56Z3TT06UiAIBshu2xjpsknbKwg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:cc:To:From:Sender:Reply-To:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YlCCMepVWxlDt+ZxOI3nKL7iXR5cvBw/XyYjKdfC9HI=; b=DD33rICHOIsFfRsRiighWISMvf
 uSTBSmPr73UB8lAm4ljUEO4s1sV6Qc4KV1nvVx0AyPvy/OL0us/3D9OfcX0mTArIud+X0/1BheaGb
 lB0Wi8h5GMr6BIIONzpE+j8IqtoOR/kNUYml5zKpFZBjRsYhVmGwR2E2A8J7gvWYTvXc=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mYWAZ-00BNdV-IH
 for v9fs-developer@lists.sourceforge.net; Thu, 07 Oct 2021 16:22:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1633623769;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=YlCCMepVWxlDt+ZxOI3nKL7iXR5cvBw/XyYjKdfC9HI=;
 b=fIjllxUt2B6gq4VH7KXcbpyVSypiZCaT2eHHQsfjXuQbVuy6zUB9PZYMM0+QcHi0UvfAGl
 RQN81Q71vXXQRT0k48Oz1Em/o8J7dr6L15dTEsu2+Ng9+IR9Wn7VaGXgbNgRL9cHqtVkof
 TibCDblqHJ/Wz11Zabz5ilvhP9JN7hk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-38-niXwdHv8Pz2BQVcuslP5yQ-1; Thu, 07 Oct 2021 12:22:45 -0400
X-MC-Unique: niXwdHv8Pz2BQVcuslP5yQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7D97614242DB;
 Thu,  7 Oct 2021 15:53:13 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.44])
 by smtp.corp.redhat.com (Postfix) with ESMTP id ABDA8D1F28;
 Thu,  7 Oct 2021 15:53:05 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: torvalds@linux-foundation.org
MIME-Version: 1.0
Content-ID: <1961631.1633621984.1@warthog.procyon.org.uk>
Date: Thu, 07 Oct 2021 16:53:04 +0100
Message-ID: <1961632.1633621984@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus, Can you pull this set of collected fixes please?
 There are three: (1) Fix another couple of oopses in cachefiles tracing
 stemming
 from the possibility of passing in a NULL object pointer[1]. 
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
X-Headers-End: 1mYWAZ-00BNdV-IH
Subject: [V9fs-developer] [GIT PULL] netfs, cachefiles, afs: Collected fixes
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 Jeffrey Altman <jaltman@auristor.com>, linux-mm@kvack.org,
 linux-kernel@kvack.org, Dave Wysochanski <dwysocha@redhat.com>,
 Jeff Layton <jlayton@kernel.org>, dhowells@redhat.com,
 linux-fsdevel@vger.kernel.org, linux-cachefs@redhat.com,
 Marc Dionne <marc.dionne@auristor.com>, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Linus,

Can you pull this set of collected fixes please?  There are three:

 (1) Fix another couple of oopses in cachefiles tracing stemming from the
     possibility of passing in a NULL object pointer[1].

 (2) Fix netfs_clear_unread() to set READ on the iov_iter so that source it
     is passed to doesn't do the wrong thing (some drivers look at the flag
     on iov_iter rather than other available information to determine the
     direction)[2].

 (3) Fix afs_launder_page() to write back at the correct file position on
     the server so as not to corrupt data[3].

David

Link: https://lore.kernel.org/r/162729351325.813557.9242842205308443901.stgit@warthog.procyon.org.uk/ [1]
Link: https://lore.kernel.org/r/162886603464.3940407.3790841170414793899.stgit@warthog.procyon.org.uk [1]
Link: https://lore.kernel.org/r/163239074602.1243337.14154704004485867017.stgit@warthog.procyon.org.uk [1]
Link: https://lore.kernel.org/r/162729351325.813557.9242842205308443901.stgit@warthog.procyon.org.uk/ [2]
Link: https://lore.kernel.org/r/162886603464.3940407.3790841170414793899.stgit@warthog.procyon.org.uk [2]
Link: https://lore.kernel.org/r/163239074602.1243337.14154704004485867017.stgit@warthog.procyon.org.uk [2]
Link: https://lore.kernel.org/r/162880783179.3421678.7795105718190440134.stgit@warthog.procyon.org.uk/ [3]
Link: https://lore.kernel.org/r/162937512409.1449272.18441473411207824084.stgit@warthog.procyon.org.uk/ [3]
Link: https://lore.kernel.org/r/162981148752.1901565.3663780601682206026.stgit@warthog.procyon.org.uk/ [3]
Link: https://lore.kernel.org/r/163005741670.2472992.2073548908229887941.stgit@warthog.procyon.org.uk/ [3]
Link: https://lore.kernel.org/r/163221839087.3143591.14278359695763025231.stgit@warthog.procyon.org.uk/ [3]
Link: https://lore.kernel.org/r/163292980654.4004896.7134735179887998551.stgit@warthog.procyon.org.uk/ [3]

---
The following changes since commit 9e1ff307c779ce1f0f810c7ecce3d95bbae40896:

  Linux 5.15-rc4 (2021-10-03 14:08:47 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git tags/misc-fixes-20211007

for you to fetch changes up to 5c0522484eb54b90f2e46a5db8d7a4ff3ff86e5d:

  afs: Fix afs_launder_page() to set correct start file position (2021-10-05 11:22:06 +0100)

----------------------------------------------------------------
netfslib, cachefiles and afs fixes

----------------------------------------------------------------
Dave Wysochanski (1):
      cachefiles: Fix oops with cachefiles_cull() due to NULL object

David Howells (2):
      netfs: Fix READ/WRITE confusion when calling iov_iter_xarray()
      afs: Fix afs_launder_page() to set correct start file position

 fs/afs/write.c                    | 3 +--
 fs/netfs/read_helper.c            | 2 +-
 include/trace/events/cachefiles.h | 4 ++--
 3 files changed, 4 insertions(+), 5 deletions(-)



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
