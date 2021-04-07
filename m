Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B803570D0
	for <lists+v9fs-developer@lfdr.de>; Wed,  7 Apr 2021 17:47:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lUAPE-0001X8-JU; Wed, 07 Apr 2021 15:47:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lUAPD-0001Wn-9V
 for v9fs-developer@lists.sourceforge.net; Wed, 07 Apr 2021 15:47:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=axULdzcQx68+oS63cjAxzUVds96V+wt/l0Sxopf5YMM=; b=DvIzOTjAGMcGFVxJ5ZbspFbhsX
 nffafsQSw7ITMpgZfZWwQ4kmcnAEmjbON5MfJTY6mIJS4s8aZGXPuZ+g1mVdpQ7SbYT6BGbzNfZad
 mCetFk2lK+4Ce3qIe68WtS9bNRTEKadAtORG+wyu/RSv6/E1hJYIyQeceniBuSnb5JqQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=axULdzcQx68+oS63cjAxzUVds96V+wt/l0Sxopf5YMM=; b=XZpxyZpFw2cou5hk80iuoRQbLU
 EkkKw8sVVm8jHcVHfVWYyr8BBdRxTMYdoKuUxIL3QUvP3u7qbJ+blLI9JOgkVbUrStNJANomCrpCe
 4WC52pyo8UVzfKNtmPbppXGPBkqXki1qBNYDFMWvKPUSFP1GoQ44ywzEw9nwvO5BqB6o=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lUAP1-00H1fq-Fp
 for v9fs-developer@lists.sourceforge.net; Wed, 07 Apr 2021 15:47:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617810449;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=axULdzcQx68+oS63cjAxzUVds96V+wt/l0Sxopf5YMM=;
 b=i5bFNYWewJLx/e4iTttzWw+6vViiHj7aeo1122twDp6KhcUR1yhhVZ23545kZ+oSseCz+D
 WvdlEtewsv+em1oYNtf08D8GZpuyhJ8zErMS8bC7QjL+DpfasEKAfgPeW5WaH8gM11Fx7M
 mIHSaMipD3ErEqdjsa6ThT8nh30OpYI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-335-_0wcNwU5NAO4X8QXnKaQBA-1; Wed, 07 Apr 2021 11:47:27 -0400
X-MC-Unique: _0wcNwU5NAO4X8QXnKaQBA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0405E10054F6;
 Wed,  7 Apr 2021 15:47:26 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-115-201.rdu2.redhat.com
 [10.10.115.201])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2EE071045D01;
 Wed,  7 Apr 2021 15:47:02 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: jlayton@kernel.org
Date: Wed, 07 Apr 2021 16:47:01 +0100
Message-ID: <161781042127.463527.9154479794406046987.stgit@warthog.procyon.org.uk>
In-Reply-To: <161781041339.463527.18139104281901492882.stgit@warthog.procyon.org.uk>
References: <161781041339.463527.18139104281901492882.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lUAP1-00H1fq-Fp
Subject: [V9fs-developer] [PATCH 1/5] netfs: Fix a missing rreq put in
 netfs_write_begin()
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org, dwysocha@redhat.com,
 linux-kernel@vger.kernel.org, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

netfs_write_begin() needs to drop a ref on the read request if the network
filesystem gives an error when called to begin the caching op.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/netfs/read_helper.c |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
index 3498bde035eb..0066db21aa11 100644
--- a/fs/netfs/read_helper.c
+++ b/fs/netfs/read_helper.c
@@ -1169,6 +1169,8 @@ int netfs_write_begin(struct file *file, struct address_space *mapping,
 	_leave(" = 0");
 	return 0;
 
+error_put:
+	netfs_put_read_request(rreq, false);
 error:
 	unlock_page(page);
 	put_page(page);




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
