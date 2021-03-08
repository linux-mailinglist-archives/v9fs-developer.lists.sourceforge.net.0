Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C70331719
	for <lists+v9fs-developer@lfdr.de>; Mon,  8 Mar 2021 20:20:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lJLQP-0002Nt-00; Mon, 08 Mar 2021 19:20:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bfields@fieldses.org>) id 1lJLQN-0002Nd-Gz
 for v9fs-developer@lists.sourceforge.net; Mon, 08 Mar 2021 19:20:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xDgC7LlBmjqCSWF7ziP8dFyfWdwiA7a0Sh7MAb3vsSg=; b=X6hDrIQSOQaWKxRj4qBY8Kp8SP
 8qOKkwKanR0VkM1YVcLmCUGNg4NlQ2Rk2mSMZZ1Hcey/FskY6OoLcX+MbvtN795FoHqUkqb5FqVWf
 mvBrmtOlcQ8/Qq/iNpTEgaV8a4zRF7XKpQ7EHpehy7610uQGp4LDwnnTdt8rg7j78xj4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xDgC7LlBmjqCSWF7ziP8dFyfWdwiA7a0Sh7MAb3vsSg=; b=Pmdrxp2CBTuIAbt90i2u9A6gKB
 WpKaKmp+ISw46P6CYJVSW7FWnaB4PvQObSHN6p5dexLEa4b4NrbHGc/fKNvOAgKTx6TJWFMWro03R
 fwg/DBPgyE090WT+LsiCqYmcYH9t+Qq/GGln+kJ1MTKovPLAfv12ZUDOcAwu46X1Oqjw=;
Received: from fieldses.org ([173.255.197.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lJLQD-001hbe-LW
 for v9fs-developer@lists.sourceforge.net; Mon, 08 Mar 2021 19:20:15 +0000
Received: by fieldses.org (Postfix, from userid 2815)
 id B366F35BD; Mon,  8 Mar 2021 13:54:10 -0500 (EST)
DKIM-Filter: OpenDKIM Filter v2.11.0 fieldses.org B366F35BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fieldses.org;
 s=default; t=1615229650;
 bh=xDgC7LlBmjqCSWF7ziP8dFyfWdwiA7a0Sh7MAb3vsSg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ij/YmN4ZebdMPqxxrBDuGYwtre8S0qs40MfCHLhqodetYSoxXMe9aE04WgC/4Q1DR
 20zcySXbv0GKk83IdR8F8zJJRdgLSvUXs5DXB8A6ipkmjqtANNIA8X5KWjQ7wad9Xl
 DoQOtJQEB0D4j4ThsTeLw2m/ax39UkOlyflJq14o=
Date: Mon, 8 Mar 2021 13:54:10 -0500
From: "J. Bruce Fields" <bfields@fieldses.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210308185410.GE7284@fieldses.org>
References: <CAOQ4uxhxwKHLT559f8v5aFTheKgPUndzGufg0E58rkEqa9oQ3Q@mail.gmail.com>
 <2653261.1614813611@warthog.procyon.org.uk>
 <517184.1615194835@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <517184.1615194835@warthog.procyon.org.uk>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lJLQD-001hbe-LW
Subject: Re: [V9fs-developer] fscache: Redesigning the on-disk cache
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
Cc: CIFS <linux-cifs@vger.kernel.org>,
 Linux NFS Mailing List <linux-nfs@vger.kernel.org>,
 Jeff Layton <jlayton@redhat.com>, Miklos Szeredi <miklos@szeredi.hu>,
 David Wysochanski <dwysocha@redhat.com>, Amir Goldstein <amir73il@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Christoph Hellwig <hch@infradead.org>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>, Dave Chinner <dchinner@redhat.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel <ceph-devel@vger.kernel.org>,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Mar 08, 2021 at 09:13:55AM +0000, David Howells wrote:
> Amir Goldstein <amir73il@gmail.com> wrote:
> > With ->fiemap() you can at least make the distinction between a non existing
> > and an UNWRITTEN extent.
> 
> I can't use that for XFS, Ext4 or btrfs, I suspect.  Christoph and Dave's
> assertion is that the cache can't rely on the backing filesystem's metadata
> because these can arbitrarily insert or remove blocks of zeros to bridge or
> split extents.

Could you instead make some sort of explicit contract with the
filesystem?  Maybe you'd flag it at mkfs time and query for it before
allowing a filesystem to be used for fscache.  You don't need every
filesystem to support fscache, right, just one acceptable one?

--b.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
