Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DA229673F54
	for <lists+v9fs-developer@lfdr.de>; Thu, 19 Jan 2023 17:52:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pIY9E-0000uK-Aw;
	Thu, 19 Jan 2023 16:52:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+d6c99cb0ec1a2cfa7d20+7088+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1pIY9C-0000uE-CU for v9fs-developer@lists.sourceforge.net;
 Thu, 19 Jan 2023 16:52:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6baCIjpxFWqtburgiU9owFRWWB+OsgVl9mMP/UXy3Fs=; b=goRUjJE/U75BN4Z97SO7pqVdzt
 L3zUU9faKCN0j4e9M300HlmkpUmomZRtilIt8nd8PfG7xBimy/jM2KZnEqMWMkf4QqtikHlGtZdc0
 dIcTJdjQIFO6QmC1J9Z38R9GhjQoeT2lHGUKYeLgAXeotI5XUW/ElnEYLC6RFseQMq1Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6baCIjpxFWqtburgiU9owFRWWB+OsgVl9mMP/UXy3Fs=; b=Z0ZioWy4azSD1YzXDGj/dm9Kx3
 7HtEZ6dAs9CI5C5SZzGFaXcXA2b+4wRCfXnzfld2E68f3A5GDTsNpAfpBO9/gpeXUKQ0kUEfqXgwK
 d5b/MlL4YyVU9G2bpwQdM65Ow4Dg8iihqBGY+pYscrxJPZ/Jm9HfuufGtbmsULb9DjIg=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pIY9A-009KKE-3A for v9fs-developer@lists.sourceforge.net;
 Thu, 19 Jan 2023 16:52:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=6baCIjpxFWqtburgiU9owFRWWB+OsgVl9mMP/UXy3Fs=; b=ON5gWcaPIXHKSUs8dzkEuU5BPU
 E2GWyQaoM8UfBF+ZUDUdpuHhHlruqqIPtXHXqmt+mgvZT1sfp/Dh0QYYtv2EUSpmtbOvQZLPRuJDO
 5rWOkb7+GjTsosErJw2uBcDWrKvIzPiVH3/m+o520DwKyYx5EVdHyAupcLIbnC8ax1bfl4/LCZOE/
 GNuUEi9vWjW7bG0yw/aC4oKTIOCFNi6C6xwYQFFB+at8qozQ4lMz0zQ0PKxqVsnII/NJuzbkxRvV+
 OkCSI8sUeM/EFMa85/AeOdvJSQbuHiWCZcTkuDZgOl+X1ZeqLuTwmm/2beh/7wE1bCpVozxEBUane
 //PIDckA==;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1pIY8t-0066Rw-Pc; Thu, 19 Jan 2023 16:51:59 +0000
Date: Thu, 19 Jan 2023 08:51:59 -0800
From: Christoph Hellwig <hch@infradead.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <Y8l1L9B48prS2o9c@infradead.org>
References: <Y8iwXJ2gMcCyXzm4@ZenIV>
 <167391047703.2311931.8115712773222260073.stgit@warthog.procyon.org.uk>
 <167391063242.2311931.3275290816918213423.stgit@warthog.procyon.org.uk>
 <3030212.1674146654@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3030212.1674146654@warthog.procyon.org.uk>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jan 19, 2023 at 04:44:14PM +0000,
 David Howells wrote:
 > Al Viro <viro@zeniv.linux.org.uk> wrote: > You're right. I wonder if I
 should handle ITER_KVEC in > iov_iter_extract_pages(), though I' [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pIY9A-009KKE-3A
Subject: Re: [V9fs-developer] [PATCH v6 21/34] 9p: Pin pages rather than
 ref'ing if appropriate
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Jens Axboe <axboe@kernel.dk>,
 Jan Kara <jack@suse.cz>, Eric Van Hensbergen <ericvh@gmail.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, Christoph Hellwig <hch@infradead.org>,
 linux-block@vger.kernel.org, Al Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Jan 19, 2023 at 04:44:14PM +0000, David Howells wrote:
> Al Viro <viro@zeniv.linux.org.uk> wrote:
> You're right.  I wonder if I should handle ITER_KVEC in
> iov_iter_extract_pages(), though I'm sure I've been told that a kvec might
> point to data that doesn't have a matching page struct.  Or maybe it's that
> the refcount shouldn't be changed on it.

They could in theory contain non-page backed memory, even if I don't
think we currently have that in tree.  The worst case is probably
vmalloc()ed memory.  Many instance will have no good way to deal with
something that isn't page backed.  That's one reason why I'd relaly
love to see ITER_KVEC go away - for most use cases ITER_BVEC is the
right thing, and the others are probably broken for various combinations
already, but that's going to be a fair amount of work.  For now just
failing the I/O if the instance can't deal with it is probably the
right thing.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
