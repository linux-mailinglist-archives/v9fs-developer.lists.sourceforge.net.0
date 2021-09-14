Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A957E40BADB
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Sep 2021 23:59:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mQGSp-0001A2-Ql; Tue, 14 Sep 2021 21:59:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mQGSp-00019w-0P
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Sep 2021 21:59:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EWjhoOQgjMbe+X4Kudlp/xxXqmY4RO46zebmZlYS91U=; b=JVgNmGLmSxmTf6CeTB6r2Pb45e
 ChJeIBodOE0jXZDYkB6dpYUQft8ePf1+X27Z8TME2U5zUixptvaAuu48ioQ6/y/33LM3OLT7i6CKU
 OOk/LrJpO8nS9xyf8ieHexWlsTLkXqTu+5R/4h3DZxF5XGrOOZfo11l10Hy0h7aWLPAo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-ID:Content-Type:MIME-Version:Subject:Cc:To:
 References:In-Reply-To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EWjhoOQgjMbe+X4Kudlp/xxXqmY4RO46zebmZlYS91U=; b=JUypeYPr9W59y28imeazhJcv2k
 xpG1iyqi7DIuzNm5M1aWSW8sk5tEfQcyKa+GOsg+u+sMrgHExeHPdeE6TSiaeGA0+oR6/X82QzbFh
 +l745kOdYAFJ8E3S6FQub8IOADjTRwcgvjUzgNynVB8o2/hT78x5phTsNM2wdRJE6FjY=;
Received: from [216.205.24.124] (helo=us-smtp-delivery-124.mimecast.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mQGSk-0006NP-Jl
 for v9fs-developer@lists.sourceforge.net; Tue, 14 Sep 2021 21:59:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1631656763;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=EWjhoOQgjMbe+X4Kudlp/xxXqmY4RO46zebmZlYS91U=;
 b=d8sKvooepPAj758YN1Y4s8Jhzu6GpI2HFeL90SppH18Z1b4cHH+maEIQchpiJGZJAicbmb
 7yqrzG0Ag8q6/8yeg7cZ6tyHQNN0rTs7Aky4C//RYwUhIXkRuep9Msd5FaQtC0k4edu7bX
 F/AoHATmAGfr5V5ohkP74x3+0o/P6EM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-359-95cK3flVO5ioljTyre8X1Q-1; Tue, 14 Sep 2021 17:59:22 -0400
X-MC-Unique: 95cK3flVO5ioljTyre8X1Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EBB68189CD1F;
 Tue, 14 Sep 2021 21:59:19 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.44])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 27B141972D;
 Tue, 14 Sep 2021 21:59:13 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <YUEZXktGOCUWfvnU@codewreck.org>
References: <YUEZXktGOCUWfvnU@codewreck.org>
 <6274f0922aecd9b40dd7ff1ef007442ed996aed7.camel@redhat.com>
 <163162767601.438332.9017034724960075707.stgit@warthog.procyon.org.uk>
 <163162772646.438332.16323773205855053535.stgit@warthog.procyon.org.uk>
 <439558.1631628579@warthog.procyon.org.uk>
To: Dominique Martinet <asmadeus@codewreck.org>
MIME-Version: 1.0
Content-ID: <746600.1631656752.1@warthog.procyon.org.uk>
Date: Tue, 14 Sep 2021 22:59:12 +0100
Message-ID: <746601.1631656752@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Dominique Martinet <asmadeus@codewreck.org> wrote: > Agreed
 with the merge window passed it'll be for next one -- but I'd > like this
 to sit in -next for as long as possible, so I'd appreciate > either being
 able to carry the patch in my tree (difficu [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mQGSk-0006NP-Jl
Subject: Re: [V9fs-developer] [PATCH 4/8] 9p: (untested) Convert to using
 the netfs helper lib to do reads and caching
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
Cc: Steve French <sfrench@samba.org>, linux-nfs@vger.kernel.org,
 Jeff Layton <jlayton@redhat.com>, linux-cifs@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dominique Martinet <asmadeus@codewreck.org> wrote:

> Agreed with the merge window passed it'll be for next one -- but I'd
> like this to sit in -next for as long as possible, so I'd appreciate
> either being able to carry the patch in my tree (difficult as then
> you'll need to base yourself on mine) or you putting it in there somehow
> after I've got the most basic tests verified again (do you have a branch
> pulled for linux-next?)

I can put it into my fscache-next branch.

David



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
