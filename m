Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D08836BA57
	for <lists+v9fs-developer@lfdr.de>; Mon, 26 Apr 2021 21:53:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lb7Ih-0000mh-Nt; Mon, 26 Apr 2021 19:53:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <viro@ftp.linux.org.uk>) id 1lb7Ih-0000mY-Ba
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Apr 2021 19:53:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XkXy/7XHM+tVDGz4HgSRKjFgp0DrkinJ1Z0Vv5RUGm4=; b=IvrAuOjC+UakFzqmxPEUU4gw4
 YaD2HccKa73TTWGuQPzaCJ60Adkp9aOnIvx1JfAjGJnjvO24WntwyZ/9BWH0ReZe+AEJ/JSOifY9P
 kQNmFUWS5RP/XJFfzK23xOqiyZkncniZAeW56jooGArCNw5zA0S/DXvGNAA3IXAntndFs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XkXy/7XHM+tVDGz4HgSRKjFgp0DrkinJ1Z0Vv5RUGm4=; b=jWHS0YEkgscnp4rpTsf7C2PVnr
 /vLH/LGfa3Jvlz33t/0z7BrvcXLaftV6Qp8zJUiVfjjE8t99cMjYGcS0kezcQK484IQffJOAkkm9e
 mA0F25Y7pPuyYYDE6HCrCSywpwTF4PS+1TAEMeTKQOZYFitoFACV55sMJlELiZg65XKs=;
Received: from zeniv-ca.linux.org.uk ([142.44.231.140])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lb7IS-00DBpw-Nm
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Apr 2021 19:53:47 +0000
Received: from viro by zeniv-ca.linux.org.uk with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lb7Hl-008TqF-IE; Mon, 26 Apr 2021 19:52:49 +0000
Date: Mon, 26 Apr 2021 19:52:49 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: David Howells <dhowells@redhat.com>
Message-ID: <YIcaESRqrBRqD/EQ@zeniv-ca.linux.org.uk>
References: <YIcMVCkp4xswHolw@zeniv-ca.linux.org.uk>
 <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
 <161918448151.3145707.11541538916600921083.stgit@warthog.procyon.org.uk>
 <3651951.1619465011@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3651951.1619465011@warthog.procyon.org.uk>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1lb7IS-00DBpw-Nm
Subject: Re: [V9fs-developer] [PATCH v7 01/31] iov_iter: Add ITER_XARRAY
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
 Jeff Layton <jlayton@redhat.com>, linux-mm@kvack.org,
 Dave Wysochanski <dwysocha@redhat.com>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-afs@lists.infradead.org, Steve French <sfrench@samba.org>,
 Marc Dionne <marc.dionne@auristor.com>, linux-cachefs@redhat.com,
 Anna Schumaker <anna.schumaker@netapp.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Apr 26, 2021 at 08:23:31PM +0100, David Howells wrote:

> I really need to defer this question to Willy, but as I understand it,
> xas_retry() only restarts the current iteration.  Referring to the comment on
> xas_reset():
> 
>  * Resets the error or walk state of the @xas so future walks of the
>  * array will start from the root.  Use this if you have dropped the
>  * xarray lock and want to reuse the xa_state.
> 
> I think that the walk returns to the bottom of the tree and whilst xarray
> presents an interface that appears to be a contiguous array, it's actually a
> tree internally - and 'root' is the root of the tree, not the head of the
> array.
> 
> Basically, I think it throws away its cached iteration state - which might
> have been modified - and rewalks the tree to get back to the same index.

From RTFS(lib/xarray.c) that looks right.  Nevermind the question, then...

Anyway, 

Reviewed-by: Al Viro <viro@zeniv.linux.org.uk>

on the xarray-related bits (this patch + followups)


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
