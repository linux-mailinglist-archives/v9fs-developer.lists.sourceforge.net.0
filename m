Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 106DA494AE1
	for <lists+v9fs-developer@lfdr.de>; Thu, 20 Jan 2022 10:38:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nATtQ-0005Fi-Du; Thu, 20 Jan 2022 09:38:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nATtO-0005Fb-VG
 for v9fs-developer@lists.sourceforge.net; Thu, 20 Jan 2022 09:38:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vwaun9h4PrGOctit7O7Y3jbampOsovEgn1eDqCi+RHc=; b=YcEaUxMAHEGpxFwnIdabvwaJfo
 tdep2ITECHn2LphMLsEooZamMNGUlRc3Q5YA3kdQeX1iKOkSB9EghMvbkXVqgi3B7x9A5WvDTXv2G
 pjwzMc652ZuvGiN+2orSvg5iOGWpRGmeKJRTZ98db64TVXkWcVQjoXJmV4xcKk8pO9uc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vwaun9h4PrGOctit7O7Y3jbampOsovEgn1eDqCi+RHc=; b=COTw8QnlJibEkeKBcmW/nKNyM3
 ex8eaN9+5ep7UDCF6fe4/dmbuxOrVAu6fiW26OgWo2BeuAw1dWCcKCfa/mxjNl2KrprsFXWe5VZvH
 /jr+5nMt11STCuP3EUD9hhz7YE0f0bnT76vpqCGH4O9MDvH4THGLAba7Q/6cE4ZS9m7I=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nATtI-0003Ru-Sk
 for v9fs-developer@lists.sourceforge.net; Thu, 20 Jan 2022 09:38:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1642671474;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=vwaun9h4PrGOctit7O7Y3jbampOsovEgn1eDqCi+RHc=;
 b=eEOaJNDcXSVmUCR8334IO0KLZV3N7JPN3xW4LrzGKFY/MnJgFbXUE0vVv7TrTeExBK8gTC
 lqtEPyTgSiSV8UwyESUS4TFe1hWKoi+NYdQgdFfMJppKKMeqb9z3ohFxVAgw1heLgzA56r
 tP3GcXugnaKkKKXvcgNlLqnzW1DCxb4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-45-TlUAgrb-MjSgqaMVPtjPzw-1; Thu, 20 Jan 2022 04:37:49 -0500
X-MC-Unique: TlUAgrb-MjSgqaMVPtjPzw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A09901091DA5;
 Thu, 20 Jan 2022 09:37:46 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B386D131CC;
 Thu, 20 Jan 2022 09:37:21 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <YekmpeQvNlGlMvNY@infradead.org>
References: <YekmpeQvNlGlMvNY@infradead.org> <YeefizLOGt1Qf35o@infradead.org>
 <YebpktrcUZOlBHkZ@infradead.org>
 <164251396932.3435901.344517748027321142.stgit@warthog.procyon.org.uk>
 <164251409447.3435901.10092442643336534999.stgit@warthog.procyon.org.uk>
 <3613681.1642527614@warthog.procyon.org.uk>
 <3765724.1642583885@warthog.procyon.org.uk>
To: Christoph Hellwig <hch@infradead.org>
MIME-Version: 1.0
Content-ID: <58089.1642671440.1@warthog.procyon.org.uk>
Date: Thu, 20 Jan 2022 09:37:20 +0000
Message-ID: <58090.1642671440@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Christoph Hellwig <hch@infradead.org> wrote: > But you
 tricked
 Linus Tricked? I put a notice explicitly pointing out that I was adding it
 and indicating that it might be controversial in the cover note and the pull
 request and further explained the use in the patches t [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nATtI-0003Ru-Sk
Subject: Re: [V9fs-developer] [PATCH 09/11] vfs,
 fscache: Add an IS_KERNEL_FILE() macro for the S_KERNEL_FILE flag
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
 linux-fsdevel@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 Steve French <smfrench@gmail.com>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christoph Hellwig <hch@infradead.org> wrote:

> But you tricked Linus

Tricked?  I put a notice explicitly pointing out that I was adding it and
indicating that it might be controversial in the cover note and the pull
request and further explained the use in the patches that handle it.  I posted
the patches adding/using it a bunch of times to various mailing lists.  TYVM.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
