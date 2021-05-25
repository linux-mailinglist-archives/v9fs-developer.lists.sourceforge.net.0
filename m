Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 14CC3390186
	for <lists+v9fs-developer@lfdr.de>; Tue, 25 May 2021 15:01:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1llWgW-0002Pb-Fo; Tue, 25 May 2021 13:01:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1llWgV-0002PP-A1
 for v9fs-developer@lists.sourceforge.net; Tue, 25 May 2021 13:01:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:cc:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r/I5LVaIFoJjMPSMV7/2ikhr538cIt3EnxAcMEqig1A=; b=aX7HkinHfjYTQmvE9RXoMY6MRK
 edljyJxkihR1Khfpm3lP1RASaetmpNjopwXGrwwBK4l8qlVvoH/FUuDOgJ7Xl/pA7nfnVMFmulcQl
 9d039zbQQfbTGiwyz+8hrpuCCreieLI2j2FAU0CwYr9XngCDbgRe4kkSXoeOZ19KNph0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:cc:To:From:Sender:Reply-To:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=r/I5LVaIFoJjMPSMV7/2ikhr538cIt3EnxAcMEqig1A=; b=mlGLrHoGYxHz2l1oE1eMPjYA9c
 W/65NcuLcBIQ2FZUIMdUU/x7e9TOg8/bvaZ6nueDUXFp8cJpXDuHbigUFNC7vXv186mayX4ZT2a/U
 hvGY/HpQVmsX5A1aLDc7VwkOoIzrHk+X8BD7dYgMC0vx//RtKhN5KwdCGQ773J7Vaz+k=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1llWgT-005L1S-TM
 for v9fs-developer@lists.sourceforge.net; Tue, 25 May 2021 13:01:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1621947675;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=r/I5LVaIFoJjMPSMV7/2ikhr538cIt3EnxAcMEqig1A=;
 b=XQuypyPgxo+q/NN7gP6cHPC2TavJhpktsbR5WTJ/DiTMhexsWehOw4BIGWUDpMCrMj3oj0
 ymQd2D+hjabo1nFDmYcRHZSsJzwf4ffynr/lUuyrCA91Lx8DJlGTxsQaOTqct6vyUpwLV9
 6WHeivMKKfDJ0ZNhJ4U6C7Sveg38YxA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-319-fHrS5wC5OUWvuEqtMHSEiQ-1; Tue, 25 May 2021 09:01:11 -0400
X-MC-Unique: fHrS5wC5OUWvuEqtMHSEiQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 16EC380ED8E;
 Tue, 25 May 2021 13:01:09 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-24.rdu2.redhat.com
 [10.10.112.24])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E01B86060F;
 Tue, 25 May 2021 13:01:02 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: torvalds@linux-foundation.org
MIME-Version: 1.0
Content-ID: <4007707.1621947662.1@warthog.procyon.org.uk>
Date: Tue, 25 May 2021 14:01:02 +0100
Message-ID: <4007708.1621947662@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1llWgT-005L1S-TM
Subject: [V9fs-developer] [GIT PULL] netfs: Fixes
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
 linux-kernel@vger.kernel.org, willy@infradead.org, dhowells@redhat.com,
 linux-mm@kvack.org, linux-cachefs@redhat.com, geert@linux-m68k.org,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

 
Hi Linus,

If you could pull this, there are a couple of fixes to the new netfs lib in
it:

 (1) Pass the AOP flags through from netfs_write_begin() into
     grab_cache_page_write_begin().

 (2) Automatically enable in Kconfig netfs lib rather than presenting an
     option for manual enablement.

David
---
The following changes since commit 6efb943b8616ec53a5e444193dccf1af9ad627b5:

  Linux 5.13-rc1 (2021-05-09 14:17:44 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git tags/netfs-lib-fixes-20200525

for you to fetch changes up to b71c791254ff5e78a124c8949585dccd9e225e06:

  netfs: Make CONFIG_NETFS_SUPPORT auto-selected rather than manual (2021-05-25 13:48:04 +0100)

----------------------------------------------------------------
netfslib fixes

----------------------------------------------------------------
David Howells (2):
      netfs: Pass flags through to grab_cache_page_write_begin()
      netfs: Make CONFIG_NETFS_SUPPORT auto-selected rather than manual

 fs/netfs/Kconfig       | 2 +-
 fs/netfs/read_helper.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
