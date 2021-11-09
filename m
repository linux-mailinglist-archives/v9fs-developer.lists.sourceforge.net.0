Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 51EE744B4AE
	for <lists+v9fs-developer@lfdr.de>; Tue,  9 Nov 2021 22:27:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mkYej-0001Zj-Ry; Tue, 09 Nov 2021 21:27:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mkYeh-0001Zd-K4
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Nov 2021 21:27:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oGsnwAWvishCYYSOZGVbIL8d7YY3EVE+PtWdyqzQi+U=; b=VUoNJ4aD+OyCc2NUqVK/42RCdg
 kc9mkLxmYU22WQf+nEul2aP86pNVdK9CY9iznEbNrWaMtoJunodULmzgsApY2pJBAzEmvxVOcZcKd
 C//TfLuKESPZ1K3FK9l8mtzhc0/kmBD2P3XtfHd4YYGZiXv10yimzqqcw7LLRBBKaNP8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oGsnwAWvishCYYSOZGVbIL8d7YY3EVE+PtWdyqzQi+U=; b=WMepWy2q9Lv31u6V3Hd1zi/e53
 QEAfIKJqsfln8AdB4l99Zg0eTUMaisJCyrz3huARDyagqiTa3eA1eQBrfJskQXv1GuzQI/Zz/X3y7
 syClviRiLGRP1ZsAYVLTJT+OdNGMY8OKx0UYeNLurljLz3TSjOFN/Yht64mdxu5qD2t0=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mkYeb-0001BR-BI
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Nov 2021 21:27:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1636493254;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oGsnwAWvishCYYSOZGVbIL8d7YY3EVE+PtWdyqzQi+U=;
 b=cPIzd/pMQ+/fChSbEF5lxTZqbooEGREwschoIptzw0RZJUmoM7y1zotosWejeOGkxZFNOX
 tVWoobVWsXJA2PNEbimOXBZh+O5cWmokm6PWine0rZy4PWoBIEroP/bft0rVAZMPorjQLn
 7KejskCuxF7HaVkv3IDpkX2r10P8xJY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-595-2wBRRfOBP4GnXYxEe3MMAQ-1; Tue, 09 Nov 2021 16:27:32 -0500
X-MC-Unique: 2wBRRfOBP4GnXYxEe3MMAQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ED23510151E0;
 Tue,  9 Nov 2021 21:27:29 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.37.68])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2AA7D60657;
 Tue,  9 Nov 2021 21:27:24 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Date: Tue, 09 Nov 2021 21:27:23 +0000
Message-ID: <163649324326.309189.17817587229450840783.stgit@warthog.procyon.org.uk>
In-Reply-To: <163649323416.309189.4637503793406396694.stgit@warthog.procyon.org.uk>
References: <163649323416.309189.4637503793406396694.stgit@warthog.procyon.org.uk>
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
 Content preview:  Add a function, folio_change_private(), that will change the
 private data attached to a folio, without the need to twiddle the private
 bit or the refcount. It assumes that folio_add_private() has alre [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mkYeb-0001BR-BI
Subject: [V9fs-developer] [PATCH v4 1/5] folio: Add a function to change the
 private data attached to a folio
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
 kafs-testing@auristor.com, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, dhowells@redhat.com, linux-mm@kvack.org,
 ceph-devel@vger.kernel.org, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>, linux-afs@lists.infradead.org,
 devel@lists.orangefs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add a function, folio_change_private(), that will change the private data
attached to a folio, without the need to twiddle the private bit or the
refcount.  It assumes that folio_add_private() has already been called on
the page.

Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Matthew Wilcox (Oracle) <willy@infradead.org>
Tested-by: Jeff Layton <jlayton@kernel.org>
Tested-by: Dominique Martinet <asmadeus@codewreck.org>
Tested-by: kafs-testing@auristor.com
Link: https://lore.kernel.org/r/162981149911.1901565.17776700811659843340.stgit@warthog.procyon.org.uk/
Link: https://lore.kernel.org/r/163005743485.2472992.5100702469503007023.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/163584180781.4023316.5037526301198034310.stgit@warthog.procyon.org.uk/ # v3
---

 include/linux/pagemap.h |   19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index 6a30916b76e5..1f560aecd9b5 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -279,6 +279,25 @@ static inline void folio_attach_private(struct folio *folio, void *data)
 	folio_set_private(folio);
 }
 
+/**
+ * folio_change_private - Change private data on a folio.
+ * @folio: Folio to change the data on.
+ * @data: Data to set on the folio.
+ *
+ * Change the private data attached to a folio and return the old
+ * data.  The page must previously have had data attached and the data
+ * must be detached before the folio will be freed.
+ *
+ * Return: Data that was previously attached to the folio.
+ */
+static inline void *folio_change_private(struct folio *folio, void *data)
+{
+	void *old = folio_get_private(folio);
+
+	folio->private = data;
+	return old;
+}
+
 /**
  * folio_detach_private - Detach private data from a folio.
  * @folio: Folio to detach data from.




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
