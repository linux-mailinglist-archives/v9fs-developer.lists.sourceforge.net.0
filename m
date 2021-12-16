Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC34477996
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Dec 2021 17:48:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mxtvB-0006bX-5j; Thu, 16 Dec 2021 16:47:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mxtv9-0006bK-QF
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 16:47:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H4QQrv5yHw8uvREotMjEQW9H2R0fBtaao4kUBQhmBFY=; b=KtQiPGqwvMNnf3ElDAHm685Hy5
 +mIwAzme1YDTPtW4lWCZZjC3JfUZqfg5KxI1m+e5nX6jiE4YVpNYXPsSuEJPFl14HMIUo/U+4RnAv
 vm4WB6gBAuHjLb/thk6XMG3vF+gr/NqjaJ131OiYTlm8yLNSJGursSpJ18niGbOJJFrI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=H4QQrv5yHw8uvREotMjEQW9H2R0fBtaao4kUBQhmBFY=; b=R9g26mPbh9CpDL+help91QfYGP
 Wl8xShXJ4LdbJOWgQqzf4pdFk2SXWIOUr2b5KO4l6932QkwZUT5f7p17QE5/Mj9xqeE606nLL5tga
 0AyJPhNmokDUaR+waxQhlNLCI9TIzFx2Y2y2wQNigZVkihR9fhLCAtjZ9uSUjCDM110Y=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mxtv6-0009Dx-D7
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Dec 2021 16:47:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639673266;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=H4QQrv5yHw8uvREotMjEQW9H2R0fBtaao4kUBQhmBFY=;
 b=ShUoagyzoXq1A3uSaQjY8ZLWIgz9nIrO80DAZlOEtfKTEOmoxCiWf5ScC3RyXDvRKAe265
 JSdx79ZU3h0bOBuviqZndtyn5CfFeAdrplEdA80v0koCs1xPMG1W6LM0sSjkJNDbiiATly
 1/294mMLXGfP5nvmsPg/ot/QvapGGAA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-263-6-Ukhu7bM6ieiGRqMNkqew-1; Thu, 16 Dec 2021 11:47:42 -0500
X-MC-Unique: 6-Ukhu7bM6ieiGRqMNkqew-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 75392801ADC;
 Thu, 16 Dec 2021 16:47:39 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.122])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8E6B51037F51;
 Thu, 16 Dec 2021 16:47:33 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAHk-=wi0H5vmka1_iWe0+Yc6bwtgWn_bEEHCMYsPHYtNJKZHCQ@mail.gmail.com>
References: <CAHk-=wi0H5vmka1_iWe0+Yc6bwtgWn_bEEHCMYsPHYtNJKZHCQ@mail.gmail.com>
 <163967073889.1823006.12237147297060239168.stgit@warthog.procyon.org.uk>
 <163967169723.1823006.2868573008412053995.stgit@warthog.procyon.org.uk>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>
MIME-Version: 1.0
Content-ID: <1828148.1639673252.1@warthog.procyon.org.uk>
Date: Thu, 16 Dec 2021 16:47:32 +0000
Message-ID: <1828149.1639673252@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Linus Torvalds <torvalds@linux-foundation.org> wrote: > >
 With transparent huge pages, in the future, write_begin() and write_end()
 > > may be passed a length parameter that, in combination with the offset
 into > > the page, exceeds the length of that pa [...] 
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
X-Headers-End: 1mxtv6-0009Dx-D7
Subject: Re: [V9fs-developer] [PATCH v3 56/68] afs: Handle len being
 extending over page end in write_begin/write_end
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
Cc: Steve French <sfrench@samba.org>, "open list:NFS, SUNRPC,
 AND..." <linux-nfs@vger.kernel.org>, CIFS <linux-cifs@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Jeff Layton <jlayton@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, dhowells@redhat.com,
 JeffleXu <jefflexu@linux.alibaba.com>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 Marc Dionne <marc.dionne@auristor.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>, linux-afs@lists.infradead.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Linus Torvalds <torvalds@linux-foundation.org> wrote:

> > With transparent huge pages, in the future, write_begin() and write_end()
> > may be passed a length parameter that, in combination with the offset into
> > the page, exceeds the length of that page.  This allows
> > grab_cache_page_write_begin() to better choose the size of THP to allocate.
> 
> I still think this is a fundamental bug in the caller. That
> "explanation" is weak, and the whole concept smells like week-old fish
> to me.

You really should ask Willy about this as it's multipage folio-related.

AIUI, because the page/folio may be allocated inside ->write_begin(),
generic_perform_write() tells the filesystem how much it has been asked to
write and then the folio allocation can be made to fit that.

However, at this time, ->write_begin() and ->write_end() have a page pointer
(or pointer-to-pointer), not a folio pointer, in their signature, so the
filesystem has to convert between them.

I'm working on write helpers for netfslib that absorb this out of the
filesystems that use it into its own take on generic_perform_write(), thereby
eliminating the need for ->write_begin and ->write_end.  I have this kind of
working for afs and 9p at the moment and am looking at ceph, but there's a way
to go yet.  I believe iomap does the same for block-based filesystems that use
it (such as xfs).

I think Willy's aim is to get rid of ->write_begin and ->write_end entirely.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
