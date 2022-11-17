Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E25EF62DF6B
	for <lists+v9fs-developer@lfdr.de>; Thu, 17 Nov 2022 16:14:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ovgbN-0007OC-HA;
	Thu, 17 Nov 2022 15:14:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dhowells@redhat.com>) id 1ovgbL-0007O6-Qa
 for v9fs-developer@lists.sourceforge.net;
 Thu, 17 Nov 2022 15:14:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HU957M32Z/ToXADM+4xyOYaSls7s4w0XBB16ezobWWg=; b=BAqYqQTg5x1IRP1ysP0ytRJkrd
 yf6IqaU/Dch19bv4y/YEl+pcNoX4Os6ojcJSwLcznzJZfzlY56V4I97hJnnnAcqZPMtCb88dZB8iq
 BFge1UfkISLeq1WJs438PFYmw0Ujif91OsS2RPMmVTi7Rc8RNqs95JnzSnxoGCVqUi64=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HU957M32Z/ToXADM+4xyOYaSls7s4w0XBB16ezobWWg=; b=XY3IYk97BOrnSK8L+WKqIMxffQ
 Psb88saqpdMxCjwiW7tvf8KqIB5lrJ9sa/PxPWhkJfBNK8fZ6UP51ls3nkygojUxwPugaKMJno8tD
 FabAvLJKAVHj+bmt/QDtsA0jKOQoiNO4rQJsBSgbeV4IwMvvYMcp48PkXlXr0vr0zp9Q=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ovgbJ-00BSa6-M2 for v9fs-developer@lists.sourceforge.net;
 Thu, 17 Nov 2022 15:14:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1668698081;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=HU957M32Z/ToXADM+4xyOYaSls7s4w0XBB16ezobWWg=;
 b=B2i35E5ktEcIf2L+rm6DGLqr9iDDMUbVz2uFkRjUHlUJIxz0XWHoDCOQfhJAyXzpBAfZgN
 g/wEvspNjg4gpOx5VlFsBVtMmGHv+f88PM2DIsbuK5LjBjkqR7L2uFcqecat2fToAqoA2B
 Z0Sxp0ywnOzr62kxg7vk2F8xTwaAQtA=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-299-pXRzzu_SPMecrS5w8Jiy4Q-1; Thu, 17 Nov 2022 10:14:39 -0500
X-MC-Unique: pXRzzu_SPMecrS5w8Jiy4Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4800538123A9;
 Thu, 17 Nov 2022 15:14:39 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.24])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A9F5D2166B29;
 Thu, 17 Nov 2022 15:14:37 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20221115140447.2971680-1-zhangpeng362@huawei.com>
References: <20221115140447.2971680-1-zhangpeng362@huawei.com>
To: Peng Zhang <zhangpeng362@huawei.com>
MIME-Version: 1.0
Content-ID: <3725573.1668698074.1@warthog.procyon.org.uk>
Date: Thu, 17 Nov 2022 15:14:34 +0000
Message-ID: <3725574.1668698074@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: I think that the size needs to be able to hold up to 255 to
 handle NFS keys, so I think the right solution has to be to fix the maths.
 Probably the easiest way is to change fscache_volume::key to be " [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ovgbJ-00BSa6-M2
Subject: Re: [V9fs-developer] [PATCH v2] fscache: fix OOB Read in
 __fscache_acquire_volume
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
Cc: lucho@ionkov.net, ericvh@gmail.com, linux_oss@crudebyte.com,
 jlayton@kernel.org, linux-kernel@vger.kernel.org, dhowells@redhat.com,
 syzbot+a76f6a6e524cf2080aa3@syzkaller.appspotmail.com,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

I think that the size needs to be able to hold up to 255 to handle NFS keys,
so I think the right solution has to be to fix the maths.  Probably the
easiest way is to change fscache_volume::key to be "u8 *" since it
isn't a simple text string.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
