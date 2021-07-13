Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A21AA3C7005
	for <lists+v9fs-developer@lfdr.de>; Tue, 13 Jul 2021 13:55:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m3H0E-0005p1-KU; Tue, 13 Jul 2021 11:55:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jlayton@kernel.org>) id 1m3H02-0005m6-MI
 for v9fs-developer@lists.sourceforge.net; Tue, 13 Jul 2021 11:54:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NWPIbd+pnlmXEhm8albwrK3kUAnAYyJeUyfMCNGmKco=; b=a0MimpX6mDBm3H36f5uOEFUeVb
 ZZBRAtIETyclF2+CchOBusBZIDwaN3xuuGg+l6wTe/hZYEdrmqfHg4OkxSuwuuDkFd0vfsb3P8/Mm
 L+o/AyJe7ZdxDBiC0WeyA7EwlegmHhGvNl5ZsyUhP/RHArdHu5i4B2p6Q57H5X1lOjys=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NWPIbd+pnlmXEhm8albwrK3kUAnAYyJeUyfMCNGmKco=; b=kqhwCj5617KtjT8h2y1ndX5AVQ
 IBM4RYC4G6uGRozfkwMDhXBLLVj4cpfOe2XEhzzTwzXX2Lfj1dkTcxAW9lPZD/ixd1EcVFWVTR4hp
 sU2q9N2IVlHPDuXcsa6nwNfyCrEzW2kyZPqfjTVlO+0FdBx6Z1rnUUklipmwW9UEp72o=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m3Gzv-00009r-US
 for v9fs-developer@lists.sourceforge.net; Tue, 13 Jul 2021 11:54:52 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5879161073;
 Tue, 13 Jul 2021 11:54:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626177278;
 bh=EOF664GU/JirSb7RMAso8Dcg/Y3qoOHNWnB1kKbxHjg=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=tmz32O2m6om0NPJsfboZXP6uqvtAQnEG7DYsbEjS3+k/Xe5etqlymRxdbECnGmh1C
 z5j0RA6nJwMhBhsLG8pU4AcDr6W5/W9k31qSzMiAkOog/pCTqhDog/GUlhN1KqX8zD
 gZY7QBWlB8fCJBHNdlztMY1WAwP+4G5nELTX+beQabqbFnQxXRapd9Ni5DvvCKrQBd
 KE/NuQJ4oOR35RzxA/QH6uenAUXFKonUmppkjol8V7MxjytMXiX4KZfySngMEB7VGQ
 QguKVYt+FQkfbsgeBnbUSJGZepWrIlGGLOyr2jNAOezKdIeulmTtMthlV+Tqj6MP0Y
 PDzr8J/Jc774g==
Message-ID: <f36adf661f37582b51b05c9d8d0a41ea60812b68.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: Christoph Hellwig <hch@infradead.org>, David Howells <dhowells@redhat.com>
Date: Tue, 13 Jul 2021 07:54:36 -0400
In-Reply-To: <YO0oJvuIXlcmSd7F@infradead.org>
References: <162609279295.3129635.5721010331369998019.stgit@warthog.procyon.org.uk>
 <YO0oJvuIXlcmSd7F@infradead.org>
User-Agent: Evolution 3.40.3 (3.40.3-1.fc34) 
MIME-Version: 1.0
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1m3Gzv-00009r-US
Subject: Re: [V9fs-developer] [PATCH] netfs: Add MAINTAINERS record
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
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-mm@kvack.org,
 linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 torvalds@linux-foundation.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, 2021-07-13 at 06:44 +0100, Christoph Hellwig wrote:
> On Mon, Jul 12, 2021 at 01:26:32PM +0100, David Howells wrote:
> > Add a MAINTAINERS record for the new netfs helper library.
> 
> Btw, any reason why this code is called netfs?  It is a library
> that seems to mostly be glue code for fscache as far as I can tell and
> has nothing to do with networking at all.

It's infrastructure for network filesystems.

The original impetus was hooking up fscache, though the helper code also
works with fscache disabled. We also have some work in progress to plumb
in fscrypt support, and David is also looking at adding
writepage/writepages support too.

readpage/readpages/writepage/writepages operations in network
filesystems are quite "fiddly", and they all do it in subtly different
ways (and not always for good reasons).

The new read helper infrastructure abstracts a lot of that away, and
gives netfs's a simpler set of operations to deal with. We're hoping to
do the same with writepage/writepages helpers soon.
-- 
Jeff Layton <jlayton@kernel.org>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
