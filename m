Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A3D2B7FEA
	for <lists+v9fs-developer@lfdr.de>; Wed, 18 Nov 2020 15:59:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kfOvt-0004po-NN; Wed, 18 Nov 2020 14:59:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1kfOvr-0004pe-I9
 for v9fs-developer@lists.sourceforge.net; Wed, 18 Nov 2020 14:59:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RGAM19RAVfoEcH+r75a6/3V/vViiVIkjc5sfDpr2Uh8=; b=SexGKfsV3vj6g6pnXayEcOxzbT
 FwPIfG1e2AN0uHUe6Hcy5/mtSKLcmeUuavVV2JmE/piR6Vg792RKs6dec/atxyQYVxIm/O1k7HNR3
 sm/WEpf8UwYjl0bKFTJ9eDBjosLUvsawJ23PyIGKUoclwqyfGech5pCYxOllHg7+bUvc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RGAM19RAVfoEcH+r75a6/3V/vViiVIkjc5sfDpr2Uh8=; b=LzHb8CDO1swbzsklakuCm/X7Ui
 5Ux2ItxGe24wTB2WJ3HVyr3XpxYUr3tz0sca4+FG6qc0IyCQ2jLrOWuuZlC9GGMqPh7w/9AZyo4ZR
 1UaHosJ5tY0jtX1fsO/ltIGbbXtuiXafdwwHYO6MvOoyniXNAXUAz0P42B2OFJ8rRT/o=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kfOvj-00Dpki-Nv
 for v9fs-developer@lists.sourceforge.net; Wed, 18 Nov 2020 14:59:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605711565;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RGAM19RAVfoEcH+r75a6/3V/vViiVIkjc5sfDpr2Uh8=;
 b=d2u8tfBMsoIl6a0Y/9mFRpiePT8eCJa9VOF+uJM9ktOfKs5hqKNVv9QK/wOs+1gFFM7fTC
 H3rpSPQwdJPaHs/zOweGtQuYAHFt8QL0jnj5f9p1JT5U2Cp1ILXwNRMhF9sNhGaJRCKMKa
 ziz0IzXLpj/48o4asOo+mW7YtKXC1I0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-361-PsWAZY6UNryCJfv0azWEjg-1; Wed, 18 Nov 2020 09:59:21 -0500
X-MC-Unique: PsWAZY6UNryCJfv0azWEjg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C6B5B1005D4D;
 Wed, 18 Nov 2020 14:59:19 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-246.rdu2.redhat.com
 [10.10.112.246])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6CA8B5C1A3;
 Wed, 18 Nov 2020 14:59:14 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <1561011.1605706707@warthog.procyon.org.uk>
References: <1561011.1605706707@warthog.procyon.org.uk>
 <20201118124826.GA17850@nautica> <1514086.1605697347@warthog.procyon.org.uk>
To: Dominique Martinet <asmadeus@codewreck.org>
MIME-Version: 1.0
Content-ID: <1778742.1605711553.1@warthog.procyon.org.uk>
Date: Wed, 18 Nov 2020 14:59:13 +0000
Message-ID: <1778743.1605711553@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
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
X-Headers-End: 1kfOvj-00Dpki-Nv
Subject: Re: [V9fs-developer] [PATCH] 9p: Convert to new fscache API
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 dhowells@redhat.com, linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Another bit I forgot: you need something like:

int afs_set_page_dirty(struct page *page)
{
	return fscache_set_page_dirty(page, afs_vnode_cache(AFS_FS_I(page->mapping->host)));
}

and point the set_page_dirty address space op at it.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
