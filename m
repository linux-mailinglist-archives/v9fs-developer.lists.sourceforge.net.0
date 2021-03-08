Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 84BED331AE5
	for <lists+v9fs-developer@lfdr.de>; Tue,  9 Mar 2021 00:21:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lJPBm-0005sY-L3; Mon, 08 Mar 2021 23:21:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1lJPBk-0005sQ-RD
 for v9fs-developer@lists.sourceforge.net; Mon, 08 Mar 2021 23:21:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2C5j2UcjDYW9mYgwyHgqIe6Gz5l4DgveyBW595u9faQ=; b=Vg9M5gfL2TvmI//VK0sCsYU8az
 kWPWM8KqZZ9jaj232zeAl61uJBcYdBrbnxChTUS1nchEaUArp2gezYepqCbG8hRH0p4DnhSCE2LCj
 Q/tKzXiFRjNjULylTtJ+o0gGU+Adkqr0tyVa8Q9c9AXnJwQ0BUJqpVHC4hwx4mQNBrQo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2C5j2UcjDYW9mYgwyHgqIe6Gz5l4DgveyBW595u9faQ=; b=NwjkRDUL1TS2XgiafBDhhEI3Xr
 5kLT30m0YzDrl3KnjmbxyCfbipMvl6UWDi7V2kmkkZ+tXFJ6QhvxB1BeCRO4ztl5fkpZ0PhmlrMOJ
 elNROP7It2+nVG8/ojR0FGM6XqHeVJMQUIncuG56t1bd5ieBzjp5aP/tmIlgXVfds0Yc=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lJPBT-00040V-0h
 for v9fs-developer@lists.sourceforge.net; Mon, 08 Mar 2021 23:21:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=2C5j2UcjDYW9mYgwyHgqIe6Gz5l4DgveyBW595u9faQ=; b=u+am1ZJapiahZOpG2Rwq/AVvg0
 oMfCYqTuZ4G+EEFNf60psslnnYYQ0bbgF+NILXiFCOjwDyIgbjxuoiEcZQv00o0WYpJH1isO6VRiC
 xYhhvDFUoAUq9mIBi134gw3MfadH7JZ8AY9yEPnnUaxdK/iPAhg4iMyVH2wp4QF2zZ8pHolQggvnC
 xkstHI6NejffxlN2RUIbiVQHfFT1cY1WUrPkEUFw5zfKwYkey4uzhSAMgcQE82RxexMMQ0BxHPpoW
 X5J5LxbtGQdKzueTczFA09whN8xNZpVy9+J6I+M7eNGql2/XixHhZefyZteV2oaZFdcbjk91b7H/G
 FOm50ufw==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lJPAg-00GbJf-5O; Mon, 08 Mar 2021 23:20:22 +0000
Date: Mon, 8 Mar 2021 23:20:18 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Dave Chinner <david@fromorbit.com>
Message-ID: <20210308232018.GG3479805@casper.infradead.org>
References: <CAOQ4uxjYWprb7trvamCx+DaP2yn8HCaZeZx1dSvPyFH2My303w@mail.gmail.com>
 <2653261.1614813611@warthog.procyon.org.uk>
 <CAOQ4uxhxwKHLT559f8v5aFTheKgPUndzGufg0E58rkEqa9oQ3Q@mail.gmail.com>
 <517184.1615194835@warthog.procyon.org.uk>
 <584529.1615202921@warthog.procyon.org.uk>
 <20210308223247.GB63242@dread.disaster.area>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210308223247.GB63242@dread.disaster.area>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lJPBT-00040V-0h
Subject: Re: [V9fs-developer] Metadata writtenback notification? -- was Re:
 fscache: Redesigning the on-disk cache
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
Cc: "J. Bruce Fields" <bfields@fieldses.org>,
 Linux NFS Mailing List <linux-nfs@vger.kernel.org>,
 Jeff Layton <jlayton@redhat.com>, Christoph Hellwig <hch@infradead.org>,
 CIFS <linux-cifs@vger.kernel.org>, David Wysochanski <dwysocha@redhat.com>,
 Amir Goldstein <amir73il@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>, Miklos Szeredi <miklos@szeredi.hu>,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Dave Chinner <dchinner@redhat.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel <ceph-devel@vger.kernel.org>,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Mar 09, 2021 at 09:32:47AM +1100, Dave Chinner wrote:
> On Mon, Mar 08, 2021 at 11:28:41AM +0000, David Howells wrote:
> >      Possibly it's sufficient to just clear the excess page space before
> >      writing, but that doesn't necessarily stop a writable mmap from
> >      scribbling on it.
> 
> We can't stop mmap from scribbling in it. All filesystems have this
> problem, so to prevent data leaks we have to zero the post-eof tail
> region on every write of the EOF block, anyway.

That's certainly one approach.  Another would be to zero it during the I/O
completion handler.  It depends whether you can trust the last writer or
not (eg what do we do with an isofs file that happens to contain garbage
after the last byte in the file?)


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
