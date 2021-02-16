Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 679C831C815
	for <lists+v9fs-developer@lfdr.de>; Tue, 16 Feb 2021 10:31:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lBwhG-0000bJ-Nq; Tue, 16 Feb 2021 09:31:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hch@lst.de>) id 1lBwhF-0000bB-5Z
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 09:31:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4f3dCEPO/Ys4EmBjOTabG3NG2ke/SRHpf5AUF9YdYUo=; b=U4m5uUCkmckEEb6dgEBCHMaZsB
 YVSOvt8WsOGHqzsyKzIlsIug5ZOpxNfsvaR0fEN47C+8s+iAJyk4XPLlU5M3GsYRP/9fEOLzehWRW
 XQ/qejGcms0MKc2IxhPiLM8dRp0luDzrsNa78Qll3MrXGSyhv54USHjuSR2XdNTbW7LY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4f3dCEPO/Ys4EmBjOTabG3NG2ke/SRHpf5AUF9YdYUo=; b=GD25N4UrhrFuNrHMOWZTGHPS3l
 pF2LTN/ChCfp4uiAZo8vsxnAplPZdzZWKxZUFQP8lf45ZBHGQQV3jNSp3D5iUE+/M+3ktyvSJg6lg
 iSjhM8byen1rJzTW8Sf0MNRs+NHAaLBuaEGIYGEXybpqiMo/sugSNCbOZAa3swLorn2k=;
Received: from verein.lst.de ([213.95.11.211])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lBwh2-0007oV-SJ
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 09:31:04 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B13C56736F; Tue, 16 Feb 2021 10:30:44 +0100 (CET)
Date: Tue, 16 Feb 2021 10:30:44 +0100
From: Christoph Hellwig <hch@lst.de>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210216093044.GA24615@lst.de>
References: <20210216084230.GA23669@lst.de>
 <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
 <1376938.1613429183@warthog.procyon.org.uk>
 <1419965.1613467771@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1419965.1613467771@warthog.procyon.org.uk>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1lBwh2-0007oV-SJ
Subject: Re: [V9fs-developer] [PATCH 34/33] netfs: Use in_interrupt() not
 in_softirq()
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
Cc: David Wysochanski <dwysocha@redhat.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, linux-afs@lists.infradead.org,
 Jeff Layton <jlayton@redhat.com>, linux-fsdevel@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, Christoph Hellwig <hch@lst.de>,
 Steve French <sfrench@samba.org>, linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 Marc Dionne <marc.dionne@auristor.com>, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Feb 16, 2021 at 09:29:31AM +0000, David Howells wrote:
> Is there a better way to do it?  The intent is to process the assessment phase
> in the calling thread's context if possible rather than bumping over to a
> worker thread.  For synchronous I/O, for example, that's done in the caller's
> thread.  Maybe that's the answer - if it's known to be asynchronous, I have to
> punt, but otherwise don't have to.

Yes, i think you want an explicit flag instead.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
