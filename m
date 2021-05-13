Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FBDD37F5E9
	for <lists+v9fs-developer@lfdr.de>; Thu, 13 May 2021 12:50:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lh8uu-0000Qo-FK; Thu, 13 May 2021 10:50:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lh8us-0000Qg-Ma
 for v9fs-developer@lists.sourceforge.net; Thu, 13 May 2021 10:50:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZS4a0+Jk376Mr3TJs35RHyvhDzgETMPw7mZbIknYFVM=; b=E4rZOhep2XMxaKciB1xRlndnSz
 F7VYzwxx4fZJU8rIdMg19CU9dplHAF2uGPKVEaurP9AH2XTfm+2bzvFYyHvq+8eNy1KUksJFpiCHu
 h27xPUqk8DEKaOfoj8r6/6GKRCYccXp7tsA2OH5JUsY6geRM/AukBWMP9QIjFCtl2o7k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Cc:To
 :From:Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ZS4a0+Jk376Mr3TJs35RHyvhDzgETMPw7mZbIknYFVM=; b=Z
 OaO/RU7/IGOEk1ZvtsYrcdmtc9w/+81yxIbKwxk0gqbDMhbvsIeBrqJOBgyCLliuj7rVPknhmSUVR
 TGEcd8cEmXyx7S9XnYv6ek/SMrsqJMnK2AFUlqblnghY0thYsN56pwNbjwAXIwFBiYlBDcXi8yYns
 2HGZFI51lIdCi8MM=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lh8uj-0007F2-HC
 for v9fs-developer@lists.sourceforge.net; Thu, 13 May 2021 10:50:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1620902992;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=ZS4a0+Jk376Mr3TJs35RHyvhDzgETMPw7mZbIknYFVM=;
 b=PfPUkBR1qvY/fI+mm0phlWPub6ofQ+Afr28BQLkgfyrPiDq2eBQaZjlr/NyNP+hbZ27s5p
 s94DBe5X6s7NNHis24lFVtVSRCX+6URTt9KNoSEqWoizOH7rSJKZK48B2xJZml0H/EMqes
 Gh8wigB2xzZ7vXhfsddRPToHQ0Sa6Tk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-582-vHRUTM0TNbSjfnRG3vysog-1; Thu, 13 May 2021 06:49:48 -0400
X-MC-Unique: vHRUTM0TNbSjfnRG3vysog-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 66DD3100945F;
 Thu, 13 May 2021 10:49:47 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.3])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2374B1B058;
 Thu, 13 May 2021 10:49:41 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: geert@linux-m68k.org
Date: Thu, 13 May 2021 11:49:41 +0100
Message-ID: <162090298141.3166007.2971118149366779916.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lh8uj-0007F2-HC
Subject: [V9fs-developer] [PATCH] netfs: Make CONFIG_NETFS_SUPPORT
 auto-selected rather than manual
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org, dhowells@redhat.com,
 linux-mm@kvack.org, linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Make the netfs helper library selected automatically by the things that use
it rather than being manually configured, even though it's required.

Fixes: 3a5829fefd3b ("netfs: Make a netfs helper module")
Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
Signed-off-by: David Howells <dhowells@redhat.com>
cc: linux-mm@kvack.org
cc: linux-cachefs@redhat.com
cc: linux-afs@lists.infradead.org
cc: linux-nfs@vger.kernel.org
cc: linux-cifs@vger.kernel.org
cc: ceph-devel@vger.kernel.org
cc: v9fs-developer@lists.sourceforge.net
cc: linux-fsdevel@vger.kernel.org
Link: https://lore.kernel.org/r/CAMuHMdXJZ7iNQE964CdBOU=vRKVMFzo=YF_eiwsGgqzuvZ+TuA@mail.gmail.com
---

 fs/netfs/Kconfig |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/netfs/Kconfig b/fs/netfs/Kconfig
index 578112713703..b4db21022cb4 100644
--- a/fs/netfs/Kconfig
+++ b/fs/netfs/Kconfig
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 config NETFS_SUPPORT
-	tristate "Support for network filesystem high-level I/O"
+	tristate
 	help
 	  This option enables support for network filesystems, including
 	  helpers for high-level buffered I/O, abstracting out read




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
